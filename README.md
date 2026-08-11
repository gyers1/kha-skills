# kha-skills

대한주택협회 업무용 Claude Code 스킬 모음.

## 포함된 스킬

- **kha-law-update** — 법령 개정안·시행령안을 회원사 안내용 「개정안 주요내용」으로 정리

## 팀원 사용법 (최초 1회)

1. 이 저장소 우측 상단 **[Code] → [Download ZIP]** 클릭
2. 원하는 폴더에 압축 해제 (예: `C:\kha-skills\`)
3. Claude Code 실행 시 `--add-dir` 옵션으로 이 폴더를 추가

   ```bash
   claude --add-dir "C:\kha-skills"
   ```

4. 매번 입력하기 번거로우면 바탕화면에 `.bat` 파일을 만들어 두세요.

   `kha-law-update-실행.bat` 파일을 만들고 아래 내용을 넣은 뒤, 평소 작업 폴더에서 더블클릭하면 됩니다.

   ```bat
   @echo off
   cd /d "%~dp0"
   claude --add-dir "C:\kha-skills"
   ```

   (`cd /d "%~dp0"`는 이 bat 파일이 있는 폴더에서 시작한다는 뜻입니다. 원하는 작업 폴더에 이 bat 파일을 복사해두고 쓰세요.)

5. 정상적으로 연결되면 Claude Code가 법령 개정안 파일을 줄 때 `kha-law-update` 스킬을 자동으로 사용합니다. 직접 부르려면 `/kha-law-update`.

## 업데이트 받는 법

스킬 기준이 바뀌면 이 저장소에 새로 반영됩니다. 그때마다:

1. 이 저장소에서 **[Code] → [Download ZIP]**로 다시 받기
2. 기존 `C:\kha-skills` 폴더 내용을 덮어쓰기 (또는 폴더를 통째로 교체)

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
