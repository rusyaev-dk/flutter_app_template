---
description: "Fail-safe UX: what is state, content/visual fallbacks, four basic interface states (Loading, Empty, Error, Success)"
globs: ["lib/**/presentation/**", "lib/**/screens/**", "lib/uikit/**"]
alwaysApply: false
---

# Fail-safe UX: State and fallbacks

Fail-safe UX is an approach to interface design where the application remains predictable and useful even when data fetching, network, or state fails.  
The goal is to give the user a sense of stability, not a "broken" interface.

This document is useful for: Leads, Designers, Developers, QA, PMs.  
Treat it not as a checklist, but as a way of thinking.

## State — what is it?

Any interface is not just a set of screens and components, but a **set of states** the user goes through when interacting with the system.

**State** is a reflection of what is happening with data and processes "under the hood" of the application at a given moment. From the UI perspective, state determines **what** and **how** we show the user at any given second.

Even the simplest screen goes through several states:

- data is being requested (loading);
- data was received successfully (content available);
- no data (empty state);
- an error occurred (request failed).

Each of these states is **an equal part of the interface**, not an exception.  
They must be designed and implemented in advance. When a state is undefined or unhandled, the application loses predictability.

## Content and visual fallbacks

**Fallback** is a predefined interface state that keeps the experience continuous when data is missing or failed to load. Its job is to **preserve the structure, context, and meaning of the screen**.

### Types of fallback elements

- **Skeletons** — temporary placeholders that show the structure of content while it loads.
- **Placeholders** — replacement for unavailable or missing values (empty avatar, dash, "—").
- **Empty states** — dedicated screens or blocks that give meaning to the absence of data.

### Principles for designing fallbacks

1. **Context** — fallback must be logically tied to the content it replaces.
2. **Visual stability** — fallback is background, not an interactive accent.
3. **Consistency** — all fallback elements must be equally recognizable and predictable.
4. **Continuity** — the interface must not lose structure when moving between states.
5. **Predictability** — the user should understand what's happening (loading, empty, error).

### Examples

- List with no data: informative block e.g. "No transactions for the selected period".
- Card with missing fields: neutral placeholders that preserve the card structure.
- Image failed to load: contextual background or icon for the content type.
- Data loading: skeleton matching size and proportions of future content.

---

## Basic interface states

Four key states:

| State | When it appears | What it looks like | What it does |
|-------|-----------------|--------------------|--------------|
| **Loading** | Initial request, refresh | Skeleton, spinner | Shows the system is working |
| **Success** | Data received and valid | Main content | Allows working with data |
| **Empty** | Empty/incomplete data received | Message + explanation + CTA | Explains reason and guides |
| **Error** | Network/server failure, invalid data | Error message + CTA | Informs and offers solution |

These four states are basic but not exhaustive. Any screen can be described as a combination of these states for different blocks and components.
