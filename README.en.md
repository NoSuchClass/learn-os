<p align="center">🌏&nbsp;&nbsp;English&nbsp;&nbsp;·&nbsp;&nbsp;<a href="./README.md">中文</a></p>

<p align="center">
  <img src="./assets/readme-banner.png" alt="Lumi banner" width="100%" />
</p>

<h1 align="center">Lumi</h1>

<p align="center"><strong>learn-os</strong> · an AI Learning OS that grows inside your Cursor</p>
<p align="center"><em>A little sprouted bun that grows with you 🌱 living inside your Cursor</em></p>

<p align="center">

[![License: MIT](https://img.shields.io/badge/License-MIT-1e1b4b.svg)](./LICENSE)
[![Skills](https://img.shields.io/badge/Skills-3%20%2F%2035-ec4899)](./skills)
[![Phase](https://img.shields.io/badge/Phase-A%20%C2%B7%20Conversation-06b6d4)](#phase-a--conversation-basics)
[![Status](https://img.shields.io/badge/status-building-f59e0b)](https://github.com/NoSuchClass/lumi)
[![Cursor](https://img.shields.io/badge/Cursor-compatible-a855f7)](https://cursor.com)

</p>

> **Who is Lumi?** A study companion that lives inside your Cursor — made of 35 composable Cursor Skills.
> 7 phases form a closed loop: from *what to learn* → *truly learning it* → *articulating it* → *nailing it in interviews*.

---

## The Problem Lumi Solves

The 5 things that usually break self-study & interview prep:

1. **What to learn** — no map of the high-yield topics for your target role
2. **How to internalize** — you memorize but don't actually understand
3. **How to retain** — notes get buried, you re-derive the same thing weekly
4. **How to not forget** — one week off and you're back to zero
5. **How to articulate** — you know the answer but can't defend it under follow-ups

Lumi breaks this into **35 independently-usable Cursor Skills**. Each one stands alone; together they form a full prep system.

| Layer | Solves | Methodology |
|---|---|---|
| L1 · Dialogue | Basic collaboration | Pyramid Principle + Meta CoVe (self-verification) |
| L2 · Input | What to learn / how to test | Interview intel station + *A Mind for Numbers* |
| L3 · Organization | Structured retention | Karpathy's LLM Wiki + chronicle + Zettelkasten |
| L4 · Practice | Truly know / don't forget | *Make It Stick* + Ebbinghaus + Bloom |
| L5 · Output | Articulate / survive follow-ups | Pyramid Principle + Feynman + deliberate practice |
| L6 · Combat | Sprint prep | *Atomic Habits* + deliberate practice + spaced repetition |
| L7 · Evolution | System grows itself | Continuous learning + instinct mechanism |

---

## Install

```bash
git clone https://github.com/NoSuchClass/lumi
cd lumi
bash install.sh                   # all built skills → ~/.cursor/skills/lumi-*
```

Install only what you need:

```bash
bash install.sh clarify challenge deai     # pick 3
bash install.sh --link                     # symlink mode (changes apply live)
bash install.sh --dry-run                  # print only, don't install
```

Uninstall:

```bash
bash uninstall.sh                 # remove all lumi-* skills
```

---

## 7 Phases · 35 Skills

> No fixed pace. Recommended: **3–5 skills/week**. Sprint mode ≈ 7–8 weeks; steady mode ≈ 3 months; self-paced is fine too.
> Current progress: **Phase A · 3 / 5 skills** shipped. ✅ = click to source.

### Phase A · Conversation Basics

Make AI speak like a human, doubt itself, and drop the "AI smell."

| # | Skill | One-liner | Status |
|---|---|---|---|
| A1 | [`clarify`](skills/clarify/) | Ask 7 structured questions before starting | ✅ |
| A2 | [`challenge`](skills/challenge/) | Type `?` to trigger 7-dim self-review | ✅ |
| A3 | [`deai`](skills/deai/) | De-AI rewriting (5 common "AI tells" + rewrite rules) | ✅ |
| A4 | `multi-model` | Cross-model duel; find blind spots via disagreement | ⏳ |
| A5 | `journal` | Auto-convert dialogue into daily log | ⏳ |

### Phase B · Knowledge Organization

Stop losing what you learn in chat history.

| # | Skill | One-liner |
|---|---|---|
| B1 | `chronicle-write` | Write technical chronicles: birth → pain → fix → anti-pattern |
| B2 | `chronicle-index` | Chronicle index + cross-module links |
| B3 | `wiki-ingest` | Ingest new material into your personal LLM Wiki |
| B4 | `wiki-query` | Query + auto-append Q&A back to Wiki |
| B5 | `wiki-lint` | Wiki health check (broken links / stale / duplicates) |

### Phase C · Practice & Review

Actually remember, not fake-remember.

| # | Skill | One-liner |
|---|---|---|
| C1 | `note-structure` | Note skeleton = Bloom L1–L5 + Pyramid structure |
| C2 | `quiz` | Auto-generate 4 question types (MCQ / cloze / short / scenario) |
| C3 | `review-sm2` | Ebbinghaus + SM-2 adaptive spaced repetition |
| C4 | `weakness-track` | Track weak spots, shorten their intervals |
| C5 | `progress` | Visualize learning progress |

### Phase D · Follow-ups & Articulation

If you can't explain it, you don't own it.

| # | Skill | One-liner |
|---|---|---|
| D1 | `followup-chain` | L1–L5 follow-up chain (surface → architecture reflection) |
| D2 | `feynman` | 100-point Feynman scoring + weak-point feedback |
| D3 | `express-coach` | Interview-speech coach (pace / structure / phrasing) |
| D4 | `mock-interview` | AI mock interviewer with multi-round follow-ups |
| D5 | `gamify` | Gamify study (ranks / achievements / streaks) |

### Phase E · Interview Intel

Learning without intel = blind learning.

| # | Skill | One-liner |
|---|---|---|
| E1 | `intel-profile` | JD → role profile (topic map) in one line |
| E2 | `intel-crawl` | Multi-source interview-report crawler |
| E3 | `intel-extract` | Reports → topics / anti-patterns / follow-up chains |
| E4 | `intel-query` | 10 query commands (by company / role / weak spot) |
| E5 | `intel-plan` | Intel-driven auto study plan |

### Phase F · Battle Book

Turn "I have N days to prep" into a runnable loop.

| # | Skill | One-liner |
|---|---|---|
| F1 | `sprint-plan` | Generate N-day sprint plan in one line (goals → daily blocks) |
| F2 | `daily-brief` | Morning brief: main front / side front / risks |
| F3 | `stamina` | Mental/physical check-in + pace adjustment |
| F4 | `retro` | Evening after-action report: wins / blockers / tomorrow |
| F5 | `war-room` | Meta-skill driving the full prep loop |

### Phase G · Evolution

Let the system grow skills for you.

| # | Skill | One-liner |
|---|---|---|
| G1 | `battle-ready` | Top-level router dispatching skills G2–F5 |
| G2 | `instinct-observe` | Watch for recurring "instinct patterns" in dialogue |
| G3 | `instinct-evolve` | High-confidence instincts auto-evolve into skills |
| G4 | `lumi-init` | One-shot init for the whole system |
| G5 | `lumi` | Meta-skill: drive the full loop with one sentence |

---

## How to Combine Skills

Cursor Skills can be installed solo, mixed, or toggled. Each skill's trigger is in its `SKILL.md` frontmatter `description`. Cursor matches them semantically against the conversation.

```
~/.cursor/skills/
├── lumi-clarify/
│   └── SKILL.md
├── lumi-challenge/
│   └── SKILL.md
└── ...
```

**Typical combos:**

- **Pure study**: `clarify` → `wiki-ingest` → `quiz` → `review-sm2` → `feynman`
- **Interview prep**: `intel-profile` → `intel-plan` → `sprint-plan` → `daily-brief` → `mock-interview` → `retro`
- **Daily dev work**: `clarify` → `challenge` → `deai` → `journal`

---

## Academic References

- Chain-of-Verification — Meta, [arXiv:2309.11495](https://arxiv.org/abs/2309.11495)
- LLM Knowledge Bases — Andrej Karpathy, 2026
- *A Mind for Numbers* — Barbara Oakley
- *Make It Stick* — Brown / Roediger / McDaniel
- *The Pyramid Principle* — Barbara Minto
- *Peak* — Anders Ericsson
- *Atomic Habits* — James Clear
- Bloom's Taxonomy of Educational Objectives
- SM-2 Algorithm — Piotr Woźniak, SuperMemo
- Zettelkasten — Niklas Luhmann

---

## Roadmap

- [x] Phase A · Conversation (3/5)
- [ ] Finish Phase A (multi-model / journal)
- [ ] Phase B · Knowledge Organization
- [ ] Phase C · Practice & Review
- [ ] Phase D · Follow-ups & Articulation
- [ ] Phase E · Interview Intel
- [ ] Phase F · Battle Book
- [ ] Phase G · Evolution

Issues / PRs / rants welcome.

---

## License

MIT © 2026 Lumi contributors
