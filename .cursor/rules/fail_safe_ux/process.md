---
description: "Fail-safe UX: design/development/testing responsibilities, resilience as shared discipline"
alwaysApply: false
---

# Processes and responsibility

Fail-safe UX is not a set of workarounds for handling errors, but a way of thinking that should run through the entire product lifecycle. It's built at every stage: from idea to QA.

## 1. Design: Designing scenarios, not screens

The designer thinks in terms of **dynamic scenarios**, not static mockups.

- **State-based thinking** — design a range of behavior that stays readable and predictable with any data.
- **Visual resilience** — skeletons, empty states, errors are elements of the design system; they should share patterns, colors, animations, copy.
- **Designer responsibility** — design **all states** of the user experience, including Loading, Empty, Error. A mockup without these is not a finished design.
- **Design review** — discuss the user journey through all possible states: Loading → Success, Loading → Empty, Loading → Error → Retry.

## 2. Development: engineering reliable interfaces

Every API call or component must have defined behavior for errors, timeouts, and empty data. Strong typing forces explicit handling of optional fields, null states, and fallback values.

**Code review from a resilience perspective:**

- Are all loading and error states handled?
- Is there fallback for missing data?
- Are unified skeleton and empty-state components used?

## 3. Testing: checking resilience, not just functionality

QA verifies **resilience of the user experience**.

- **Test the "failure path"** — simulate: no internet, empty array/null, 404/500, broken image URL, filters that return empty results.
- **Observe UX effect** — even if technically correct, unpredictable redraws or "jumping" are fail-safe issues.
- **Record and document** — unhandled states and missing fallbacks should be recorded for systematic improvement.

## Summary

Fail-safe UX is a **shared discipline**:

- Designers shape a resilient visual language
- Developers implement predictable behavior
- QA confirms the interface stays clear in abnormal scenarios
- Leads and managers support checking the "failure path", not only the "happy path"
