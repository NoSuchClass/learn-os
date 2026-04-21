<p align="center">🌏&nbsp;&nbsp;<a href="./README.en.md">English</a>&nbsp;&nbsp;·&nbsp;&nbsp;中文</p>

<p align="center">
  <img src="./assets/readme-banner.png" alt="Lumi banner" width="100%" />
</p>

<h1 align="center">Lumi</h1>

<p align="center"><strong>learn-os</strong> · 在 Cursor 里长出来的 AI 学习操作系统</p>
<p align="center"><em>一只会陪你成长的小团子 🌱 住在你的 Cursor 里</em></p>

<p align="center">

[![License: MIT](https://img.shields.io/badge/License-MIT-1e1b4b.svg)](./LICENSE)
[![Skills](https://img.shields.io/badge/Skills-3%20%2F%2035-ec4899)](./skills)
[![Phase](https://img.shields.io/badge/Phase-A%20%C2%B7%20%E5%AF%B9%E8%AF%9D%E5%9F%BA%E7%A1%80-06b6d4)](#phase-a--对话基础)
[![Status](https://img.shields.io/badge/status-building-f59e0b)](https://github.com/NoSuchClass/lumi)
[![Cursor](https://img.shields.io/badge/Cursor-compatible-a855f7)](https://cursor.com)

</p>

> **Lumi 是谁？** 一个住在你 Cursor 里的学习伙伴，由 35 个可单用的 Skill 组成。
> 7 个 Phase 拼成完整闭环：从"学什么"到"讲清楚"再到"考出来"。

---

## 这个系统解决什么

自学 / 备战 / 面试复盘里最卡人的 5 个问题：

1. **学什么** — 不知道目标岗位的高频考点，只能盲学
2. **怎么学进去** — 背了就忘、理解浅、只会复述
3. **怎么沉淀** — 学完散落在笔记里，每次复习都要重新推导
4. **怎么不忘** — 一周没碰回到出厂设置
5. **怎么讲清楚** — 知道答案，却说不清、抗不住追问

Lumi 把它拆成 **35 个独立可用的 Cursor Skill**。每个 skill 单独也能用，组合起来就是完整备战系统。

| 层 | 解决 | 方法论来源 |
|---|---|---|
| L1 对话层 | 基础协作 | 金字塔原理 + Meta CoVe 自质疑 |
| L2 输入层 | 学什么 / 怎么考 | 面经情报站 +《学习之道》 |
| L3 组织层 | 知识结构化 | Karpathy LLM Wiki + 编年史 + Zettelkasten |
| L4 练习层 | 真会 / 不忘 | 《认知天性》+ 艾宾浩斯 + Bloom |
| L5 输出层 | 讲清楚 / 抗追问 | 《金字塔原理》+ 费曼 + 刻意练习 |
| L6 实战层 | 冲刺备战 | 《原子习惯》+ 刻意练习 + 间隔复习 |
| L7 进化层 | 系统会长 | 持续学习 + instinct 机制 |

---

## 安装

```bash
git clone https://github.com/NoSuchClass/lumi
cd lumi
bash install.sh                   # 全部已产出的 skills → ~/.cursor/skills/lumi-*
```

只装你需要的：

```bash
bash install.sh clarify challenge deai     # 指定 3 个
bash install.sh --link                     # 软链接模式，改动立即生效
bash install.sh --dry-run                  # 只打印不执行
```

卸载：

```bash
bash uninstall.sh                 # 移除所有 lumi-* skills
```

---

## 7 个 Phase · 35 个 Skill

> 节奏不定，建议**每周 3-5 个 skill**。sprint 模式 7-8 周出齐；steady 模式 3 个月；自学模式不限期。
> 当前进度：**Phase A · 3 / 5 skill** 已出。点击打勾的 skill 可跳转到源码。

### Phase A · 对话基础

让 AI 和你讲人话、敢质疑自己、不要 AI 味。

| # | Skill | 一句话 | 状态 |
|---|---|---|---|
| A1 | [`clarify`](skills/clarify/) | 开工前让 AI 反问 7 个澄清问题 | ✅ |
| A2 | [`challenge`](skills/challenge/) | 输入 `?` 触发 7 维自质疑 | ✅ |
| A3 | [`deai`](skills/deai/) | 去 AI 味（5 种典型味 + 改写规则）| ✅ |
| A4 | `multi-model` | 跨模型对打，用分歧找盲区 | ⏳ |
| A5 | `journal` | 对话自动整理成日志 | ⏳ |

### Phase B · 知识组织

把学到的东西结构化沉淀，不要散落在对话历史里。

| # | Skill | 一句话 |
|---|---|---|
| B1 | `chronicle-write` | 按"诞生→痛点→解法→反模式"写技术编年史 |
| B2 | `chronicle-index` | 编年史索引 + 跨模块关联 |
| B3 | `wiki-ingest` | 新资料 ingest 到个人 LLM Wiki |
| B4 | `wiki-query` | 查询并自动沉淀 Q&A 回 Wiki |
| B5 | `wiki-lint` | Wiki 健康检查（失联、过时、冗余）|

### Phase C · 测验复习

让大脑真的记住，不是假装记住。

| # | Skill | 一句话 |
|---|---|---|
| C1 | `note-structure` | Bloom L1-L5 + 金字塔结构的笔记骨架 |
| C2 | `quiz` | 4 种题型自动出题（选择 / 填空 / 简答 / 场景）|
| C3 | `review-sm2` | 艾宾浩斯 + SM-2 自适应间隔复习 |
| C4 | `weakness-track` | 薄弱点追踪 + 针对性缩短间隔 |
| C5 | `progress` | 学习进度可视化 |

### Phase D · 追问表达

能讲清楚的知识才是你的知识。

| # | Skill | 一句话 |
|---|---|---|
| D1 | `followup-chain` | 追问链 L1-L5 （从表层到架构反思）|
| D2 | `feynman` | 费曼 100 分制评分 + 薄弱点反馈 |
| D3 | `express-coach` | 面试表达教练（节奏 / 结构 / 话术）|
| D4 | `mock-interview` | AI 模拟面试官，多轮追问 |
| D5 | `gamify` | 学习游戏化（段位 / 成就 / 连击）|

### Phase E · 情报站

不知道考什么的学习等于没学，情报驱动一切。

| # | Skill | 一句话 |
|---|---|---|
| E1 | `intel-profile` | 一句话生成岗位 profile（JD → 考点图）|
| E2 | `intel-crawl` | 多源面经爬取（结构化输入）|
| E3 | `intel-extract` | 面经 → 考点 / 反模式 / 追问链 |
| E4 | `intel-query` | 10 种查询命令（按公司 / 岗位 / 薄弱点）|
| E5 | `intel-plan` | 情报驱动的自动学习计划 |

### Phase F · 作战手册

把"我要准备 N 天面试"变成一个可运行的闭环。

| # | Skill | 一句话 |
|---|---|---|
| F1 | `sprint-plan` | 一句话生成 N 天备战作战计划（目标 → 每日 block）|
| F2 | `daily-brief` | 每日早会：今日主战场 / 次战场 / 风险 |
| F3 | `stamina` | 心态 / 体能自检 + 配速调整 |
| F4 | `retro` | 每日战报：收获 / 受阻 / 明日路线 |
| F5 | `war-room` | 元 skill：驱动整个备战闭环 |

### Phase G · 进化联调

让系统自己长出能力，不用你手写每一个 skill。

| # | Skill | 一句话 |
|---|---|---|
| G1 | `battle-ready` | 顶层路由：识别意图调度前面 30 个 skill |
| G2 | `instinct-observe` | 观察对话中重复出现的"本能模式" |
| G3 | `instinct-evolve` | 高置信度 instinct 自动演化为 skill |
| G4 | `lumi-init` | 一键初始化整套系统 |
| G5 | `lumi` | 元 skill：一句话走完全流程 |

---

## 怎么组合使用

Cursor Skills 可以单装、混搭、按需启用。每个 skill 的触发方式写在 `SKILL.md` 顶部 frontmatter 的 `description` 里，Cursor 会根据对话上下文自动匹配。

```
~/.cursor/skills/
├── lumi-clarify/
│   └── SKILL.md
├── lumi-challenge/
│   └── SKILL.md
└── ...
```

**典型组合**：

- **纯学习**：`clarify` → `wiki-ingest` → `quiz` → `review-sm2` → `feynman`
- **面试备战**：`intel-profile` → `intel-plan` → `sprint-plan` → `daily-brief` → `mock-interview` → `retro`
- **日常研发辅助**：`clarify` → `challenge` → `deai` → `journal`

---

## 学术引用

- Chain-of-Verification — Meta, [arXiv:2309.11495](https://arxiv.org/abs/2309.11495)
- LLM Knowledge Bases — Andrej Karpathy, 2026
- *A Mind for Numbers* — Barbara Oakley（《学习之道》）
- *Make It Stick* — Brown / Roediger / McDaniel（《认知天性》）
- *The Pyramid Principle* — Barbara Minto（《金字塔原理》）
- *Peak* — Anders Ericsson（《刻意练习》）
- *Atomic Habits* — James Clear（《原子习惯》）
- Bloom's Taxonomy of Educational Objectives
- SM-2 Algorithm — Piotr Woźniak, SuperMemo
- Zettelkasten — Niklas Luhmann

---

## Roadmap

- [x] Phase A · 对话基础（3/5）
- [ ] Phase A 补完（multi-model / journal）
- [ ] Phase B · 知识组织
- [ ] Phase C · 测验复习
- [ ] Phase D · 追问表达
- [ ] Phase E · 情报站
- [ ] Phase F · 作战手册
- [ ] Phase G · 进化联调

欢迎 issue / PR / 吐槽。

---

## License

MIT © 2026 Lumi contributors
