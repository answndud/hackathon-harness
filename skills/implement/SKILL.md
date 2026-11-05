---
name: implement
description: Implement an agreed task in small, working slices. Use when requirements are sufficiently clear and code or configuration changes are needed.
---

# Implement

Adapted from mattpocock/skills implement for a time-limited hackathon. Exam rules and task instructions prevail.

- Inspect the existing environment and relevant code. Implement the smallest required input→processing→output path first; retain the existing stack where practical.
- Within the agreed scope proceed autonomously. Surface blockers and decisions that change business meaning, essential scope or significant dependencies.
- For high-impact logic or a failure, use the local test-and-debug skill when available; otherwise apply independent expected values, reproduction and focused verification directly.
- Run checks appropriate to the changes. Review requirement coverage and relevant code, including untracked files. Re-run affected checks after changes.
- After implementing important logic or a key user flow, briefly explain to the participant, based on actual code: input, processing, output, constraints or exceptions, choice and reason, actual checks, and limitations. Give actual file/function locations; distinguish manual checks and unverified behavior. Do this for consequential changes, not every function.
- Report implementation, actual checks, failures and unverified items concisely. Do not auto-commit, push, open a PR or deploy.

Record relevant decisions, actual checks and unresolved issues concisely in the assigned stage document. Coordinate shared document ownership and manage important unresolved debt via `docs/debt/README.md` as needed.
