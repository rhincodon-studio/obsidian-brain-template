---
para: area
type: standard
domain: AI-Governance
status: active
summary: team:* label 定義 — issue 路由到哪個 agent
---

# Team Labels Registry

Last updated: 2026-04-02

## Overview

所有 repo 使用統一的 `team:*` label 來標記 issue 的負責 team。

## Label Registry

| Label | Role | Color |
|-------|------|-------|
| `team:cto` | Chief Technology Officer | `#8B0000` |
| `team:cfo` | Chief Financial Officer | `#DAA520` |
| `team:cos` | Chief of Staff 秘書長 | `#E8D5B7` |
| `team:sre` | Site Reliability Engineering | `#D93F0B` |
| `team:strategist` | 高階策略合夥人 | `#6B8E23` |
| `team:legal` | Legal Counsel 法務顧問 | `#808000` |
| `team:dev` | Development (CICADA AI Worker) | `#4169E1` |

## Notes

1. **`team:dev`** — 代表 CICADA Issue Worker（AI agent），不是人類 team member
2. **一個 issue 可以有多個 team label** — 代表需要多方協作

## 使用規則

1. **跨 team 請求** — 必須加上目標 team label
2. **所有 issue 必須至少有一個 team label** — 無 label 的 issue 不會被路由
3. **新增/修改 label 時同步更新此文件和所有 repos**
