# stop-audit: 對話結束時自動建立日常碎片檔和 session log stub
# 實際內容由 AI 在對話結束前依 SESSION_PROTOCOL 填入

$Date = Get-Date -Format "yyyy-MM-dd"
$DateTime = Get-Date -Format "yyyy-MM-dd-HHmm"

# 確保目錄存在
New-Item -ItemType Directory -Path "System/working-memory/daily" -Force | Out-Null
New-Item -ItemType Directory -Path "System/session_logs" -Force | Out-Null

# 建立當日碎片檔（若已存在則不覆蓋）
$DailyFile = "System/working-memory/daily/$Date.md"
if (-not (Test-Path $DailyFile)) {
    @"
---
para: system
type: daily-fragment
date: $Date
status: active
summary: $Date 日常碎片
---

# $Date 碎片

## 洞察

## 任務進度

## 偏好觀察
"@ | Set-Content -Path $DailyFile -Encoding UTF8
    Write-Host "[stop-audit] 建立碎片檔：$DailyFile"
}

# 建立 session log stub
$SessionFile = "System/session_logs/$DateTime.md"
@"
---
para: system
type: session-log
date: $DateTime
status: active
summary: Session $DateTime
---

# Session $DateTime

<!-- 對話摘要由 AI 在對話結束前寫入 -->
"@ | Set-Content -Path $SessionFile -Encoding UTF8

Write-Host "[stop-audit] 建立 session log：$SessionFile"