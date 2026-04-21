---
name: lumi-cover-design
description: "Lumi · XHS / Social Cover Production. When the task is to create, redesign, or render a Xiaohongshu post cover, social preview card, or any Lumi-branded visual poster (1080×1440), read this first. Covers the 3-aesthetic combo (Organic / Analog / Concrete), the 5-page rhythm for a skill post, the render pipeline, and common bugs. / 做小红书封面、海报、社交预览卡（1080×1440）时先读本 skill；包含三美学的组合拳、5 页叙事节奏、渲染流程和踩坑清单。"
---

# lumi-cover-design — 封面生产规范

> 前置依赖：先读 [`lumi-brand`](../brand/SKILL.md)（配色/字体）和 [`lumi-mascot`](../mascot/SKILL.md)（形象选图）
> 工程目录：`learn-xhs/`
> 基础样式：`learn-xhs/templates/_organic.css`

---

## 一张封面长什么样

- **画布**：1080 × 1440（小红书竖版封面比例 3:4）
- **必备四件套**：
  1. 顶部 `.meta`：`LUMI · DAY/SKILL · 分类 · 页码`（等宽字、小、空格大）
  2. 中部主视觉：Lumi + 主要内容（按美学流派变化）
  3. 底部 `.signoff`：`lu·mi` logo + `github.com/NoSuchClass/lumi` + tagline
  4. 纸噪点层 `.paper-noise`（永远要有）

## 5 页叙事节奏（一个 skill 推文）

```
1. cover      (v2 Organic)    · 视觉一击，Lumi 居中
2. problem    (v3 Analog)     · 痛点诊断，Lumi 难过
3. design     (v3 Analog)     · 方法论散文式，Lumi 思考
4. core       (v2 Organic)    · 核心机制，网格/种荚展示
5. usage      (v2 Organic)    · before/after + install CTA
```

**Day 0 开篇**例外：用 v4 Concrete 做 hero 宣言（巨字 `lum·` + 赤陶圆点），共 4 页。

---

## 三种美学模板的何时用

| 流派 | 场景 | 视觉特征 |
|---|---|---|
| **v2 Organic Systems** | 封面、核心、CTA（大多数页面）| Lumi 主角 + 纸质纹理 + 柔软种荚形状 + 手绘连线 |
| **v3 Analog Meditation** | 痛点页、方法论页（需要安静阅读）| 大留白 + Crimson Pro 衬线 + 垂直章节号 + Lumi 小伴侣 |
| **v4 Concrete Poetry** | 开篇宣言、里程碑、合集封面（低频）| 巨字建筑体 + 赤陶圆点/色块 + 极少元素 |

---

## 目录规范

每条 XHS 推文一个文件夹：

```
learn-xhs/posts/{seq}-{skill}/
├── meta.json          # 元信息（标题候选、tag、理论来源、发布状态）
├── draft.md           # 正文草稿
├── covers/            # HTML 源
│   ├── 1-cover.html
│   ├── 2-problem.html
│   ├── 3-design.html
│   ├── 4-core.html
│   └── 5-usage.html
└── images/            # 渲染产物（由 render.js 生成）
    └── *.png
```

`meta.json` 模板参考 [`posts/001-clarify/meta.json`](../../../learn-xhs/posts/001-clarify/meta.json)。

---

## 通用 HTML 骨架

每张封面都从这个模板起：

```html
<!DOCTYPE html>
<html lang="zh-CN"><head><meta charset="UTF-8"><title>{seq} · {page} · {aesthetic}</title>
<link rel="stylesheet" href="../../../templates/_organic.css">
<style>
  /* 只写本页特有的 layout override，不要在这里重定义颜色或字体 */
</style></head>
<body>
<div class="card">
  <div class="paper-noise"></div>

  <div class="meta">
    <div>LUMI <span class="dot-sep">·</span> SKILL {NNN} <span class="dot-sep">·</span> {SKILL}</div>
    <div class="right">{SECTION} · {N} OF {TOTAL}</div>
  </div>

  <!-- 主视觉 -->

  <div class="signoff">
    <div>
      <div class="mark">lu<span class="accent">·</span>mi</div>
      <div class="url">github.com/NoSuchClass/lumi</div>
      <div class="tagline">🌱 一只会陪你成长的小团子，住在你的 Cursor 里</div>
    </div>
    <div class="page">
      {section-slug}
      <span class="num">{N}<span style="color:var(--ink-whisper)">/{TOTAL}</span></span>
    </div>
  </div>
</div>
</body></html>
```

---

## 渲染流程

```bash
cd learn-xhs

# 批量渲染某个 post（seq 前缀匹配）
node scripts/render.js 001         # 渲染 posts/001-clarify/ 下所有 covers

# 批量渲染多个
node scripts/render.js 000 001

# 单张
node scripts/render-one.js posts/001-clarify/covers/1-cover.html posts/001-clarify/images/1-cover.png
```

渲染器用 Playwright，已配置：
- `waitUntil: 'domcontentloaded'`（不等 Google Fonts 的 `load`）
- 拦截 `fonts.googleapis.com` / `fonts.gstatic.com` 的请求
- 视口 1080×1440，`deviceScaleFactor: 2`

---

## 踩坑清单（做之前先过）

1. **禁用 Google Fonts**。只用 `learn-xhs/assets/fonts/` 里 `@font-face` 好的本地字体。Google Fonts 的 `<link>` 会导致渲染时 fallback，一眼 AI 味。
2. **CJK 大字号慎用自动换行**。超过 60px 的中文标题要手动 `<br>` 控制断行，否则会出现"单字悬空在最后一行"的丑断行。
3. **`.lumi` 的 `width` 要看具体 pose**。见 [`lumi-mascot`](../mascot/SKILL.md) 的"尺寸建议"表。
4. **底部页脚可能碰撞主视觉**。`.signoff` 距底 ~180px、`.hero-block` 距底 ~230px——如果主视觉过高，优先缩主视觉而不是挪页脚。
5. **`.meta` 和 `.signoff` 永远不动**。它们是品牌锚点。要调整，改 `_organic.css` 的默认值而不是单页覆盖。
6. **不要临时在某页重新定义配色**。如果一个颜色需要跨多页复用，加进 `_organic.css` 的 `:root` token。
7. **渲染后必须肉眼检查**。尤其关注：Lumi 的姿势/情绪匹配度、断行、页脚是否被主视觉盖住、删除线是否还可读。

---

## 不要做的事（AI 一眼坑）

- ❌ 深蓝/紫色赛博渐变封面
- ❌ "在当今 AI 时代……" 开头
- ❌ 渐变字 + 霓虹阴影（已经从 001-clarify 早期版本删了，别加回来）
- ❌ 毛玻璃卡片 + 彩虹发光边框
- ❌ Emoji 装饰堆砌（🔥💡🚀 等超过 1 个就太多）
- ❌ 用 `rotate()` 来"让 Lumi 显得活泼"——活泼用对的 pose，不用倾斜
- ❌ 每页都把全部 7/35 数字塞进去——数字只在 hero 或 map 页出现一次

---

## 新开一条推文的最小流程

1. 复制 `posts/001-clarify/` 结构 → `posts/{seq}-{newskill}/`
2. 更新 `meta.json`（seq、skill、phase、title_options）
3. 按 5 页节奏写 5 个 HTML（对照 001-clarify 同页作为参照）
4. 选合适的 Lumi pose（见 `lumi-mascot` 的语义表）
5. `node scripts/render.js {seq}`
6. 用检查清单（见 `lumi-brand` 最后一节）过一遍
7. 整体看 5 张能否讲完一个完整故事：**是什么→为什么→怎么做→细节→怎么用**
