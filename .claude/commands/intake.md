# /intake — 歸檔 Inbox 內容

掃描 Inbox/ 目錄，分析每篇內容，判斷 PARA 歸屬，自動歸檔。

## 執行步驟

1. **掃描 Inbox/**
   - 列出 `Inbox/` 下所有 `.md` 檔案（排除 `_index.md`）
   - 若 Inbox 為空，回報「Inbox 已清空，無待處理內容」並結束

2. **逐篇分析**
   對每個檔案：
   - 讀取內容
   - 分析本質：這是什麼類型的內容？
   - 判斷 PARA 歸屬：
     - 有明確目標和截止日期 → `Projects/`
     - 持續維護的領域 → `Areas/`
     - 可複用的參考資料 → `Resources/`
     - 已完成但有保留價值 → `Archives/`

3. **補全 Frontmatter**
   ```yaml
   ---
   para: [project|area|resource|archive]
   domain: [領域名稱]
   type: [內容類型]
   status: active
   summary: [一句話說明]
   ---
   ```

4. **移動檔案**
   - 將檔案移動到目標目錄
   - 若目標目錄有子目錄結構，判斷最適合的位置

5. **更新說明檔**
   - 更新目標目錄的 `_index.md`，將新檔案加入成員清單

6. **輸出報告**
   ```
   ## Intake 完成報告

   處理 X 個檔案：
   - 檔案A.md → Projects/專案名/
   - 檔案B.md → Resources/方法論/
   - 檔案C.md → Areas/AI-Governance/

   Inbox 剩餘：Y 個檔案
   ```

## 設計原則

- **弱結構強智能**：不用規則判斷歸類，用 AI 分析內容本質
- **一鍵維護**：使用者只需觸發，不需手動分類

## 注意事項

- 不確定歸屬時，詢問使用者
- 若檔案已有完整 frontmatter，尊重原有設定
- 移動後執行迴圈檢查，確保一致性
