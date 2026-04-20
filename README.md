# learn-os

[![License: MIT](https://img.shields.io/badge/License-MIT-1e1b4b.svg)](./LICENSE)
[![Skills](https://img.shields.io/badge/Skills-3%20%2F%2030-ec4899)](./skills)
[![Phase](https://img.shields.io/badge/Phase-A%20%C2%B7%20%E5%AF%B9%E8%AF%9D%E5%9F%BA%E7%A1%80-06b6d4)](#phase-1--对话基础day-01-05)
[![Status](https://img.shields.io/badge/status-building-f59e0b)](https://github.com/NoSuchClass/learn-os)
[![Cursor](https://img.shields.io/badge/Cursor-compatible-a855f7)](https://cursor.com)

> 用 30 天，在 Cursor 里搭一个 AI 学习操作系统。
> 30 个 Skills 组成完整闭环：从"学什么"到"讲清楚"。

## 这个系统解决什么

面试/自学里卡人的 5 个问题：

1. **学什么** — 不知道目标方向的高频考点
2. **怎么学进去** — 背了就忘、理解浅
3. **怎么沉淀** — 学完散落在笔记里，每次复习要重新推导
4. **怎么不忘** — 一周没碰回到出厂设置
5. **怎么讲清楚** — 知道答案，说不清、抗不住追问

learn-os 用 30 个独立可用的 Cursor Skill 拼成闭环：

| 层 | 解决 | 方法论来源 |
|---|---|---|
| L1 对话层 | 基础协作 | 金字塔原理 + CoVe 自质疑 |
| L2 输入层 | 学什么 / 怎么考 | 面经情报站 +《学习之道》 |
| L3 组织层 | 知识结构化 | Karpathy LLM Wiki + 编年史 + Zettelkasten |
| L4 练习层 | 真会 / 不忘 | 《认知天性》+ 艾宾浩斯 + Bloom |
| L5 输出层 | 讲清楚 / 抗追问 | 《金字塔原理》+ 费曼 + 刻意练习 |
| L6 进化层 | 系统会长 | 持续学习 + 原子习惯 |

## 安装

```bash
git clone https://github.com/<you>/learn-os
cd learn-os
bash install.sh                   # 把 skills 装到 ~/.cursor/skills/
```

也可以只装你需要的：

```bash
bash install.sh clarify challenge journal   # 只装这 3 个
```

## 30 天搭建日历

每天 1 个 skill，30-60 分钟。每周第 7 天为 buffer（答疑/迭代）。

### Phase 1 · 对话基础（Day 01-05）

| Day | Skill | 一句话 |
|---|---|---|
| 01 | [`clarify`](skills/clarify/) | 开工前反问 7 个澄清问题 |
| 02 | [`challenge`](skills/challenge/) | 输入 `?` 触发 7 维自质疑 |
| 03 | [`deai`](skills/deai/) | 去 AI 味 |
| 04 | [`multi-model`](skills/multi-model/) | 跨模型对打 |
| 05 | [`journal`](skills/journal/) | 对话整理成日志 |

### Phase 2 · 知识组织（Day 06-10）

| Day | Skill | 一句话 |
|---|---|---|
| 06 | `chronicle-write` | 按"诞生→痛点→解法→反模式"写编年史 |
| 07 | `chronicle-index` | 编年史索引 + 跨模块关联 |
| 08 | `wiki-ingest` | 新资料 ingest 到 LLM Wiki |
| 09 | `wiki-query` | 查询并沉淀 Q&A 到 Wiki |
| 10 | `wiki-lint` | Wiki 健康检查 |

### Phase 3 · 测验复习（Day 11-15）

| Day | Skill | 一句话 |
|---|---|---|
| 11 | `note-structure` | Bloom L1-L5 + 金字塔结构的笔记骨架 |
| 12 | `quiz` | 4 种题型出题 |
| 13 | `review-sm2` | 艾宾浩斯 + SM-2 自适应间隔 |
| 14 | `weakness-track` | 薄弱点追踪 + 缩短间隔 |
| 15 | `progress` | 进度可视化 |

### Phase 4 · 追问表达（Day 16-20）

| Day | Skill | 一句话 |
|---|---|---|
| 16 | `followup-chain` | 追问链 L1-L5 |
| 17 | `feynman` | 费曼 100 分制评分 |
| 18 | `express-coach` | 面试表达教练 |
| 19 | `mock-interview` | AI 模拟面试官 |
| 20 | `gamify` | 学习游戏化 |

### Phase 5 · 情报站（Day 21-25）

| Day | Skill | 一句话 |
|---|---|---|
| 21 | `intel-profile` | 一句话生成岗位 profile |
| 22 | `intel-crawl` | 面经爬取 |
| 23 | `intel-extract` | 结构化提取 |
| 24 | `intel-query` | 10 种查询命令 |
| 25 | `intel-plan` | 情报驱动的学习计划 |

### Phase 6 · 进化联调（Day 26-30）

| Day | Skill | 一句话 |
|---|---|---|
| 26 | `battle-ready` | 顶层路由：识别意图调度前 25 个 skill |
| 27 | `instinct-observe` | 观察习惯形成 instinct |
| 28 | `instinct-evolve` | 高置信度 instinct 演化为 skill |
| 29 | `learn-os-init` | 一键初始化整套系统 |
| 30 | `learn-os` | 元 skill：一句话走完备战全流程 |

## 怎么用 skills

Cursor Skills 可以单装、混搭、按需启用。每个 skill 的触发方式写在 SKILL.md 顶部 frontmatter 的 `description` 里，Cursor 会根据对话上下文自动匹配。

```
~/.cursor/skills/
├── clarify/
│   └── SKILL.md
├── challenge/
│   └── SKILL.md
└── ...
```

## 学术引用

- Chain-of-Verification — Meta, arXiv:2309.11495
- LLM Knowledge Bases — Andrej Karpathy, 2026
- A Mind for Numbers — Barbara Oakley（《学习之道》）
- Make It Stick — Brown / Roediger / McDaniel（《认知天性》）
- The Pyramid Principle — Barbara Minto（《金字塔原理》）
- Peak — Anders Ericsson（《刻意练习》）
- Atomic Habits — James Clear（《原子习惯》）
- Bloom's Taxonomy of Educational Objectives

## License

MIT
