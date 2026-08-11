# kha-law-update — 설치 및 팀 공유

대한주택협회 회원사 안내용 「개정안 주요내용」 작성 스킬(Claude Code).

## 구성

```
kha-law-update/
├── SKILL.md                              작업 흐름과 핵심 규칙
├── README.md                             (이 파일 — 스킬 동작과 무관)
└── references/
    ├── writing-manual.md                 관련성 판정·개정유형 판정·분류·역할분리·표 기준
    ├── output-template.md                산출물 뼈대와 표기 규칙
    ├── quality-checklist.md              최종 내부 점검
    ├── sample-notes.md                   샘플 편집원리 + 확인된 오류 + 누락 후보
    ├── benchmark-protocol.md             2단계 회귀검증
    └── samples/
        ├── 2026세법개정안-법률.md          정책주제별 통합모드 사례
        └── 2026세법시행령개정안.md         법령별 구성 사례
```

## 사용법

Claude Code에서 개정문과 신·구조문대비표를 주고 정리를 요청하면 자동으로 뜬다. 명시적으로 부르려면:

```
/kha-law-update
```

## 팀 공유 방법

### 방법 1 — 저장소 커밋 (권장)

팀이 공유하는 저장소에 `.claude/skills/kha-law-update/`를 커밋한다. 저장소를 clone한 사람은 그 폴더에서 Claude Code를 열면 바로 쓸 수 있다.

```bash
git add .claude/skills/kha-law-update
git commit -m "Add kha-law-update skill"
git push
```

### 방법 2 — 폴더 복사

저장소를 쓰지 않으면 폴더째 전달한다. 받는 사람은 다음 위치에 넣는다.

- 이 업무에서만 쓸 경우: `<작업폴더>\.claude\skills\kha-law-update\`
- 어느 폴더에서나 쓸 경우: `C:\Users\<사용자>\.claude\skills\kha-law-update\`

### 방법 3 — 공유 드라이브

공유 드라이브의 업무 폴더에 `.claude\skills\`를 두면 그 폴더에서 작업하는 모든 팀원이 같은 스킬을 쓴다. 기준 개정 시 한 곳만 고치면 된다.

## 선택 연동 — korean-law-mcp

현행 조문 확인이 필요할 때만 쓴다(필수 아님). 없어도 스킬은 동작하며, 제공된 개정문·대비표만으로 작업한다.

## 기준 변경 시

작성 기준을 바꾸면 `references/`의 해당 파일만 고친다. `benchmark-protocol.md`로 회귀검증을 돌려 기존 샘플 구조로 수렴하는지 확인한 뒤 배포한다.

`samples/`의 법률 샘플에는 **확인된 사실오류 6건**이 있다. 형식 참고용이며 조문·수치를 재사용하지 않는다. 상세는 `references/sample-notes.md` 2절.
