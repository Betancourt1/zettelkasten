# sync_zettel.ps1
$ErrorActionPreference = "Stop"

$Repo = "C:\Users\fbetancourt\OneDrive - VINOS AMERICA SA DE CV\Documentos\GitHub\zettelkasten"

if (!(Test-Path $Repo)) {
  throw "No existe la ruta del repo: $Repo"
}

Set-Location $Repo

function Run-Git([string[]]$GitArgs) {
  if (-not $GitArgs -or $GitArgs.Count -eq 0) {
    throw "Run-Git requiere argumentos (ej: Run-Git @('status'))"
  }

  $p = Start-Process -FilePath "git" -ArgumentList $GitArgs -NoNewWindow -Wait -PassThru
  if ($p.ExitCode -ne 0) {
    throw "git $($GitArgs -join ' ') falló con exit code $($p.ExitCode)"
  }
}


# Asegura identidad (si no está, falla con mensaje claro)
$name = (git config --global --get user.name) 2>$null
$email = (git config --global --get user.email) 2>$null
if ([string]::IsNullOrWhiteSpace($name) -or [string]::IsNullOrWhiteSpace($email)) {
  throw 'Configura identidad primero:
git config --global user.name "Fernando Betancourt"
git config --global user.email "tu_correo@dominio.com"'
}

# Detecta cambios
$porcelain = (git status --porcelain)
if ($porcelain) {
  Run-Git @("add","-A")
  $msg = "autosync " + (Get-Date -Format "yyyy-MM-dd HH:mm")
  # commit puede fallar si no hay nada (raro, pero posible); no lo hacemos fatal
  git commit -m $msg | Out-Null
}

Run-Git @("pull","--rebase")
Run-Git @("push")

Write-Host "OK: sincronizado"
