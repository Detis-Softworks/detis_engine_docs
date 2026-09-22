# Scan for Docsify link mistakes (duplicate folder segments, missing targets).
# Run: powershell -NoProfile -File tools/check_docsify_links.ps1

$ErrorActionPreference = "Stop"
$root = Split-Path $PSScriptRoot -Parent
$linkRe = [regex]'\]\(([^)#]+)(?:#[^)]*)?\)'
$issues = [System.Collections.Generic.List[string]]@()

Get-ChildItem -Path $root -Filter "*.md" -Recurse | Where-Object {
    $_.FullName -notmatch "\\.cursor\\"
} | ForEach-Object {
    $rel = $_.FullName.Substring($root.Length + 1).Replace("\", "/")
    $srcDir = Split-Path $rel -Parent
    if ($rel -eq (Split-Path $rel -Leaf)) { $srcDir = "" }
    $isSidebar = ($rel -eq "_sidebar.md")
    $isRootReadme = ($rel -eq "README.md")
    $text = Get-Content -LiteralPath $_.FullName -Raw -Encoding UTF8
    foreach ($m in $linkRe.Matches($text)) {
        $target = $m.Groups[1].Value.Trim()
        if (-not $target.EndsWith(".md")) { continue }
        if ($target.StartsWith("http")) { continue }

        if ($target -match '^\.\./') {
            $issues.Add("use leading slash not ../: $rel -> $target")
        }

        if (($isSidebar -or $isRootReadme) -and -not $target.StartsWith("/")) {
            $issues.Add("sidebar/root needs leading slash: $rel -> $target")
        }

        $top = ($rel -split "/")[0]
        if ($top -in @("getting_started", "manuals", "tutorials", "reference")) {
            if ($target.StartsWith("$top/")) {
                $issues.Add("duplicate folder in body: $rel -> $target")
            }
        }

        if ($target.StartsWith("/")) {
            $resolved = Join-Path $root $target.TrimStart("/").Replace("/", [IO.Path]::DirectorySeparatorChar)
        }
        elseif ($srcDir -eq "") {
            $resolved = Join-Path $root $target
        }
        else {
            $resolved = Join-Path (Join-Path $root $srcDir) $target
        }
        $resolved = [IO.Path]::GetFullPath($resolved)
        if (-not (Test-Path -LiteralPath $resolved)) {
            $issues.Add("missing file: $rel -> $target")
        }
    }
}

$unique = $issues | Sort-Object -Unique
foreach ($line in $unique) { Write-Host $line }
Write-Host "---"
Write-Host ("Total issues: " + $unique.Count)
if ($unique.Count -gt 0) { exit 1 }
