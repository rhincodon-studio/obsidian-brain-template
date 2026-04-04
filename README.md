# 外掛大腦系統 — Obsidian + AI 實現

> 弱結構，強智能 | 讓 AI 成為你的第二大腦

## 使用哲學：AI 是電動牙刷，不是毒品

電動牙刷讓你刷牙刷得更乾淨，但你還是要自己刷。它不會替你思考，只是放大你的能力。用久了，你的牙齒更健康——而不是更依賴牙刷。

**毒品的問題**：用了之後自己不能思考，停用就崩潰，判斷力轉移給外部物質。

這個系統的設計目標是電動牙刷：

- **你的邏輯，AI 執行** — 系統學習你怎麼分類、怎麼思考，用你的標準幫你整理，而不是套用 AI 的預設框架
- **用得越久，你越清楚自己** — AI 幫你把碎片整理成可見的模式，讓你發現自己的思維習慣
- **拔掉 AI，你的知識還在** — 所有內容都是你的 Markdown 檔案，格式開放，不鎖定任何平台

> 如果你發現自己「沒有 AI 就不知道怎麼整理筆記」，這個系統就失敗了。

## 這是什麼？

這是一個 Obsidian Vault 模板，結合 AI 助理（如 Claude）來管理你的知識。

**核心理念**：
- 你負責輸入（隨手記錄）
- AI 負責整理（分類、關聯、提醒）
- 系統學習你的邏輯，越用越像你

## 快速開始

### Step 1: 設定 Vault

1. 下載或 clone 這個 repo
2. 用 Obsidian 打開資料夾作為 Vault
3. 信任外掛（如果有提示）

### Step 2: 定義自己

填寫這兩個檔案，讓 AI 認識你：

1. **[[Identity/TELOS]]** — 你的使命和目標
2. **[[Identity/CONTEXT]]** — 你現在在做什麼

### Step 3: 開始使用

- 想到什麼 → 丟進 `Inbox/`
- 每天記錄 → 用 Daily Note（`Ctrl/Cmd + N`）
- 定期整理 → 執行 `/intake`

## 目錄結構

```
.
├── Inbox/          # 收集箱 — 未分類內容
├── Projects/       # 項目 — 有截止日期的事
├── Areas/          # 領域 — 持續維護的責任
├── Resources/      # 資源 — 可複用的知識
├── Archives/       # 歸檔 — 已完成的內容
├── Identity/       # 身份 — 你是誰（AI 讀取）
├── System/         # 系統 — 規則和任務
├── journals/       # 日誌 — 每日記錄
└── assets/         # 附件 — 圖片和檔案
```

## 核心技能

在 AI 對話中輸入這些指令：

| 指令 | 作用 |
|------|------|
| `/journal` | 建立今日工作日誌，自動將洞察寫入 Inbox |
| `/intake` | 整理 Inbox，自動分類到正確位置 |
| `/reflect` | 週度覆盤，聚合一週的日誌成洞察與週報 |
| `/maintain` | 健康檢查，找出需要整理的地方 |
| `/digest` | 處理 AI 觀察到的偏好，確認後生效 |
| `/writing` | 載入你的寫作風格，幫你寫文章 |

## 日常工作流

```
每天
  /journal
    → journals/YYYY-MM-DD.md   （原始日誌）
    → Inbox/YYYY-MM-DD-journal.md  （可沉澱的洞察）

有空時
  /intake
    → 將 Inbox 內容分類到 Projects / Areas / Resources

每週
  /reflect
    → 聚合 7 天日誌 → 週報 + 識別偏好模式
```

## 三層架構

```
L1  .claude/CLAUDE.md     → 系統規則（AI 讀取）
L2  各目錄 _index.md       → 目錄說明
L3  筆記 frontmatter       → 內容分類
```

這種分形結構讓 AI 能快速理解你的知識庫。

## 設計原則

### 1. 弱結構，強智能

不用記複雜規則，讓 AI 判斷：
- 這篇筆記該歸到哪？→ AI 分析
- 這兩篇內容有關聯嗎？→ AI 判斷
- 我有沒有寫過類似的？→ AI 搜尋

### 2. 自我進化

AI 會在對話中學習你的偏好：
- 觀察到你喜歡簡潔 → 記下來
- 觀察到你討厭表情符號 → 記下來
- 累積到一定程度 → 問你要不要正式採納

### 3. 你是審核者

重要決定需要你點頭：
- 修改 Identity → 需要審批
- 晉升偏好 → 需要確認
- AI 提議，你決定

## Frontmatter 格式

每篇筆記用 YAML frontmatter 標記分類：

```yaml
---
para: project          # PARA 歸屬
domain: 學習           # 領域
type: 專案             # 類型
status: active         # 狀態
summary: 一句話說明    # 摘要
---
```

## 推薦外掛

這個模板使用 Obsidian 內建功能，但以下外掛可以增強體驗：

- **Dataview** — 動態查詢筆記
- **Calendar** — 日曆視圖看 journal
- **Templater** — 進階模板功能

## 驗收標準

使用一段時間後，檢查這些：

- [ ] 新對話開始時，AI 知道你在做什麼？
- [ ] 聊完再開新對話，AI 記得之前的內容？
- [ ] 用一週後，AI 開始記住你的偏好？
- [ ] 不維護時，系統會主動告訴你需要整理？
- [ ] AI 無法在你不知情的情況下改變你的使命？

## 常見問題

### Q: 我需要手動分類筆記嗎？

不用。丟進 Inbox，執行 `/intake`，AI 會幫你分類。

### Q: AI 會自動改我的設定嗎？

不會。AI 觀察到的偏好會先進入候選池，需要你執行 `/digest` 確認後才會生效。Identity 相關的變更一定需要審批。

### Q: 我可以刪除範例檔案嗎？

可以。`example-project.md` 和 `example-note.md` 只是展示用途，可以放心刪除。

### Q: 我在學某個科目，每天有零散進度，筆記要放哪？

取決於你記的是什麼：

| 內容 | 放哪裡 |
|------|--------|
| 今天學了什麼、不懂的地方 | `journals/YYYY-MM-DD.md` |
| 整理好的概念、公式、可複用知識 | `Resources/科目名/` |
| 準備某次考試（有截止日期） | `Projects/` |
| 持續學習這個科目（無截止日期） | `Areas/` |

最簡單的日常流程：每天隨手記進 `journals/`，累積幾天後整理成可複用筆記放進 `Resources/`。

### Q: 筆記很亂，不知道怎麼整理，可以直接丟進去嗎？

可以。先丟進 `Inbox/`，然後執行 `/intake` 讓 AI 分類。  
如果你有建立對應的 AI Agent（例如化學老師），還可以請它幫你補全缺漏、修正錯誤，再歸檔到 `Resources/`。

亂的筆記比沒有筆記好。**讓 AI 負責整理，你只需要負責輸入。**

### Q: 我可以讓 AI 扮演特定角色嗎（例如老師、顧問）？

可以。在 `Identity/Agents/` 建立一個 Markdown 檔案定義角色：

```markdown
---
type: agent-definition
role: 角色名稱
label: team:your-label
---

# 角色名稱

## Role
- 職責一
- 職責二

## Teaching/Communication Style
- 風格描述
```

對話時在開頭加上 label 即可切換：

```
team:your-label  我今天遇到這個問題，幫我解釋...
```

不加 label 就回到預設的通用助理模式。Agent 定義檔同時也是你的知識庫成員，可以被 `/intake` 和 `/maintain` 管理。

## 延伸閱讀

- [[Resources/外掛大腦方法論]] — 本系統的設計原理

## 致謝

本系統設計靈感來自 [@Aoyi21](https://x.com/Aoyi21) 的[外掛大腦系統文章](https://x.com/Aoyi21/status/2039260164252180797)。

---

_Template by [Rhincodon Studio](https://github.com/rhincodon-studio)_
