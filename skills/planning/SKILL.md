---
name: planning
description: Turn clarified requirements into a concise hackathon implementation plan with ordered deliverables, dependencies, verification and optional parallel work. Use before multi-step implementation when the approach or task boundaries need planning.
---

# Plan the implementation

Exam rules, task README and higher-priority instructions prevail. Use existing requirements and evidence, including grilling's record when available; inspect relevant code and execution constraints. Separate confirmed rules from assumptions and blockers. Do not repeat resolved questions or invent business facts.

1. Identify the goal, essential deliverables, constraints, acceptance checks and lower-priority work. Keep the existing stack unless a change is necessary.
2. Choose a minimal end-to-end path; outline a few verifiable tasks in dependency order, with the output and focused check for each. Reserve time for integration, regression checks and submission. Update the plan if scope or evidence changes.
3. Consider parallel work only when the environment permits it and tasks are independent enough to justify coordination. Define task scope, owned files or boundaries, shared interfaces, dependencies and expected evidence before delegating. Integrate and verify the combined flow. Otherwise work sequentially. Never assume subagents are available.
4. Record the concise plan in the existing task requirements or planning document, preserving its contents; if none exists and task rules allow, create `docs/requirements.md` in the task workspace. Include goal, must-have and deferred scope, tasks and dependencies, key decisions or assumptions, checks and optional parallel assignments. Do not create separate PRD, ADR or ticket files by default.
5. Report the plan and next action briefly. Continue authorized implementation when requested; wait only for decisions needed by dependent work. If writing is disallowed or blocked, report it and provide the plan in chat.

Do not auto-commit, push, open PRs, deploy, send messages or automate browser interaction. The participant communicates with the domain contact and performs UI checks.
