---
name: lumi-brand
description: "Lumi · Brand Bible. When any task involves Lumi's visual identity — color tokens, typography, logotype, tagline, philosophy, README/GitHub visual assets, or judging whether something 'looks like Lumi' — read this first. Covers the Organic Systems aesthetic and what to avoid (neon gradients, AI-template look). / 只要涉及 Lumi 的视觉身份（配色、字体、logo、口号、判断某张图是否像 Lumi），先读本 skill；包含 Organic Systems 设计哲学和红线。"
---

# lumi-brand — 品牌规范

> 哲学原文：[`lumi/assets/brand/philosophy.md`](../../assets/brand/philosophy.md)
> 人设原文：[`lumi/PERSONA.md`](../../PERSONA.md)

## 一句话品牌

> **Lumi 是一只住在你 Cursor 里的小团子。不是工具，是陪你从"不会"到"讲清楚"的小伙伴。**

Tagline（出现在所有封面/README 底部）：
```
🌱 一只会陪你成长的小团子，住在你的 Cursor 里
```

---

## 设计流派

**主流派：Organic Systems**（温暖、纸感、自然、手写）
**辅流派**：
- *Analog Meditation* — 内页/阅读页/散文式章节（留白、静、文艺）
- *Concrete Poetry* — 宣言页/里程碑/封面级冲击（巨字、建筑感）

**红线（绝不）**：
- ❌ 深色赛博渐变、霓虹、科技感海报
- ❌ AI 模板堆砌（"在当今 AI 时代……"那种）
- ❌ 硬边锐角、冰冷系统 UI
- ❌ 图形和文案脱节、Lumi 表情和情绪不符

---

## 色彩 Token

所有颜色 **必须** 来自 `learn-xhs/templates/_organic.css` 的 `:root`：

| 用途 | CSS 变量 | 值 |
|---|---|---|
| 纸底 | `--paper` | `#f5efe0` |
| 纸底深 | `--paper-deep` | `#ede3cf` |
| 纸底浅 | `--paper-light` | `#faf4e2` |
| 主墨 | `--ink` | `#3d2f1f` |
| 淡墨 | `--ink-faded` | `#7a6b58` |
| 低语墨 | `--ink-whisper` | `#a89a82` |
| Lumi 绿芽 | `--sprout` | `#7ba05c` |
| 热点赤陶 | `--terracotta` | `#d9805c` |
| 赭石 | `--ochre` | `#c89a4e` |
| 梅紫 | `--plum` | `#9b7a8c` |
| 冷石 | `--slate` | `#8a9ba8` |

**禁止**：用 `#000` 黑（永远用 `--ink`）、用纯白（永远用 `--paper`）、用饱和度 >80% 的颜色。

---

## 字体栈

本地字体在 `learn-xhs/assets/fonts/`，CSS 已 `@font-face` 好。**禁止引用 Google Fonts**（会被墙，渲染 fallback 一眼假）。

| 用途 | 字体 | 场景 |
|---|---|---|
| 粗体拉丁/logo | Bricolage Grotesque | `lu·mi` 标识、大字、phase letters |
| 衬线斜体/文艺 | Crimson Pro (Italic) | 强调词、署名、期刊感章节号 |
| 中文主文案 | Noto Sans SC | 标题、正文、标签 |
| 等宽/代码 | Geist Mono / DM Mono | 元信息、meta、`code`、命令 |

**字号阶梯**：
- 巨字宣言：380–440px (Bricolage Bold)
- 页面 H1：46–70px (Noto Sans SC 700)
- 段落：17–22px (Crimson Pro / Noto Sans SC 400)
- 元信息：11–13px (Geist Mono, letter-spacing: 2–3px, uppercase)

---

## Logo / 标识

```
lu·mi
```

- `lu` + 赤陶色圆点 `·` + `mi`
- 圆点永远是 `--terracotta` (`#d9805c`)
- 出现在每张封面左下角签名区
- 巨字变体（仅 hero）：`lum` + 悬空的赤陶圆点代替 `i` 的那个点（见 `000-lumi/1-hero.html`）
- **禁止**：加阴影、加渐变、加英文全大写、用其他配色

---

## 检查清单（判断一个新设计是否"像 Lumi"）

做之前/做完后，用这张表过一遍：

- [ ] 纸底色（`--paper` 系）？不是黑底或白底？
- [ ] 有且只有 1–2 个高饱和强调色？（赤陶、绿芽二选一为主）
- [ ] 至少 20% 留白？
- [ ] 有纸噪点纹理（`.paper-noise`）？
- [ ] Lumi 的姿势和内容情绪对得上？（不是挥手配难过文案）
- [ ] 没有 `transform: rotate()` 或 `scaleX(-1)` 来掩盖姿势错？
- [ ] 底部有 `lu·mi` + 域名 + tagline 的三件套？
- [ ] 字体全部来自本地 `@font-face`（不是 Google Fonts CDN）？
- [ ] 看起来像"一个懂设计的人做的"，而不是"AI 模板"？

任何一项 ❌ 都要回去改。
