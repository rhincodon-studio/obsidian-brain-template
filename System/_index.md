---
para: para-index
type: 目錄說明
status: active
summary: 系統運行支持
---

# System

> 系統運行支持 — 對用戶透明的基礎設施

## 職責

- 存放操作規則和約定
- 管理偏好候選池
- 追蹤任務和審批隊列
- 記錄會話日誌和每日碎片

## 成員

- [[OPERATING_RULES]] — 操作性規則
- [[candidates]] — 偏好候選池
- [[tasks]] — 任務池
- [[pending_approvals]] — 審批隊列
- [[skills]] — 技能定義

## 子目錄

- `templates/` — 模板文件（Daily Note 等）
- `session_logs/` — 完整會話存檔（AI 自動寫入）

## 偏好學習流程

```
對話中 AI 觀察到偏好
        ↓
寫入 candidates.md（不打斷你）
        ↓
執行 /digest
        ↓
你確認後晉升到 PROFILE 或 OPERATING_RULES
```
