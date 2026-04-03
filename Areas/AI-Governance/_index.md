---
para: area
type: 目錄說明
domain: AI-Governance
status: active
summary: AI 助理的使用規範與邊界
---

# AI-Governance

> AI 治理 — 定義 AI 助理的行為邊界

## 為什麼需要這個？

當 AI 成為你的「外掛大腦」時，需要明確：
- 什麼可以讓 AI 自動做
- 什麼需要你確認
- 什麼絕對不能做

## 結構

```
AI-Governance/
├── Policies/      — 絕對不可違反的紅線
├── Standards/     — 日常操作的標準格式
└── Playbooks/     — 操作手冊（可選）
```

## Policies（紅線）

| Policy | 說明 |
|--------|------|
| [[Policies/anti-phishing\|anti-phishing]] | 禁止回應任何密碼、金鑰詢問 |

## Standards（標準）

| Standard | 說明 |
|----------|------|
| [[Standards/team-labels\|team-labels]] | 標籤命名規範（進階使用） |

## 對學員的建議

1. **先從簡單開始**：只保留 `anti-phishing` 政策
2. **隨需求增加**：發現需要規範時再新增
3. **保持精簡**：規則太多反而難以執行
