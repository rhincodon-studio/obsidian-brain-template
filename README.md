# 外掛大腦系統 — Obsidian + AI 實現

> 弱結構，強智能 | 讓 AI 成為你的第二大腦

## 這是什麼？

這是一個 Obsidian Vault 模板，結合 AI 助理（如 Claude）來管理你的知識。

**核心理念**：
- 你負責輸入（隨手記錄）
- AI 負責整理（分類、關聯、提醒）
- 系統會學習你的偏好，越用越懂你

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
| `/intake` | 整理 Inbox，自動分類到正確位置 |
| `/maintain` | 健康檢查，找出需要整理的地方 |
| `/digest` | 處理 AI 觀察到的偏好，確認後生效 |
| `/writing` | 載入你的寫作風格，幫你寫文章 |
| `/reflect` | 週度覆盤，聚合一週的碎片成洞察 |

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

## 延伸閱讀

- [[Resources/外掛大腦方法論]] — 本系統的設計原理

## 致謝

本系統設計靈感來自 [@Aoyi21](https://x.com/Aoyi21) 的[外掛大腦系統文章](https://x.com/Aoyi21/status/2039260164252180797)。

---

_Template by [Rhincodon Studio](https://github.com/rhincodon-studio)_
