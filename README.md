# Harness

> https://github.com/answndud/hackathon-harness 이 저장소의 README대로 적용 작업을 진행하여 하네스를 구축해라.

## Codex 실행 지침

이 지시를 받으면 다음 순서로 하네스를 준비한다. 시험 공지와 과제의 기존 지침이 우선하며, 설치만 요청받았다면 준비 결과를 보고하고 과제 구현은 시작하지 않는다.

1. 현재 과제 작업 공간과 기존 지침을 확인한다. 이 저장소가 아직 없다면 작업 공간과 구분되는 적절한 위치에 `git clone https://github.com/answndud/hackathon-harness.git`으로 가져온다. 이미 있으면 경로와 로컬 변경을 보존하며 최신 지침인지 확인한다. 안전하게 갱신할 수 없으면 현재 버전과 한계를 보고한다.
2. clone한 하네스의 [AGENTS.md](AGENTS.md)와 [스킬 적용 지침](docs/guide/skill-guideline.md)을 **직접 읽고** 현재 과제에 적용한다. 과제 작업 공간에 AGENTS.md가 없으면 하네스의 파일을 복사하고, 이미 있으면 덮어쓰지 않고 두 지침을 함께 따른다. 이미 시작된 세션에서 복사한 AGENTS.md가 자동 적용된다고 가정하지 않는다.
3. 과제 작업 공간에 하네스의 `docs/guide/` 문서 3개와 `docs/debt/README.md`를 각각 같은 상대 경로로 복사하고 `docs/debt/solved/`를 만든다. 기존 디렉터리는 재사용하고, 같은 경로의 기존 파일은 절대 덮어쓰지 않는다. 파일별로 복사·기존 파일 보존·실패를 확인하고 보고한다. 경로가 이미 파일이나 심볼릭 링크로 막혀 있으면 변경하지 말고 해당 경로와 실패를 보고한다. 하네스 clone 자체를 과제 공간으로 사용하지 않으며, 실제 부채는 과제 공간에만 기록한다.
4. 스킬을 Codex 자동 등록 경로에 설치하지 않는다. `.agents/`를 생성하거나 쓰려고 시도하지 않는다. 먼저 clone의 `scripts/install-skills.sh`가 대상 경로를 과제의 `skills/`로 지정하는지 확인한 뒤, 하네스 루트에서 `bash scripts/install-skills.sh <과제_디렉터리>`를 실행해 9개 스킬을 과제 작업 공간의 `skills/<이름>/`에 복사한다. 스크립트가 `.agents/skills`를 가리키는 구버전이면 실행하지 말고, 최신 하네스의 `skills/` 내용을 기존 파일을 덮어쓰지 않고 과제의 `skills/`에 직접 복사한다. 일반 `skills/` 경로도 쓰기가 금지되어 있으면 해당 제한을 따르고 clone의 파일을 직접 읽는다. 이 경로가 Codex에 자동 등록된다고 가정하지 않는다. 출력의 `INSTALLED`와 `SKIP`을 확인하고 기존 스킬을 덮어쓰지 않는다.
이미 이전 버전을 과제에 설치했다면 기존 디렉터리는 유지되고 같은 이름은 SKIP된다. 기존 `tdd`, `systematic-debugging`도 자동 삭제되지 않는다. 과제 내 기존 파일을 임의로 삭제·덮어쓰지 말고, 시험용으로 clone한 하네스의 최신 스킬을 직접 읽어 적용한다.

5. 필요한 스킬은 과제 작업 공간의 `skills/<이름>/SKILL.md`와 필요한 참조 파일을 직접 읽고 적용한다. 자동 검색 여부는 환경에서 확인되었을 때만 보고한다. SKIP된 스킬이 하네스와 다르면 clone한 하네스의 해당 파일을 직접 읽어 적용한다. 원본 스킬과 시험용 지침이 충돌하면 시험용 지침을 따른다. 설치에 실패해도 가능한 파일을 직접 읽어 진행하고 실패를 보고한다.
6. [응시자 실전 가이드](docs/guide/skill-user-guide.md)와 [Cofa Probe 팁](docs/guide/cofaprobe-guide.md)의 위치를 안내한다. 기술 부채가 발생하면 [기록 지침](docs/debt/README.md)을 읽고 과제 작업 공간에 기록한다. 하네스 저장소에는 과제 내용을 기록하지 않는다. 이 문서들은 참고 자료이며 시험 규칙이나 과제 요구사항을 대체하지 않는다. 필요할 때 관련 부분만 확인한다.
7. 실제 clone 경로와 과제 작업 공간, 읽은 지침, AGENTS.md·각 가이드·부채 폴더의 과제 내 경로와 복사·보존·실패 상태, 스킬 복사·SKIP·실패 상태와 직접 읽기 경로 및 확인된 자동 검색 여부를 간결하게 보고한다. 자동 검색이나 동작을 확인하지 못했다면 미확인이라고 표시한다.

## 시험 중 우선 규칙

- 과제·결과물을 외부로 전송하거나 push, PR, 외부 배포하지 않는다. 자동 커밋은 수행하지 않는다.
- Computer Use 자동 조작을 수행하지 않는다. 업무 담당자와 대화하고 브라우저 화면을 검증하는 작업은 응시자가 직접 한다.
- 필요한 스킬만 선택한다. 후속 서술형에서는 시험 안내에 따라 AI를 사용하지 않는다.

## 구성

- [AGENTS.md](AGENTS.md): Codex 공통 작업 지침.
- [docs/guide/skill-guideline.md](docs/guide/skill-guideline.md): 스킬의 시험용 적용 지침.
- [docs/guide/skill-user-guide.md](docs/guide/skill-user-guide.md): 응시자의 상황별 스킬 사용법.
- [docs/guide/cofaprobe-guide.md](docs/guide/cofaprobe-guide.md): 인터뷰 정리와 시험 중 실전 메모.
- [docs/debt/README.md](docs/debt/README.md): 과제 작업 공간에서 사용할 기술 부채 기록 지침과 양식. 기존 기록과 시험 규칙을 우선한다.
- `skills/`: 스킬 9개와 관련 참조 파일.
- `scripts/install-skills.sh`: 기존 이름을 덮어쓰지 않는 프로젝트별 설치 스크립트.

일부 스킬은 mattpocock/skills, obra/superpowers, backnotprop/pstack의 공개 스킬을 시험 환경에 맞게 조정했다. test-and-debug는 기존 테스트·디버깅 원칙을 통합해 새로 작성했다.
