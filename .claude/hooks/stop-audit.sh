#!/bin/bash
# stop-audit: 對話結束時自動建立日常碎片檔和 session log stub
# 實際內容由 AI 在對話結束前依 SESSION_PROTOCOL 填入

DATE=$(date +%Y-%m-%d)
DATETIME=$(date +%Y-%m-%d-%H%M)

# 確保目錄存在
mkdir -p "System/working-memory/daily"
mkdir -p "System/session_logs"

# 建立當日碎片檔（若已存在則不覆蓋）
DAILY_FILE="System/working-memory/daily/$DATE.md"
if [ ! -f "$DAILY_FILE" ]; then
  cat > "$DAILY_FILE" << EOF
---
para: system
type: daily-fragment
date: $DATE
status: active
summary: $DATE 日常碎片
---

# $DATE 碎片

## 洞察

## 任務進度

## 偏好觀察
EOF
  echo "[stop-audit] 建立碎片檔：$DAILY_FILE"
fi

# 建立 session log stub
SESSION_FILE="System/session_logs/$DATETIME.md"
cat > "$SESSION_FILE" << EOF
---
para: system
type: session-log
date: $DATETIME
status: active
summary: Session $DATETIME
---

# Session $DATETIME

<!-- 對話摘要由 AI 在對話結束前寫入 -->
EOF

echo "[stop-audit] 建立 session log：$SESSION_FILE"
