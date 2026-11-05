---
name: prd
description: Create a concise product requirements record for a hackathon app, especially when multiple user roles or data, backend and frontend work must align. Use after clarifying goals and before implementing cross-component user flows.
---

# Define product requirements

Exam rules, task README and higher-priority instructions prevail. Inspect the actual task, existing project, provided data and confirmed grilling results. Separate sourced facts, assumptions and unresolved questions; do not invent business rules or claims.

1. Define the problem, users and their essential actions, required outputs, success criteria and constraints. Distinguish must-have, deferred and explicitly out-of-scope work. If data optimization is required, identify its purpose, baseline availability, hard constraints and comparable metrics; leave algorithm design to implementation.
2. Describe the smallest end-to-end user flows and acceptance checks, including consequential empty, error and access-denied cases. For authentication, storage, security and user roles, specify only what the task requires.
3. Identify the data–backend–frontend boundaries needed for independent work: data identity and units; core processing input/output; API path, method, request/response and errors; storage ownership and expected persistence; screen states and authorization. Record only known details; label proposed or pending contracts and owners. Have the participant convey unresolved business questions to the domain contact.
4. Reuse an existing suitable task requirements document, preserving its content. If none exists and writing is allowed, create `docs/01-problem-map.md`; use a separate PRD only if requested or existing project conventions require one. Include sources and unknowns. Do not overwrite task-provided deliverables or copy sensitive data.
5. Define verification for each essential requirement and integrated user flow. Record evidence locations without inventing results. Assign shared document ownership and manage important unresolved debt via `docs/debt/README.md` as needed.
6. Hand the record to the participant and implementing sessions. Update it when requirements or contracts change; have the relevant sessions re-read changes and recheck affected integration. Continue independent authorized work while an answer is pending.

Product requirements describe what and why; use `planning` for task order, dependencies, time and verification execution. Avoid duplicating records or adding nonessential features, mock results or infrastructure. If writing is blocked, report the limitation and provide the summary in chat.

Do not send messages, auto-commit, push, deploy or automate the browser. The participant communicates with the domain contact and performs UI checks.
