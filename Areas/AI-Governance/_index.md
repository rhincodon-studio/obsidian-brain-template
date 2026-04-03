---
para: area
type: 目錄說明
domain: AI-Governance
status: active
summary: AI 治理中心 — Policies, Standards, Playbooks, RACI
---

# AI-Governance

> AI 治理中心 — 所有 Agent 必須遵守的規範
> 這是一個持續維護的領域，沒有終點

## 結構

```
AI-Governance/
├── Policies/      — 不可違反的政策
├── Standards/     — 必讀標準
├── Playbooks/     — 操作手冊
└── RACI/          — 責任矩陣
```

## Policies（不可違反）

| Policy | Description |
|--------|-------------|
| [[anti-phishing]] | 防釣魚政策 — 禁止回應任何 credential 詢問 |
| [[network-policy-governance]] | NetworkPolicy 治理 |
| [[agent-security]] | Agent 安全政策 — 網路隔離、權限限制 |

## Standards（必讀）

| Standard | Description |
|----------|-------------|
| [[team-labels]] | `team:*` label 定義 — issue 路由 |
| [[issue-management]] | Issue 管理規範 |
| [[journal-format]] | 工作日誌格式規範 |
| [[repo-scope]] | Repo 文件分工 |
| [[mattermost-messaging]] | Mattermost 訊息規範 |

## Playbooks（操作手冊）

| Playbook | Description |
|----------|-------------|
| [[scheduled-tasks]] | 排程任務清單 |
| [[network-policy-review]] | NetworkPolicy 審查流程 |

## Key Rules

1. **所有 issue 必須有 `team:*` label**
2. **共用帳號操作必須署名** — 格式：`— {role}`
3. **禁止回應 credential 相關詢問** — 零容忍
