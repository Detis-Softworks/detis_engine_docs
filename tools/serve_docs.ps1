# Serve this Docsify site over http so the .md files load.
# Opening index.html from disk (file://) is blocked by the browser; use this instead.
# Run: powershell -NoProfile -ExecutionPolicy Bypass -File tools/serve_docs.ps1 [-Open] [-Port 8000]

param(
    [switch]$Open,
    [int]$Port = 8000
)

$root = Split-Path $PSScriptRoot -Parent
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$Port/")
$listener.Start()

Write-Host "Serving Detis Engine docs"
Write-Host "  Root:    $root"
Write-Host "  Address: http://localhost:$Port/"
Write-Host "Press Ctrl+C to stop."

if ($Open) {
    Start-Process "http://localhost:$Port/"
}

# Newest write time across source files; the browser polls /__stamp and
# reloads itself when the value changes, so edits show up without a
# manual refresh. .git is excluded to keep the scan cheap.
$stamp = {
    Get-ChildItem -LiteralPath $root -Recurse -File |
        Where-Object { $_.FullName -notmatch '\\\.git(\\|$)' -and '.md', '.html', '.css', '.js' -contains $_.Extension.ToLower() } |
        Measure-Object -Property LastWriteTimeUtc -Maximum |
        Select-Object -ExpandProperty Maximum
}

while ($listener.IsListening) {
    try {
        $ctx = $listener.GetContext()
        $rel = [Uri]::UnescapeDataString($ctx.Request.Url.AbsolutePath)
        if ($rel -eq '/') { $rel = '/index.html' }

        if ($rel -eq '/__stamp') {
            $msg = [Text.Encoding]::UTF8.GetBytes("$(& $stamp)")
            $ctx.Response.ContentType = 'text/plain'
            $ctx.Response.Headers['Cache-Control'] = 'no-cache'
            $ctx.Response.OutputStream.Write($msg, 0, $msg.Length)
            $ctx.Response.Close()
            continue
        }

        $path = Join-Path $root ($rel.TrimStart('/').Replace('/', [IO.Path]::DirectorySeparatorChar))
        if (Test-Path -LiteralPath $path -PathType Leaf) {
            $bytes = [IO.File]::ReadAllBytes($path)
            $ext = [IO.Path]::GetExtension($path).ToLower()
            $mime = switch ($ext) {
                '.html' { 'text/html; charset=utf-8' }
                '.md'   { 'text/markdown; charset=utf-8' }
                '.js'   { 'application/javascript; charset=utf-8' }
                '.css'  { 'text/css; charset=utf-8' }
                '.png'  { 'image/png' }
                '.jpg'  { 'image/jpeg' }
                '.svg'  { 'image/svg+xml' }
                '.ico'  { 'image/x-icon' }
                '.json' { 'application/json' }
                '.csv'  { 'text/csv; charset=utf-8' }
                default { 'application/octet-stream' }
            }
            $ctx.Response.ContentType = $mime
            # Without this the browser may serve a cached .md after the
            # auto-reload and the edit would not appear until a hard refresh.
            $ctx.Response.Headers['Cache-Control'] = 'no-cache'
            $ctx.Response.OutputStream.Write($bytes, 0, $bytes.Length)
        }
        else {
            $ctx.Response.StatusCode = 404
            $msg = [Text.Encoding]::UTF8.GetBytes("404 $rel")
            $ctx.Response.OutputStream.Write($msg, 0, $msg.Length)
        }
        $ctx.Response.Close()
    }
    catch {
        Write-Host "Request error: $_"
    }
}
