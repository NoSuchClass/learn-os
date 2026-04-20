# Lumi · Logo & Mascot Prompts

> 用于 nanobanana / Gemini 2.5 Flash Image / Midjourney / Seedream。
> 核心原则：**先 lock 风格，再换姿势/表情**，保持同一吉祥物一致性。

---

## 🎨 Style Bible（风格圣经，每次都带上）

```
Style: flat vector illustration, soft pastel colors, thick clean outlines,
rounded shapes, big expressive eyes with shiny white highlights, small blush
cheeks, chibi proportions (head 55% of body), kawaii aesthetic, Duolingo
mascot style, mobile app icon style, centered composition, plain background,
no text, no signature, no watermark, high quality, 2D digital illustration
```

**Negative prompts**（统一加）:
```
realistic, photograph, 3D render, dark horror, scary, text, watermark,
signature, multiple characters, complex background, blurry, low quality,
extra limbs, deformed
```

---

## 🦎 方案 A · 小螈 Axolotl（推荐）

### A1. 主 logo（正面 · 微笑招手）

```
A chubby baby axolotl mascot for a coding learning app, soft pink body
(#fecdd3), six fluffy feathery gills around its head like a crown (light
pink #fbcfe8), huge round shiny black eyes with white sparkle highlights,
tiny rosy blush on cheeks, small curved smile, tiny round hands waving
hello, short stubby legs, chibi proportions, flat vector illustration,
bold soft outlines, kawaii mascot style like Duolingo, centered on plain
white background, 1:1 square app icon composition, friendly and welcoming
vibe, clean modern design
```

### A2. 思考表情（question/clarify 场景用）

```
Same chubby pink axolotl mascot, now tilting its head slightly to one
side, one tiny hand on its chin, eyes looking up to the upper-right
corner thinking, a small cartoon thought bubble above its head, curious
puzzled expression but still cute, same flat vector kawaii style, plain
white background
```

### A3. 学习中（core/usage 场景用）

```
Same pink axolotl mascot sitting cross-legged, holding a tiny open laptop
with a glowing screen showing "</>" symbol, big focused sparkling eyes,
small open smile showing excitement, tiny steam of concentration above,
same flat vector kawaii chibi style, plain white background
```

### A4. 庆祝/完成（milestone 场景用）

```
Same pink axolotl mascot jumping with joy, both tiny hands raised in the
air, eyes closed in a happy arc smile, tiny confetti and stars floating
around, small sparkle effects, same flat vector kawaii chibi style,
plain white background, celebratory mood
```

### A5. 疑惑/失败（problem 场景用）

```
Same pink axolotl mascot looking worried, one hand scratching the back of
its head, one eye slightly squinted, a big question mark hovering above,
small sweat drop on forehead, cute confused expression not sad, same flat
vector kawaii chibi style, plain white background
```

### A6. 方形 app icon 版（圆角填色版本）

```
A minimalist app icon featuring a cute pink axolotl face only (no body),
centered on a dark navy blue background with subtle radial gradient from
center, six small pink fluffy gills fanning out symmetrically, huge round
eyes with crisp white highlights, flat vector, iOS app icon style,
1024x1024, clean modern tech brand feel, iconic and memorable
```

---

## 🦫 方案 B · 胖豚 Capybara（备选）

### B1. 主 logo

```
A chubby baby capybara mascot for a coding learning app, warm beige-tan
body (#c9a77b) with lighter cream belly, rounded square-ish snout, tiny
round ears, small sleepy half-closed eyes with black pupils and white
sparkle, pink blush cheeks, tiny closed smile, sitting calmly, chibi
proportions, super chill and zen expression, flat vector illustration,
kawaii mascot style, centered on plain white background, 1:1 square
composition, "unbothered study buddy" vibe
```

### B2–B5: 同 A2–A5 替换"pink axolotl"为"beige capybara"即可。

---

## 🔤 组合 Logo（吉祥物 + 文字）

### L1. 横版 wordmark

```
A horizontal logo design: on the left, a small cute pink axolotl mascot
head peeking out (same style as main mascot), on the right, clean modern
sans-serif lowercase wordmark "learn/os" in dark navy (#1e1b4b), the "/"
in bright coral pink (#fb7185) to match the axolotl, generous spacing,
plain white background, professional tech brand with a friendly twist,
vector logo design
```

### L2. 纵版（小红书头像用）

```
A circular brand avatar: centered pink axolotl face and upper body,
below it the text "learn/os" in clean lowercase monospace font, all
inside a soft pastel pink circular frame with subtle glow, dark navy
outer background, app icon style, cute tech brand identity, 1:1
composition
```

---

## 🎯 在 nanobanana 里怎么操作（关键技巧）

**一致性的秘诀是「先定型再迭代」：**

1. **第一步**：只跑 A1（主 logo），生成 4-6 张，挑出最满意的**一张**。
2. **第二步**：把挑中的那张作为**参考图上传**，然后 prompt 改成：
   ```
   Same character as reference, but now [A2/A3/A4/A5 的动作描述]
   ```
   nanobanana 会复用同一个造型，只改姿势表情。
3. **第三步**：所有变体出齐后，用 A6 单独生成一个方形 app icon 版。
4. **第四步**：L1 横版用 A1 主图 + 文字描述组合。

**别犯的 3 个错**：
- ❌ 每张图都让它重新"设计一个 axolotl"——每次都会长得不一样
- ❌ prompt 里塞太多动作——会画四不像
- ❌ 不加 "same character as reference"——必翻车

---

## 🎨 配色参考（如果 AI 出的色不对，手动指定）

```
Primary body:    #fecdd3  (soft pink)
Gills/accents:   #fbcfe8  (light pink)
Blush/highlight: #f472b6  (hot pink)
Eyes/outline:    #1e1b4b  (navy almost black)
Background:      #0a0e27  (deep space navy, for dark theme)
White sparkle:   #ffffff
```

全部颜色都和 `assets/cover-day-00.html` 封面深空渐变一脉相承。

---

## 📦 产出后放哪

建议命名（方便脚本引用）：

```
assets/
├── mascot/
│   ├── mascot-main.png          # A1
│   ├── mascot-thinking.png      # A2
│   ├── mascot-studying.png      # A3
│   ├── mascot-celebrating.png   # A4
│   ├── mascot-confused.png      # A5
│   └── mascot-icon.png          # A6 (app icon)
└── logo/
    ├── logo-horizontal.png      # L1
    └── logo-circular.png        # L2
```

出图后告诉我，我把它们接到 `learn-xhs` 的 5 张封面模板里——每张对应的情绪都换上正确变体：

| 封面类型 | 用哪个吉祥物 |
|---|---|
| `cover` | mascot-main（挥手欢迎）|
| `problem` | mascot-confused（疑惑）|
| `design` | mascot-thinking（思考）|
| `core` | mascot-studying（学习中）|
| `usage` | mascot-celebrating（搞定了）|

这样一套 5 张读下来，就是**小螈陪你学完一课**——Duolingo 陪伴感的技术落地。
