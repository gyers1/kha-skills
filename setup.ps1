# kha-skills 최초 1회 설정 스크립트
# 이 폴더를 Claude Code(CLI/데스크탑 앱 공용)의 추가 디렉토리로 등록합니다.
# 등록 후에는 --add-dir을 매번 입력하지 않아도 자동으로 이 스킬을 씁니다.

$dir = $PSScriptRoot
$settingsDir = Join-Path $HOME ".claude"
$settingsPath = Join-Path $settingsDir "settings.json"

if (-not (Test-Path $settingsDir)) {
    New-Item -ItemType Directory -Force -Path $settingsDir | Out-Null
}

if (Test-Path $settingsPath) {
    try {
        $json = Get-Content $settingsPath -Raw -Encoding UTF8 | ConvertFrom-Json
    } catch {
        Write-Host "기존 settings.json을 읽는 중 오류가 발생했습니다. 파일을 직접 확인해주세요: $settingsPath" -ForegroundColor Red
        exit 1
    }
} else {
    $json = [PSCustomObject]@{}
}

if (-not $json.permissions) {
    $json | Add-Member -NotePropertyName permissions -NotePropertyValue ([PSCustomObject]@{})
}

if (-not $json.permissions.additionalDirectories) {
    $json.permissions | Add-Member -NotePropertyName additionalDirectories -NotePropertyValue @()
}

$existing = @($json.permissions.additionalDirectories)

if ($existing -contains $dir) {
    Write-Host "이미 등록되어 있습니다: $dir" -ForegroundColor Yellow
} else {
    $json.permissions.additionalDirectories = $existing + $dir
    $json | ConvertTo-Json -Depth 10 | Set-Content -Encoding UTF8 $settingsPath
    Write-Host "등록 완료: $dir" -ForegroundColor Green
    Write-Host "Claude Code(CLI 또는 데스크탑 앱)를 새로 시작하면 kha-law-update 스킬을 자동으로 씁니다." -ForegroundColor Green
    Write-Host "자동으로 안 뜨면 대화창에 /kha-law-update 라고 입력하세요." -ForegroundColor Green
}
