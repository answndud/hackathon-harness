---
name: code-review
description: "Review the changes since a fixed point (commit, branch, tag, or merge-base) along two axes: Standards (does the code follow this repo's documented coding standards?) and Spec (does the code match what the originating issue/spec asked for?). Reviews both perspectives with the available tools. Use when the user wants to review a branch, a PR, work-in-progress changes, or asks to \"review since X\"."
---

## Exam adaptation

Source: mattpocock/skills, skills/engineering/code-review. Modified for the exam: review uncommitted and untracked files; do not require an issue tracker, fixed commit or sub-agents. Exam rules, task instructions and docs/guide/skill-guideline.md take precedence.

Review the actual work along two axes: **Spec** (requirements and missing or incorrect behavior) and **Standards** (relevant project conventions and substantive quality risks). Use the task README and provided materials as the spec.

- Inspect committed changes if a suitable baseline exists, plus staged and unstaged changes and untracked files. If Git or a baseline is unavailable, inspect current files against the task requirements.
- Do not require an issue tracker or ask for a fixed commit to proceed. If a requirement is unclear, mark it unverified.
- Run the two perspectives sequentially when parallel review is unavailable or not permitted; do not spawn sub-agents unless allowed.
- Separate blocking defects from optional improvements. Cite relevant file and requirement or execution evidence. Do not make unrelated edits.

### 3. Identify the standards sources

Search the repo for every file that documents how code should be written. When `CODING_STANDARDS.md` or `CONTRIBUTING.md` exists, it must be on the list.

On top of whatever the repo documents, the Standards axis always carries the **smell baseline** below: a fixed set of Fowler code smells (_Refactoring_, ch.3) that applies even when a repo documents nothing. Two rules bind it:

- **The repo overrides.** A documented repo standard always wins; where it endorses something the baseline would flag, suppress the smell.
- **Always a judgement call.** Each smell is a labelled heuristic ("possible Feature Envy"), never a hard violation. Like any standard here, skip anything tooling already enforces.

Each smell reads *what it is* → *how to fix*; match it against the diff:

- **Mysterious Name**: a function, variable, or type whose name doesn't reveal what it does or holds. → rename it; if no honest name comes, the design's murky.
- **Duplicated Code**: the same logic shape appears in more than one hunk or file in the change. → extract the shared shape, call it from both.
- **Feature Envy**: a method that reaches into another object's data more than its own. → move the method onto the data it envies.
- **Data Clumps**: the same few fields or params keep travelling together (a type wanting to be born). → bundle them into one type, pass that.
- **Primitive Obsession**: a primitive or string standing in for a domain concept that deserves its own type. → give the concept its own small type.
- **Repeated Switches**: the same `switch`/`if`-cascade on the same type recurs across the change. → replace with polymorphism, or one map both sites share.
- **Shotgun Surgery**: one logical change forces scattered edits across many files in the diff. → gather what changes together into one module.
- **Divergent Change**: one file or module is edited for several unrelated reasons. → split so each module changes for one reason.
- **Speculative Generality**: abstraction, parameters, or hooks added for needs the spec doesn't have. → delete it; inline back until a real need shows.
- **Message Chains**: long `a.b().c().d()` navigation the caller shouldn't depend on. → hide the walk behind one method on the first object.
- **Middle Man**: a class or function that mostly just delegates onward. → cut it, call the real target direct.
- **Refused Bequest**: a subclass or implementer that ignores or overrides most of what it inherits. → drop the inheritance, use composition.

### 4. Review and report

Review requirements and quality separately, focusing on defects that affect the task. Validate significant findings against actual files or execution evidence. Report each finding with location and impact, followed by unverified items. Do not claim execution that did not happen.

## Why two axes

A change can pass one axis and fail the other:

- Code that follows every standard but implements the wrong thing → **Standards pass, Spec fail.**
- Code that does exactly what the issue asked but breaks the project's conventions → **Spec pass, Standards fail.**

Reporting them separately stops one axis from masking the other.


> 시험 적용: docs/guide/skill-guideline.md의 시험용 적용 우선 규칙이 이 원본보다 우선한다. 자동 커밋은 생략하고 외부 전송·Computer Use를 수행하지 않는다. 필요한 경우 스킬 파일을 직접 읽고 적용한다.
