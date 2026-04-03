# 外掛大腦系統 — Obsidian 實現

> 弱結構，強智能 | 提示詞驅動，模型升級自動變強

## 設計原則

1. **提示詞驅動** — 核心邏輯在提示詞，模型升級自動變強
2. **弱結構強智能** — 結構極簡，把判斷交給 AI
3. **自我進化** — 系統在對話中學習你的偏好
4. **一魚多吃** — 一次對話四層沉澱
5. **自我維護** — 你是審批者，不是執行者

## 結構

```
.
├── .claude/
│   └── CLAUDE.md              # L1 系統提示詞
├── .obsidian/                 # Obsidian 配置
├── Inbox/
│   └── _index.md              # L2 收集箱說明
├── Projects/
│   └── _index.md              # L2 項目說明
├── Areas/
│   └── _index.md              # L2 責任領域說明
├── Resources/
│   ├── _index.md              # L2 資源庫說明
│   └── *.md                   # L3 資源文件
├── Archives/
│   └── _index.md              # L2 歸檔庫說明
├── Identity/
│   ├── _index.md              # L2 身份畫像說明
│   ├── TELOS.md               # 使命與目標
│   ├── CONTEXT.md             # 近期狀態
│   └── PROFILE.md             # 場景化偏好
├── System/
│   ├── _index.md              # L2 系統說明
│   ├── OPERATING_RULES.md     # 操作規則
│   ├── candidates.md          # 偏好候選池
│   ├── tasks.md               # 任務池
│   ├── pending_approvals.md   # 審批隊列
│   ├── skills.md              # 技能定義
│   └── templates/             # 模板
├── journals/
│   └── YYYY-MM-DD.md          # 每日日記
└── assets/                    # 附件資源
```

## 三層分形

| 層級 | 位置 | 作用 |
|------|------|------|
| L1 | `.claude/CLAUDE.md` | 全局規則，系統的靈魂 |
| L2 | 各目錄 `_index.md` | 局部地圖、成員清單 |
| L3 | 筆記 frontmatter | 內容契約、歸屬定位 |

## 快速開始

1. 用 Obsidian 打開此目錄作為 Vault
2. 填寫 `Identity/TELOS.md` — 你的使命、目標、核心信念
3. 填寫 `Identity/CONTEXT.md` — 你的近期狀態
4. 開始使用！

## 技能

| 技能 | 觸發 | 作用 |
|------|------|------|
| intake | `/intake` | 歸檔 Inbox 內容 |
| maintain | `/maintain` | 系統健康檢查 |
| digest | `/digest` | 處理偏好候選 |
| writing | `/writing` | 啟動寫作模式 |
| reflect | `/reflect` | 週度覆盤 |

## 與 Logseq 的差異

| 特性 | Logseq | Obsidian |
|------|--------|----------|
| 目錄結構 | 全部在 `pages/`，用 `___` 模擬 | 真實子目錄 |
| 元數據 | `para:: value` | YAML frontmatter |
| 單目錄文件數 | 受限（建議 < 3000） | 分散各目錄，無限制 |
| 雲端 | 可選 | 可選（純本地） |

## 驗收標準

- [ ] 打開新對話，AI 是否知道你是誰、在做什麼？
- [ ] 聊完關掉，再開新對話，AI 是否記得上次聊的內容？
- [ ] 連續使用一周，AI 是否開始記住你的偏好？
- [ ] 不做任何維護操作，系統是否會主動告訴你哪裡需要整理？
- [ ] AI 是否無法在你不知道的情況下修改你的使命和信念？
- [ ] 底層模型升級後，不改任何配置，系統是否自動變強？

---

_Template by [Rhincodon Studio](https://github.com/rhincodon-studio)_
