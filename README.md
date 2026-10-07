# kha-skills

한국주택협회 업무용 Claude Code 스킬 모음.

## 포함된 스킬

- **kha-law-update** — 법령 개정안·시행령안을 회원사 안내용 「개정안 주요내용」으로 정리

## 팀원 설치 방법 (최초 1회, CLI·데스크탑 앱 공용)

1. 이 저장소 우측 상단 **[Code] → [Download ZIP]** 클릭
2. 원하는 폴더에 압축 해제 (경로는 어디든 상관없습니다. 예: `C:\kha-skills\`)
3. 압축 해제한 폴더를 열고, 주소창을 클릭해 `powershell`이라고 입력한 뒤 Enter
   (또는 그 폴더 안 빈 곳에서 마우스 우클릭 → **터미널에서 열기**)
4. 열린 창에 아래를 입력하고 Enter

   ```powershell
   powershell -ExecutionPolicy Bypass -File .\setup.ps1
   ```

5. "등록 완료"가 뜨면 끝입니다. **이후로는 아무것도 다시 입력할 필요가 없습니다.**
   Claude Code(터미널이든 데스크탑 앱이든)를 새로 시작하면 어떤 폴더에서 작업하든 이 스킬을 자동으로 씁니다.
6. 자동으로 안 뜨면 대화창에 `/kha-law-update`라고 입력하세요.

## 업데이트 받는 법

스킬 기준이 바뀌면 이 저장소에 새로 반영됩니다. 그때마다:

1. 이 저장소에서 **[Code] → [Download ZIP]**로 다시 받기
2. 기존 폴더 내용을 덮어쓰기 (`setup.ps1`은 다시 실행할 필요 없음 — 폴더 경로가 같으면 이미 등록되어 있습니다)

## 스킬 관리자용 — 로컬에서 수정하는 법

`.claude/skills/kha-law-update/` 안의 파일을 고친 뒤:

```bash
git add -A
git commit -m "기준 수정: <내용>"
git push
```

수정 전 [`references/writing-manual.md`](.claude/skills/kha-law-update/references/writing-manual.md)와 [`references/benchmark-protocol.md`](.claude/skills/kha-law-update/references/benchmark-protocol.md)를 함께 보고, 회귀검증(단계 A/B)이 깨지지 않는지 확인하세요.

## 주의

- `references/samples/`의 예시 문서에는 확인된 사실오류가 있습니다. 형식(대번호 흐름·제목 방식·표 선택)만 참고하고, 조문·수치는 재사용하지 않습니다. 상세는 [`references/sample-notes.md`](.claude/skills/kha-law-update/references/sample-notes.md).
- `setup.ps1`은 `~/.claude/settings.json`에 `permissions.additionalDirectories`를 추가합니다. 기존 설정을 지우지 않고 병합하지만, 이미 커스텀 설정을 해두셨다면 실행 전 해당 파일을 백업해두세요.
