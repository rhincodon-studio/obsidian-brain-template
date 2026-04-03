---
marp: true
theme: default
paginate: true
backgroundColor: #1a1a2e
color: #eaeaea
style: |
  section {
    font-family: 'Noto Sans TC', 'Helvetica Neue', sans-serif;
  }
  h1, h2 {
    color: #00d9ff;
  }
  h1 {
    font-size: 2.5em;
  }
  code {
    background: #16213e;
    color: #00d9ff;
  }
  a {
    color: #00d9ff;
  }
  blockquote {
    border-left: 4px solid #00d9ff;
    padding-left: 1em;
    color: #aaa;
  }
  table {
    font-size: 0.85em;
  }
  th {
    background: #16213e;
  }
---

# 外掛大腦系統
## Obsidian + Claude Code

> 弱結構，強智能 | 提示詞驅動，模型升級自動變強

---

# 為什麼需要外掛大腦？

- **AI 沒有長期記憶** — 每次對話從零開始
- **知識散落各處** — 筆記、文件、對話記錄
- **重複解釋自己** — 每次都要說明背景

### 解決方案
讓 AI 能讀取你的知識庫，**記住你是誰、在做什麼**

---

# 設計原則

| 原則 | 說明 |
|------|------|
| **提示詞驅動** | 核心邏輯在提示詞，模型升級自動變強 |
| **弱結構強智能** | 結構極簡，把判斷交給 AI |
| **自我進化** | 系統在對話中學習你的偏好 |
| **一魚多吃** | 一次對話四層沉澱 |
| **自我維護** | 你是審批者，不是執行者 |

---

# 三層分形架構

```
L1  .claude/CLAUDE.md     → 全局規則（系統的靈魂）
L2  各目錄 _index.md      → 局部地圖（成員清單）
L3  筆記 frontmatter      → 內容契約（歸屬定位）
```

### 分形自相似
- L1 是 L2 的折疊
- L2 是 L3 的折疊
- 無需另外維護索引

---

# 目錄結構 (PARA)

```
.
├── Inbox/          # 收集箱
├── Projects/       # 專案（有截止日期）
├── Areas/          # 責任領域（持續維護）
├── Resources/      # 資源庫（可複用）
├── Archives/       # 歸檔庫
├── Identity/       # 身分畫像
├── System/         # 系統運行
└── journals/       # 每日日誌
```

---

# Identity 層 — 讓 AI 認識你

| 檔案 | 用途 |
|------|------|
| `TELOS.md` | 使命、目標、核心信念 |
| `CONTEXT.md` | 近期狀態、進行中項目 |
| `PROFILE.md` | 場景化偏好（經確認） |

### 重要原則
> Identity 任何變更**必須人工審核**
> AI 不能偷偷改變你的信念

---

# System 層 — 自我維護

| 檔案 | 用途 |
|------|------|
| `tasks.md` | 任務池 |
| `candidates.md` | 偏好候選池（AI 觀察到的） |
| `OPERATING_RULES.md` | 操作規則 |
| `pending_approvals.md` | 審批隊列 |

### 偏好三色標記
- 🔴 跨多次對話重複 → 高優先
- 🟡 活躍期相關
- 🟢 單次觀察待驗證

---

# 內建技能

| 技能 | 觸發 | 作用 |
|------|------|------|
| intake | `/intake` | 歸檔 Inbox 內容 |
| maintain | `/maintain` | 系統健康檢查 |
| digest | `/digest` | 處理偏好候選 |
| writing | `/writing` | 啟動寫作模式 |

---

# 快速開始

## Step 1: 下載或 Clone Template

**方法 A：GitHub 網頁**
1. 前往 `github.com/rhincodon-studio/obsidian-brain-template`
2. 點擊 **"Use this template"** → Create a new repository
3. 命名為 `my-brain`，設為 Private
4. Clone 到本地：`git clone <your-repo-url>`

**方法 B：命令行**
```bash
gh repo create my-brain \
  --template rhincodon-studio/obsidian-brain-template --private
gh repo clone my-brain
```

---

# 快速開始

## Step 2: 安裝 Claude Code

```bash
# macOS / Linux
npm install -g @anthropic-ai/claude-code

# 或使用 Homebrew (macOS)
brew install claude-code
```

驗證安裝：
```bash
claude --version
```

需要設定環境變數 `ANTHROPIC_API_KEY`

---

# 快速開始

## Step 3: 用 Obsidian 打開（可選）

1. 下載 [Obsidian](https://obsidian.md)
2. Open folder as vault → 選擇 clone 下來的目錄
3. 信任並啟用插件（如果有提示）

> Obsidian 不是必要的，但可以讓你更方便地瀏覽和編輯筆記

---

# 快速開始

## Step 4: 填寫 Identity

編輯 `Identity/TELOS.md`：

```markdown
## 使命
- M0: 打造能自我進化的知識系統

## 目標
- G0: 讓 AI 成為真正的認知夥伴

## 核心信念
- B0: 弱結構 + 強智能 = 可持續演進
```

---

# 快速開始

## Step 5: 啟動 Claude Code

```bash
# 進入 vault 目錄
cd my-brain

# 啟動 Claude Code
claude
```

AI 會自動載入 `.claude/CLAUDE.md`，認識你的知識庫結構

---

# 驗收標準

- [ ] 打開新對話，AI 是否知道你是誰？
- [ ] 聊完關掉，再開新對話，AI 是否記得？
- [ ] 連續使用一周，AI 是否記住你的偏好？
- [ ] 系統是否會主動告訴你哪裡需要整理？
- [ ] AI 是否無法偷偷修改你的使命和信念？
- [ ] 模型升級後，系統是否自動變強？

---

# 進階：多 Agent 協作

Template 包含 6 個 Agent 定義：

| Agent | 職責 |
|-------|------|
| CTO | 技術決策、架構設計 |
| CFO | 財務管理、成本管控 |
| CoS | CEO 接觸點、Issue 路由 |
| SRE | 維運、K8s、監控 |
| Strategist | 策略挑戰、壓力測試 |
| Legal | 合約審查、智財保護 |

---

# 致謝

本系統設計靈感來自 [@Aoyi21](https://x.com/Aoyi21) 的外掛大腦系統文章

---

# 開始使用

## GitHub Template
**github.com/rhincodon-studio/obsidian-brain-template**

```bash
# 1. Clone template
gh repo create my-brain \
  --template rhincodon-studio/obsidian-brain-template --private

# 2. 安裝 Claude Code
npm install -g @anthropic-ai/claude-code

# 3. 啟動
cd my-brain && claude
```

---

<!-- _class: lead -->

# 讓 AI 成為你的認知夥伴

> 弱結構，強智能
> 提示詞驅動，模型升級自動變強
