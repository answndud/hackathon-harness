# Harness

> 작업 전에 하네스를 구축할거야. https://github.com/answndud/hackathon-harness 이 저장소의 README의 'Codex 실행 지침'을 따라서 적용 작업을 진행하여 아래 구성 요소들을 현 프로젝트에 적용해.

## Codex 실행 지침

이 지시를 받으면 다음 순서로 하네스를 준비한다. 시험 공지와 과제의 기존 지침이 우선하며, 설치만 요청받았다면 준비 결과를 보고하고 과제 구현은 시작하지 않는다.

1. 현재 과제 공간과 기존 지침을 확인한다. 하네스가 없다면 과제 공간과 구분되는 위치에 `git clone https://github.com/answndud/hackathon-harness.git`으로 가져온다. 이미 있다면 기존 로컬 변경을 보존하고 버전을 확인한다.
2. 하네스의 `AGENTS.md`와 `guide/hackathon-guide.md`를 직접 읽는다. 과제에 `AGENTS.md`가 없으면 복사하고, 있으면 덮어쓰지 않고 함께 따른다. 이미 시작된 세션에 나중에 추가한 지침이 자동 적용된다고 가정하지 않는다.
3. `guide/`의 가이드와 `docs/debt/README.md`를 과제 공간의 같은 상대 경로에 복사하고 `docs/debt/solved/`를 만든다. 기존 파일을 덮어쓰지 않고 경로가 파일이나 심볼릭 링크로 막혀 있으면 해당 경로는 건드리지 말고 실패를 알린다. 실제 과제 기록은 하네스 원본이 아닌 과제 공간에만 작성한다. 번호 문서는 실제 단계를 수행할 때 만든다.
4. `scripts/install-skills.sh`가 과제의 `skills/`에 복사하는지 확인하고 `bash scripts/install-skills.sh <과제_디렉터리>`를 실행한다. 기존 이름은 보존한다. 자동 검색을 가정하지 말고 필요한 스킬을 직접 읽는다. 복사 실패나 기존 버전과의 차이는 보고한다.
5. 각 복사·보존·실패 상태와 하네스 및 과제 경로를 보고한다. 시험·과제 규칙이 우선이며 설치만 요청받았다면 구현하지 않는다. 과제 파일의 push, 외부 전송, 자동 커밋과 화면 자동 조작은 하지 않는다.

## 구성 요소

- [AGENTS.md](AGENTS.md): Codex 공통 작업 지침.
- [guide/hackathon-guide.md](guide/hackathon-guide.md): 과제 진행 순서, 스킬 선택, 다중 세션 운영과 실전 프롬프트.
- [guide/problem-solving-guide.md](guide/problem-solving-guide.md): 범용 문제 해결·알고리즘 설계·검증과 설명 근거 기록.
- [guide/expected-prompt.md](guide/expected-prompt.md): 단계별 프롬프트와 과제 공간의 번호별 기록 경로. 실제 단계 문서는 필요한 때 생성한다. 여러 세션은 각 담당 문서에 결과를 남긴다.
- [docs/debt/README.md](docs/debt/README.md): 과제 작업 공간에서 사용할 기술 부채 기록 지침과 양식. 기존 기록과 시험 규칙을 우선한다.
- `skills/`: 스킬 7개와 관련 참조 파일.


일부 스킬은 mattpocock/skills, obra/superpowers, backnotprop/pstack의 공개 스킬을 시험 환경에 맞게 조정했다. test-and-debug는 기존 테스트·디버깅 원칙을 통합해 새로 작성했다.
