# Hackathon Harness

시험 과제 시작 후 제공된 Codex에게 이 저장소를 clone하고 하네스의 `AGENTS.md`와 `docs/skill-guideline.md`를 먼저 읽은 뒤 필요한 스킬에 시험용 조정을 적용하도록 요청한다. 시험 공지와 과제 README가 우선한다.

## 문서

- [응시자 실전 가이드](docs/skill-field-guide.md): 상황별 스킬 선택과 호출 예시.
- [Codex 적용 지침](docs/skill-guideline.md): 시험 우선 규칙과 스킬별 조정.

## AGENTS.md 적용

[공통 작업 지침](AGENTS.md)은 이 저장소 안에 있다. 하네스를 과제 디렉터리의 형제나 하위 폴더에 clone한 경우 과제 전체에 자동 적용된다고 가정하지 않는다. 시험 Codex에게 이 파일을 직접 읽고 과제 지침과 충돌하지 않는 범위에서 적용하도록 명시한다. 과제의 기존 AGENTS.md를 덮어쓰지 않는다.

## 설치

과제 작업 디렉터리를 확인한 다음 `bash scripts/install-skills.sh <과제_디렉터리>`를 실행하면 10개 스킬을 해당 디렉터리의 `.agents/skills`에 복사한다. 이미 존재하는 같은 이름은 덮어쓰지 않고 SKIP으로 표시한다. 기존 항목이 최신이거나 동일하다는 뜻은 아니다.

스킬 자동 검색은 세션 상태에 따라 즉시 반영되지 않을 수 있다. 사용할 스킬을 찾지 못하면 이 저장소의 `skills/<이름>/SKILL.md`와 필요한 참조 파일을 직접 읽고 적용한다. 모든 스킬을 한 번에 실행할 필요는 없다.

## 우선 규칙

- 시험 중 Computer Use를 통한 자동 화면 조작과 외부 전송, push, PR, 배포를 수행하지 않는다. 화면 검증은 응시자가 직접 수행한다.
- 업무 담당자와의 대화는 응시자가 직접 한다. 원본 스킬의 자동 커밋은 생략한다.
- 원본에 없는 시험용 조정은 `docs/skill-guideline.md`가 정의한다.
- 제공 자료는 공개 상태를 2차 예선 결과 통지 전까지 유지한다는 사용자 제공 공지를 따른다.

## 출처

스킬 원본은 mattpocock/skills, obra/superpowers, backnotprop/pstack의 공개 저장소에서 가져왔다. 시험 환경 제약에 따른 우선 규칙을 각 본문 끝에 추가했다.
