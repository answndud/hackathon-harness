---
name: implement
description: "Implement a piece of work based on a spec or set of tickets."
disable-model-invocation: true
---

Implement the work described by the user in the spec or tickets.

If the user passes a ticket reference, fetch it from the issue tracker and state its title before starting. If the reference is ambiguous, ask.

Call the Skill tool with "tdd" where possible, at pre-agreed seams.

Run typechecking regularly, single test files regularly, and the full test suite once at the end.

Once done, call the Skill tool with "code-review" to review the work.

Commit your work to the current branch.


> 시험 적용: docs/skill-guideline.md의 시험용 적용 우선 규칙이 이 원본보다 우선한다. 자동 커밋은 생략하고 외부 전송·Computer Use를 수행하지 않는다. 필요한 경우 스킬 파일을 직접 읽고 적용한다.
