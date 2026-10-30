---
name: verification-before-completion
description: Verify actual evidence before reporting a task, fix, build or test as complete; use at completion and after relevant changes.
---

# Verification before completion

Exam rules and task instructions prevail. Evidence precedes completion claims.

1. Match each essential requirement to its implementation and an appropriate observable check. Include staged, unstaged and new files when relevant.
2. Check actual command results, exit codes and relevant output. Use evidence from after the last related change; reuse earlier evidence only when the change cannot affect it. Run affected checks again when necessary.
3. Verify important calculations using independent expected values, and distinguish build, tests, API and manual UI evidence. The participant performs browser interaction.
4. Report passed, failed and unverified separately, with the relevant evidence and limitations. Never claim an unrun check passed; do not change expected values merely to match implementation.

Source: obra/superpowers verification-before-completion, adapted for the exam. No automatic commit, push, PR, deployment or UI automation. Consult the cloned harness's `docs/guide/skill-guideline.md` for exam-specific precedence.
