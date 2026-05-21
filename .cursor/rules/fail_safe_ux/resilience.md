---
description: "Fail-safe UX: cognitive resilience, clarity, EAD (Explain → Apologize → Direct)"
globs: ["lib/**/presentation/**", "lib/uikit/**", "lib/l10n/**"]
alwaysApply: false
---

# UX and cognitive resilience

Cognitive resilience is the ability of an interface to **stay clear, predictable, and manageable** for the user even when errors occur, the network fails, or data is unavailable.

## Core principles of cognitive resilience

1. **Clarity**  
   The user should always understand what's happening. Messages about errors, missing data, or loading should be short and clear.  
   Examples: "Failed to load the transaction list.", "Network connection check failed."

2. **Understanding state**  
   All interface states (loading, empty, error, ready) must be **visible and unambiguous**.  
   Even with partial failures the user should clearly see which elements are available and which are temporarily unavailable.

3. **Stability of visual perception**  
   The interface must not "flash" or abruptly change layout when state changes.  
   Transitions between states must be **smooth and predictable**.

## Explain → Apologize → Direct (EAD)

How to give feedback to the user when errors occur or data is missing:

1. **Explain** — Briefly and in plain language tell the user what happened.  
   Example: "Failed to load the latest messages."

2. **Apologize** — Acknowledge the inconvenience and show respect for the user.  
   Example: "We apologize for the temporary inconvenience."

3. **Direct** — Give the user a way to act right away.  
   Example actions: "Retry", "Go to home", "Contact support" buttons.

Upholding this principle gives the user **clarity, acknowledgment of their inconvenience, and a way to act**, creating a sense of control and trust in the system.
