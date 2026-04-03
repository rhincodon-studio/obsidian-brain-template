---
para: area
type: playbook
domain: AI-Governance
status: active
summary: 排程任務清單 — Session-only 排程 + K8s CronWorkflow
---

# Scheduled Tasks

## Session-only Crons

Pod 重啟後遺失，每次新對話必須恢復：

| Agent | Task | Schedule | Purpose |
|-------|------|----------|---------|
| CoS | Issue Triage | daily | Daily issue triage |
| SRE | Monitoring Loop | 1h | Health check, alerts |
| CFO | 工時擷取 | daily | Extract work hours from journal |

## K8s CronWorkflow (Persistent)

持久化排程，pod 重啟後自動恢復：

| Name | Schedule | Purpose |
|------|----------|---------|
| daily-report | 22:00 daily | Daily summary |
| weekly-report | 23:00 Sunday | Weekly summary |

## Setup

新 session 開始時恢復排程（根據實際情況修改）：

```bash
# 範例：每日 Issue Triage
/loop 24h /issue-triage

# 範例：定期 Health Check
/loop 1h "health check"
```
