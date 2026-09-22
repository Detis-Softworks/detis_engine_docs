# One-off fix: Docsify relativePath breaks ](../folder/ links from manuals/ etc.
$root = Split-Path $PSScriptRoot -Parent
Get-ChildItem -Path $root -Filter "*.md" -Recurse | Where-Object {
    $_.FullName -notmatch "\\.cursor\\"
} | ForEach-Object {
    $path = $_.FullName
    $content = [IO.File]::ReadAllText($path)
    $updated = $content
    $updated = $updated.Replace("](../getting_started/", "](/getting_started/")
    $updated = $updated.Replace("](../tutorials/", "](/tutorials/")
    $updated = $updated.Replace("](../manuals/", "](/manuals/")
    $updated = $updated.Replace("](../reference/", "](/reference/")
    if ($updated -ne $content) {
        [IO.File]::WriteAllText($path, $updated)
        $rel = $path.Substring($root.Length + 1)
        Write-Host "fixed $rel"
    }
}
