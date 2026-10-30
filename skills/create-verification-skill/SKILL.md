---
name: create-verification-skill
description: "Create a focused, repeatable verification procedure for an application or script when repeated verification is needed."
disable-model-invocation: true
---

# Create a verification procedure

Source: backnotprop/pstack, skills/create-verification-skill. Modified for the exam: the participant performs browser UI interactions manually; do not create or execute Computer Use, browser/CDP, Playwright, Cypress or other automated UI-driving procedures. Exam rules, task instructions and docs/skill-guideline.md take precedence.

Use this skill only when a reusable procedure is worth the time. For a short task, use a concise checklist and reproducible CLI commands instead of creating a skill.

## Procedure

1. Inspect the task and repository for the launch command, required input, preconditions, expected output and existing tests. If the application cannot run, identify and report the blocking cause.
2. Define checks for the most important requirements. Include normal and consequential failure or boundary cases. Use independent expected values for important calculations.
3. Separate checks into:
   - **Agent-executable:** permitted local CLI, unit tests, API checks and observations of files, responses or logs.
   - **Participant manual:** exact steps and expected results for browser UI interaction. The agent must not drive the UI automatically.
4. Write a short reusable procedure in the task workspace only when helpful, including launch, readiness, inputs, checks, expected evidence and cleanup of processes started for verification. Preserve any evidence needed by the task.
5. Execute permitted checks. Ask the participant to perform the manual UI steps. Record each result as passed, failed or unverified. A planned but unexecuted check is not evidence of success.

The included references/feature-map-example/ provides optional upstream examples; apply the restrictions above if consulting them. Do not require feature maps, extra tools, external deployment or unsupported skills.
