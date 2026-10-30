---
name: grilling
description: Clarify ambiguous task goals, business rules and decisions; ask high-impact questions and record the resulting requirements and evidence.
---

# Clarify and record the task

Exam rules, task README and higher-priority instructions prevail. Adapted from mattpocock/skills grilling and domain-modeling for a time-limited hackathon.

1. Read relevant requirements, documents, code and data first. Separate sourced facts, assumptions, conflicts and unknowns; compare documents with existing behavior.
2. Identify decisions that change the result or implementation. When relevant, check the meaning of records and IDs, units, time, calculations, state transitions, missing or duplicate data and exceptions. Do not invent business rules.
3. Prepare up to five prioritized questions per round with a brief consequence. The participant sends them to the domain contact. Wait only for answers needed for dependent work; continue independent work and label reversible assumptions.
4. Save the concise outcome in an existing suitable task document, preserving its contents; if none exists and task rules allow, create `docs/requirements.md` in the task workspace. Record goal, essential requirements, confirmed rules and their sources, decisions, assumptions, unresolved questions, and acceptance checks as relevant. Exclude secrets and unnecessary personal data.
5. When answers arrive, update the same record, distinguish confirmed from unverified, compare changes against existing code, and report any consequential conflict. Keep the document current and concise; do not require separate glossary or ADR files. If writing is blocked or disallowed, report that and provide the summary to the participant.

Do not send messages, auto-commit, push, deploy or automate the browser. Do not block routine implementation waiting for every possible decision.
