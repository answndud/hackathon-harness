---
name: test-and-debug
description: Verify important business rules and diagnose failures with independent expectations and evidence. Use for critical calculations, state transitions, boundary cases, bugs, failing tests or unexpected behavior.
---

# Test and debug

Exam rules and task instructions prevail. Combine focused test-first practice with evidence-based debugging; adapt depth to risk and remaining time.

## Verify an important behavior

1. Identify the observable input/output boundary and the rule or source. Choose high-impact normal, boundary and failure cases; distinguish unknown requirements from expected results.
2. Derive expected values independently from the specification, a worked example or a trusted oracle. Check units, time, denominators, missing and duplicate data when relevant.
3. When practical, write a focused behavior test and observe it fail for the intended reason, implement the smallest change and observe it pass. A test added after implementation is useful but is not evidence of a red-green cycle.
4. Verify related behavior and report actual commands and results. Do not weaken an assertion or alter expected values to match the implementation without an independent reason. Avoid tests that only duplicate implementation logic.

## Diagnose a failure

1. Reproduce with the smallest safe input; capture the symptom, relevant error and prior changes. If not reproducible, report the uncertainty and gather targeted evidence.
2. Locate the failing boundary using logs, inputs and outputs. Form one evidence-backed hypothesis and run a small discriminating check; avoid broad speculative changes.
3. Apply a minimal fix and rerun the original failure and relevant normal or regression checks. If repeated attempts fail or time is running short, summarize evidence, alternatives and the impact of reducing scope; do not claim success.

Use only permitted tools. Browser UI interaction is performed by the participant; do not automate it. Never transmit task data externally or auto-commit. Report passed, failed and unverified separately.

Inspired by mattpocock/skills tdd and obra/superpowers systematic-debugging; this is an independent, condensed exam adaptation.
