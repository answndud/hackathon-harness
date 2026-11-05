---
name: code-review
description: Review a hackathon task or work-in-progress changes for requirement gaps, correctness, security and integration defects. Use when checking completed or partial work before submission or when reviewing changes.
---

# Review the task

Exam rules, task instructions and `guide/hackathon-guide.md` take precedence. Based on mattpocock/skills code-review, adapted for a time-limited task.

1. Read the relevant requirements and existing project standards. Inspect actual changes, including staged, unstaged and untracked files; if Git or a baseline is unavailable, compare current files against requirements. Do not require an issue tracker or fixed commit.
2. Review requirements and substantive quality separately. Prioritize missing requirements and business rules; calculation, data and constraint errors; authentication and authorization where required; API, storage and UI integration; and failures blocking execution or submission. Check duplication, complexity or abstractions only when they materially affect the task.
3. Validate significant findings against actual code, requirements or execution evidence. Distinguish confirmed defects, suspected issues and unverified behavior. Do not claim to have run checks that were not run.
4. Report findings by impact with file/function location, concrete cause and consequence, evidence and a minimal next action; distinguish blockers from optional improvements. Identify missing verification and limitations. Do not make unrelated edits or require subagents.
5. Record relevant findings in the assigned stage document and manage important unresolved debt via `docs/debt/README.md` as needed. Recheck affected behavior after subsequent fixes.

Do not auto-commit, push, deploy or automate the browser. The participant performs manual UI checks.
