# Harness

> https://github.com/answndud/hackathon-harness 이 저장소의 README대로 적용 작업을 진행하여 하네스를 구축해라.

## Codex 실행 지침

이 지시를 받으면 다음 순서로 하네스를 준비한다. 시험 공지와 과제의 기존 지침이 우선하며, 설치만 요청받았다면 준비 결과를 보고하고 과제 구현은 시작하지 않는다.

1. 현재 과제 작업 공간과 기존 지침을 확인한다. 이 저장소가 아직 없다면 작업 공간과 구분되는 적절한 위치에 `git clone https://github.com/answndud/hackathon-harness.git`으로 가져온다. 이미 있으면 경로와 내용을 확인해 재사용한다.
2. clone한 하네스의 [AGENTS.md](AGENTS.md)와 [스킬 적용 지침](docs/guide/skill-guideline.md)을 **직접 읽고** 현재 과제에 적용한다. 하네스가 과제 폴더 밖에 있다면 자동 적용된다고 가정하지 않는다. 과제의 기존 AGENTS.md는 덮어쓰지 않는다.
3. 하네스 루트에서 `bash scripts/install-skills.sh <과제_디렉터리>`를 실행해 9개 스킬을 해당 작업 공간에 설치한다. 출력의 `INSTALLED`와 `SKIP`을 확인하고 기존 스킬을 덮어쓰지 않는다.
이미 이전 버전을 과제에 설치했다면 기존 디렉터리는 유지되고 같은 이름은 SKIP된다. 기존 `tdd`, `systematic-debugging`도 자동 삭제되지 않는다. 과제 내 기존 파일을 임의로 삭제·덮어쓰지 말고, 시험용으로 clone한 하네스의 최신 스킬을 직접 읽어 적용한다.

4. 스킬의 자동 검색 여부를 환경에서 확인한다. 현재 세션에서 인식되지 않으면 clone한 하네스의 `skills/<이름>/SKILL.md`와 필요한 참조 파일을 직접 읽어 적용한다. 원본 스킬과 시험용 지침이 충돌하면 시험용 지침을 따른다. 설치에 실패해도 가능한 파일을 직접 읽어 진행하고 실패를 보고한다.
5. [응시자 실전 가이드](docs/guide/skill-user-guide.md)와 [Cofa Probe 팁](docs/guide/cofaprobe-guide.md)의 위치를 안내한다. 이 문서들은 참고 자료이며 시험 규칙이나 과제 요구사항을 대체하지 않는다. 필요할 때 관련 부분만 확인한다.
6. 실제 clone 경로, 읽은 지침, 설치·SKIP·실패 상태와 스킬 자동 검색 여부 또는 직접 읽기 대안을 간결하게 보고한다. 자동 검색이나 동작을 확인하지 못했다면 미확인이라고 표시한다.

## 시험 중 우선 규칙

- 과제·결과물을 외부로 전송하거나 push, PR, 외부 배포하지 않는다. 자동 커밋은 수행하지 않는다.
- Computer Use 자동 조작을 수행하지 않는다. 업무 담당자와 대화하고 브라우저 화면을 검증하는 작업은 응시자가 직접 한다.
- 필요한 스킬만 선택한다. 후속 서술형에서는 시험 안내에 따라 AI를 사용하지 않는다.

## 구성

- [AGENTS.md](AGENTS.md): Codex 공통 작업 지침.
- [docs/guide/skill-guideline.md](docs/guide/skill-guideline.md): 스킬의 시험용 적용 지침.
- [docs/guide/skill-user-guide.md](docs/guide/skill-user-guide.md): 응시자의 상황별 스킬 사용법.
- [docs/guide/cofaprobe-guide.md](docs/guide/cofaprobe-guide.md): 인터뷰 정리와 시험 중 실전 메모.
- [docs/debt/README.md](docs/debt/README.md): 과제 작업 공간에서 사용할 기술 부채 기록 양식. 기존 기록과 시험 규칙을 우선한다.
- `skills/`: 스킬 9개와 관련 참조 파일.
- `scripts/install-skills.sh`: 기존 이름을 덮어쓰지 않는 프로젝트별 설치 스크립트.

일부 스킬은 mattpocock/skills, obra/superpowers, backnotprop/pstack의 공개 스킬을 시험 환경에 맞게 조정했다. test-and-debug는 기존 테스트·디버깅 원칙을 통합해 새로 작성했다.
