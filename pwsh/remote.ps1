function init() {
    Invoke-Expression -Command "${env:K_SCRIPT_VENV}\Scripts\python ${env:K_SCRIPT_HOME}\python\remote.py"
}

$message='Usage: remote.ps1 command [...args]'

if (!$args[0]) {
    Write-Output "$message"
    exit 1
}

if ($args[0] = "init") {
    if (Test-Path ".remote") {
        Write-Output ".remote directory already exists."
        exit 1
    }
    init $args[0]
}
