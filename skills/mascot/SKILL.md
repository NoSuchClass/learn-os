---
name: lumi-mascot
description: "Lumi · Mascot Usage. When any task needs to place, choose, or generate the Lumi mascot (the cream-colored bun with a sprout) — picking which pose fits an emotion, sizing it on a cover, generating new poses, or fixing mismatched pose/content pairings — read this first. / 只要涉及 Lumi 形象的使用（选姿势、放封面、生成新姿势、修正姿势与情绪不符），先读本 skill。"
---

# lumi-mascot — 形象使用规范

> 生成提示词：[`lumi/assets/mascot/expressions-prompts.md`](../../assets/mascot/expressions-prompts.md)

## 资产位置

- **权威源**：`lumi/assets/mascot/mascot-{pose}.png`（12 张语义命名 + 12 张编号原图）
- **XHS 镜像**：`learn-xhs/assets/mascot/mascot-{pose}.png`（与源同步，封面 HTML 引用此处）

新增/更新姿势时：**两处都要改**。

---

## 12 张姿势 · 语义 → 文件 → 场景

| key | 文件 | 情绪/动作 | 用在 |
|---|---|---|---|
| `hello` | `mascot-hello.png` | 挥手笑眼 | 首次登场、封面 hero、欢迎、install 页右上角 |
| `curious` | `mascot-curious.png` | 歪头 + 头顶 `?` | 反问 skill (clarify)、quiz 系列、提问类 |
| `thinking` | `mascot-thinking.png` | 托腮 + 头顶灯泡 | 方法论/design 页、金字塔原理类 |
| `sad` | `mascot-sad.png` | 坐着耷拉八字眉 | 痛点页、problem 诊断、"这不是你想要的吧" |
| `celebrate` | `mascot-celebrate.png` | 双手欢呼 + 星星 | 里程碑、第一个 PR、phase 完成 |
| `pointing-right` | `mascot-pointing-right.png` | 右手指 | install 页指便签、CTA "看这里" |
| `reviewer` | `mascot-reviewer.png` | 放大镜凑眼 | `002-challenge`（审稿 skill）专属 |
| `rewriter` | `mascot-rewriter.png` | 铅笔 + 红删线纸卷 | `003-deai`（去 AI 味）专属 |
| `reading` | `mascot-reading.png` | 捧书绿书签 | journal / notes / 读书类 skill |
| `running` | `mascot-running.png` | 奔跑 + 动势线 | deadline / quiz 冲刺 / challenge 系列 |
| `sleeping` | `mascot-sleeping.png` | 睡帽 + zzz | 404、夜间模式、休息态彩蛋 |
| `proud` | `mascot-proud.png` | 叉腰立 | 居中主图、system map、系列合集封面 |

---

## 选图铁律

**表情必须匹配文案情绪**：

- 难过的文案 → `sad`，不是 `hello`+`rotate(-6deg)`
- 反问的文案 → `curious`（头顶有问号的那张）
- 思考的文案 → `thinking`（头顶有灯泡的那张）
- CTA 指向某物 → `pointing-right`

**禁用**：
- ❌ `transform: rotate()` 来掩盖姿势不对（改用正确姿势的 PNG）
- ❌ `transform: scaleX(-1)` 翻转（如果需要向左指，用 `pointing-right` 镜像是临时的；长期应重新生成 `pointing-left`）
- ❌ 把 `mascot.png`（旧的初始图）放到新封面里——它只是历史基线，不是可用资产

---

## 尺寸建议

不同姿势 PNG 中 Lumi 占 canvas 比例不同（`hello`/`proud` 留白多，`sad` 紧凑），同一 CSS width 下视觉大小差异明显：

| 场景 | CSS width | 备注 |
|---|---|---|
| 封面主角 (center) | 260–330px | 居中大，`curious` 需要 330 因头顶问号占位 |
| 右下角伴侣 | 180–240px | 陪衬用 |
| 角落点缀 | 110–170px | 纯装饰 |

判断：渲染后 Lumi 身体在视觉上 **应该占封面 18–30%** 高度。低于 15% 显得小，高于 35% 显得挤。

---

## 生成新姿势

需要新姿势时：

1. 在 `expressions-prompts.md` 的 12 张基础上**追加**一条（不要改已有的）
2. Nanobanana，把 `lumi/assets/mascot/mascot.png` 或某张已有 PNG 作为参考图
3. 反面 prompt：`text, watermark, signature, extra limbs, different character, realistic photo, 3D render, dark background, multiple characters`
4. 生成 4 张选 1，保存到 `lumi/assets/mascot/mascot-{newkey}.png`
5. 同步复制到 `learn-xhs/assets/mascot/`
6. 更新本 skill 文件的"12 张姿势"表（变成 13 张）

**一致性验证**：新生成的 Lumi 必须满足：
- 两片绿芽（不是 3 片、不是 1 片）
- 大圆黑眼 + 单颗白高光点（不是彩色、不是两颗高光）
- 粉色圆脸蛋
- 米白身体（不是纯白、不是灰）
- 棕色柔边（不是黑硬边）
- 比例：身高约 body:head = 1:2.5（矮胖，不是瘦长）

任何一项不符 → 重新生成。
