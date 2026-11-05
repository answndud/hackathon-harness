# Harness

> 작업 전에 하네스를 구축할거야. https://github.com/answndud/hackathon-harness 이 저장소의 README의 'Codex 실행 지침'을 따라서 적용 작업을 진행하여 아래 구성 요소들을 현 프로젝트에 적용해.

## Codex 실행 지침

이 지시를 받으면 다음 순서로 하네스를 준비한다. 시험 공지와 과제의 기존 지침이 우선하며, 설치만 요청받았다면 준비 결과를 보고하고 과제 구현은 시작하지 않는다.

1. 작업 공간과 구분되는 적절한 위치에 `git clone https://github.com/answndud/hackathon-harness.git`으로 가져온다.
2. 아래의 '구성 요소'의 폴더와 파일들이 모두 제대로된 위치에 있는지 확인하고 없다면 다시 클론해 가져온다.
3. 적용되어있는 7개의 skills들이 제대로 있는지 확인하고. codex에 적용되어 있는지 확인한다. (scripts/install-skills.sh: 기존 이름을 덮어쓰지 않는 프로젝트별 설치 스크립트. 필요 할때만 사용)
4. 이후 git과 관련된 작업은 하지 않는다.

## 구성 요소

- [AGENTS.md](AGENTS.md): Codex 공통 작업 지침.
- [guide/hackathon-guide.md](guide/hackathon-guide.md): 과제 진행 순서, 스킬 선택, 다중 세션 운영과 실전 프롬프트.
- [guide/problem-solving-guide.md](guide/problem-solving-guide.md): 범용 문제 해결·알고리즘 설계·검증과 설명 근거 기록.
- [guide/expected-prompt.md](guide/expected-prompt.md): 과제에 맞는 단계만 골라 복사해 쓰는 상세 요청. 실전 가이드는 운영 원칙을, 이 문서는 구체적인 요청 예시를 제공한다.
- [docs/work/README.md](docs/work/README.md): 세션별 작업 보고서와 추적 방법.
- [docs/debt/README.md](docs/debt/README.md): 과제 작업 공간에서 사용할 기술 부채 기록 지침과 양식. 기존 기록과 시험 규칙을 우선한다.
- `skills/`: 스킬 7개와 관련 참조 파일.


일부 스킬은 mattpocock/skills, obra/superpowers, backnotprop/pstack의 공개 스킬을 시험 환경에 맞게 조정했다. test-and-debug는 기존 테스트·디버깅 원칙을 통합해 새로 작성했다.
