# Рекурсивно создаём .gitkeep в подпапках текущей директории
Get-ChildItem -Directory -Recurse | ForEach-Object {
    $gitkeep = Join-Path $_.FullName ".gitkeep"
    if (-not (Test-Path $gitkeep)) { New-Item -Path $gitkeep -ItemType File | Out-Null }
}