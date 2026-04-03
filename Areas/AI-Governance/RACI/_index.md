---
para: area
type: 目錄說明
domain: AI-Governance/RACI
status: active
summary: 責任矩陣 — 定義各 Agent 在不同事項的角色
---

# RACI

> 責任矩陣 — Responsible, Accountable, Consulted, Informed

## RACI 定義

| 角色 | 說明 |
|------|------|
| **R** (Responsible) | 負責執行 |
| **A** (Accountable) | 負最終責任 |
| **C** (Consulted) | 需要諮詢 |
| **I** (Informed) | 需要通知 |

## 組織 RACI

| 事項 | CTO | CFO | CoS | SRE | Strategist | Legal |
|------|-----|-----|-----|-----|------------|-------|
| 技術架構 | A/R | I | I | C | C | - |
| 財務決策 | C | A/R | I | - | C | - |
| Issue 路由 | I | I | A/R | I | - | - |
| K8s 維運 | C | I | I | A/R | - | - |
| 策略規劃 | C | C | I | - | A/R | - |
| 合約審查 | I | C | I | - | - | A/R |
| 成本優化 | C | A/R | I | C | - | - |
| 安全事故 | C | I | I | A/R | - | C |
