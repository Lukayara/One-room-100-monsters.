$ErrorActionPreference = 'Stop'
$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$webRoot = Join-Path $PSScriptRoot 'OneRoom/Web'
New-Item -ItemType Directory -Force -Path (Join-Path $webRoot 'src') | Out-Null
Copy-Item -LiteralPath (Join-Path $repoRoot 'index.html') -Destination $webRoot -Force
Copy-Item -LiteralPath (Join-Path $repoRoot 'style.css') -Destination $webRoot -Force
Copy-Item -LiteralPath (Join-Path $repoRoot 'device.css') -Destination $webRoot -Force
Copy-Item -LiteralPath (Join-Path $repoRoot 'src/game.js') -Destination (Join-Path $webRoot 'src/game.js') -Force
