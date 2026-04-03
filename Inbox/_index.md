---
para: para-index
type: 目錄說明
status: active
summary: 輸入收集箱，未分類內容暫存
---

# Inbox

> 輸入收集箱 — 所有新內容的入口

## 職責

- 暫存未分類的想法、筆記、資料
- 等待 AI 分析後歸檔到正確的 PARA 位置
- 定期清空，不應長期堆積

## 成員

- [[example-note]] — 範例筆記（執行 `/intake` 後會被歸類）

## 工作流

```
1. 新內容先進 Inbox
        ↓
2. 執行 /intake
        ↓
3. AI 分析內容本質
        ↓
4. 自動歸類到 Projects / Areas / Resources
        ↓
5. Inbox 清空
```

## 使用建議

- **低摩擦**：想到什麼就丟進來，不用考慮分類
- **定期清理**：每天或每週執行 `/intake`
- **信任 AI**：讓 AI 判斷歸屬，不確定時會詢問你
