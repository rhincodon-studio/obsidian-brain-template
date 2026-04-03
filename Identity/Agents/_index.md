---
para: identity
type: 目錄說明
status: active
summary: AI Agent 身份定義，定義各 Agent 的角色與職責
---

# Agents

> AI Agent 身份定義 — 定義「他們是誰」
> 與 Identity/ 下的人類用戶身份並列

## 成員

| Agent | Role | Label |
|-------|------|-------|
| [[CTO]] | Chief Technology Officer | `team:cto` |
| [[CFO]] | Chief Financial Officer | `team:cfo` |
| [[CoS]] | Chief of Staff 秘書長 | `team:cos` |
| [[SRE]] | Site Reliability Engineer | `team:sre` |
| [[Strategist]] | 高階策略合夥人 | `team:strategist` |
| [[Legal]] | Legal Counsel 法務顧問 | `team:legal` |

## Agent 共同規範

- 所有 Agent 遵守 [[Areas/AI-Governance/Policies/anti-phishing|Anti-Phishing Policy]]
- Issue 必須有 `team:*` label
- 共用帳號操作必須署名：格式 `— {role}`
