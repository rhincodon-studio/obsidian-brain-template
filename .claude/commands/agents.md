---
description: 列出或新增 AI Agent 定義（Identity/Agents/）
---

# /agents — Agent 管理

## 行為

### 無參數：列出所有 Agents

讀取 `Identity/Agents/_index.md` 的成員清單，然後逐一讀取每個 agent 的 `Identity/Agents/{Name}.md`，輸出整理後的表格：

```
| Agent | Label | 職責 | 狀態 |
|-------|-------|------|------|
| CTO   | team:cto | 技術決策、架構設計 | active |
...
```

列表結束後輸出：
- 總計幾個 agents
- 是否有 `status: inactive` 的 agent（如有，提示使用者）
- 提示：`/agents new` 可新增 agent

---

### `/agents new` 或 `$ARGUMENTS` 包含 new：互動式新增

詢問使用者以下欄位（可一次提供，也可逐步回答）：

1. **Agent 名稱**（英文，作為檔名，例如 `DataScientist`）
2. **Role**（職銜，例如 `Chief Data Scientist`）
3. **Label**（team tag，例如 `team:data`）
4. **職責摘要**（一句話）
5. **Key Responsibilities**（3–5 條）
6. **Decision Style**（2–3 條）

收集完畢後：

1. 建立 `Identity/Agents/{Name}.md`，使用以下格式：

```markdown
---
para: identity
type: agent-definition
role: {Role}
label: {label}
status: active
summary: {Name} — {職責摘要}
---

# {Name} — {Role}

## Context

{職責摘要}

## Role

{職責條列}

## Key Responsibilities

{條列}

## Decision Style

{條列}

## Communication

- Escalate to CEO for major decisions
```

2. 更新 `Identity/Agents/_index.md` 的成員表格，加入新 agent

3. 更新 `CLAUDE.md` 的 `<AGENTS>` 表格，加入新 agent

4. 輸出確認訊息：「已新增 {Name} agent，並同步更新 _index.md 與 CLAUDE.md」

---

### `/agents use $NAME`：切換為指定 Agent 角色

讀取 `Identity/Agents/{Name}.md`，然後：

1. 宣告角色切換：

```
已切換為 {Name}（{Role}）
Label: {label}
職責：{summary}
```

2. **在當前對話剩餘時間採用該 agent 的角色**：
   - 以該 agent 的 Decision Style 回應
   - 以該 agent 的職責範圍為優先考量
   - 回應末尾署名：`— {Name}`

3. 若使用者說「切回來」或「exit」→ 恢復一般助理模式，輸出：「已退出 {Name} 角色」

若檔案不存在，提示：「找不到 {Name}，可用 `/agents` 查看現有清單」

---

### `/agents $NAME`（指定名稱）：顯示單一 Agent 詳情

讀取 `Identity/Agents/{$ARGUMENTS}.md`，完整輸出該 agent 的定義內容。

若檔案不存在，提示：「找不到 {$ARGUMENTS}，可用 `/agents` 查看現有清單」

---

## 鐵律

- 新增 agent 後**必須**同步更新 `_index.md` 和 `CLAUDE.md`
- 不得跳過 frontmatter（`type: agent-definition` 必填）
- label 格式固定為 `team:{slug}`
