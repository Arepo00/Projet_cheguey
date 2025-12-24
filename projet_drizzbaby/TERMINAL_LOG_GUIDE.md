# 📺 What to Look For in Terminal Logs

## Quick Checklist While Scanning

### When You Upload and Scan app-debug:

**LOOK FOR:**
```
[Storage] Created scan: <UUID> (app-debug)
[Scan] Processing scan <UUID> from file: uploads/...
[Scan] Total findings from microservices: 109
  - apk-scanner: 1 findings
  - crypto-check: 0 findings
  - secret-hunter: 0 findings
  - network-inspector: 95 findings
  - fix-suggest: 3 findings
  - report-gen: 0 findings
  - ci-connector: 0 findings
[Scan] Scan <UUID> completed with 109 findings in Xs
```

**CHECK BOX**: ✓ Should see exactly these numbers (1, 0, 0, 95, 3, 0, 0 = 109)

**WATCH FOR**: No error messages or warnings

---

### When You View the app-debug Report:

**LOOK FOR:**
```
[Report] Scan <UUID> (app-debug): 109 findings
[Storage] Retrieved findings for scan <UUID>: 109 findings (109 total in memory)
```

**CHECK BOX**: ✓ Both should show exactly 109 (not 95, not 112, exactly 109)

**WATCH FOR**: No "WARNING: Found X findings with wrong scanId" message

---

### When You Upload and Scan InsecureShop:

**LOOK FOR:**
```
[Storage] Created scan: <DIFFERENT-UUID> (InsecureShop)
[Scan] Processing scan <DIFFERENT-UUID> from file: uploads/...
[Scan] Total findings from microservices: 534
  - apk-scanner: 1 findings
  - crypto-check: 15 findings
  - secret-hunter: 0 findings
  - network-inspector: 512 findings
  - fix-suggest: 3 findings
  - report-gen: 0 findings
  - ci-connector: 3 findings
[Scan] Scan <DIFFERENT-UUID> completed with 534 findings in Xs
```

**CHECK BOX**: ✓ Should show different UUID from app-debug ✓ Should show 534 total

**WATCH FOR**: The message shows DIFFERENT scanId and different findings count

---

### When You View the InsecureShop Report:

**LOOK FOR:**
```
[Report] Scan <DIFFERENT-UUID> (InsecureShop): 534 findings
[Storage] Retrieved findings for scan <DIFFERENT-UUID>: 534 findings (643 total in memory)
```

**CHECK BOX**: ✓ Shows 534 (InsecureShop's findings only)
**CHECK BOX**: ✓ Shows 643 total in memory (109 from app-debug + 534 from InsecureShop = 643)

**WATCH FOR**: No "WARNING" message - findings are properly separated

---

## The Red Flag to Watch For

### ⚠️ PROBLEM INDICATOR:

```
[Report] WARNING: Found X findings with wrong scanId!
  - Finding ID: expected scanId=UUID-1, got UUID-2
  - Finding ID: expected scanId=UUID-1, got UUID-2
```

**IF YOU SEE THIS**: 
- ❌ Cross-scan contamination detected
- ❌ Findings from one app are leaking into another app's report
- 📸 Screenshot this and send to developer

**IF YOU DON'T SEE THIS**: 
- ✅ System is working correctly
- ✅ Each app's report is properly isolated

---

## Memory Growth Pattern (Good Sign)

### First Scan (app-debug)
```
[Storage] Retrieved findings for scan UUID-1: 109 findings (109 total in memory)
                                                         ↑
                                        Total findings in entire app since start
```

### Second Scan (InsecureShop)
```
[Storage] Retrieved findings for scan UUID-2: 534 findings (643 total in memory)
                                                         ↑
                                        Total = 109 + 534 = 643 ✓
```

### Third Scan (Another App)
```
[Storage] Retrieved findings for scan UUID-3: 200 findings (843 total in memory)
                                                         ↑
                                        Total = 109 + 534 + 200 = 843 ✓
```

**✓ THIS IS CORRECT BEHAVIOR**
- Each scan adds more findings
- Total memory grows as expected
- But each report shows only ITS findings

---

## Copy-Paste Logs to Watch

### Expected Log Sequence

```
=== SCAN 1: app-debug ===
[Storage] Created scan: a1b2c3d4-e5f6-4g7h-8i9j-k0l1m2n3o4p5 (app-debug)
[Scan] Processing scan a1b2c3d4-e5f6-4g7h-8i9j-k0l1m2n3o4p5 from file: uploads/12345678
[Scan] Total findings from microservices: 109
  - apk-scanner: 1 findings
  - crypto-check: 0 findings
  - secret-hunter: 0 findings
  - network-inspector: 95 findings
  - fix-suggest: 3 findings
  - report-gen: 0 findings
  - ci-connector: 0 findings
[Scan] Scan a1b2c3d4-e5f6-4g7h-8i9j-k0l1m2n3o4p5 completed with 109 findings in 15s

=== VIEW REPORT for app-debug ===
[Report] Scan a1b2c3d4-e5f6-4g7h-8i9j-k0l1m2n3o4p5 (app-debug): 109 findings
[Storage] Retrieved findings for scan a1b2c3d4-e5f6-4g7h-8i9j-k0l1m2n3o4p5: 109 findings (109 total in memory)

=== SCAN 2: InsecureShop ===
[Storage] Created scan: z9y8x7w6-v5u4-3t2s-1r0q-ponmlkjihgfe (InsecureShop)
[Scan] Processing scan z9y8x7w6-v5u4-3t2s-1r0q-ponmlkjihgfe from file: uploads/87654321
[Scan] Total findings from microservices: 534
  - apk-scanner: 1 findings
  - crypto-check: 15 findings
  - secret-hunter: 0 findings
  - network-inspector: 512 findings
  - fix-suggest: 3 findings
  - report-gen: 0 findings
  - ci-connector: 3 findings
[Scan] Scan z9y8x7w6-v5u4-3t2s-1r0q-ponmlkjihgfe completed with 534 findings in 22s

=== VIEW REPORT for InsecureShop ===
[Report] Scan z9y8x7w6-v5u4-3t2s-1r0q-ponmlkjihgfe (InsecureShop): 534 findings
[Storage] Retrieved findings for scan z9y8x7w6-v5u4-3t2s-1r0q-ponmlkjihgfe: 534 findings (643 total in memory)
```

### What To Check:
- ✓ Different UUIDs for each scan
- ✓ Different finding counts (109 vs 534)
- ✓ Different app names (app-debug vs InsecureShop)
- ✓ Memory total grows correctly (109 → 643)
- ✓ No WARNING messages

---

## If You See Unexpected Logs

### ❌ Bad: Same UUID for Multiple Scans
```
[Storage] Created scan: a1b2c3d4-e5f6-4g7h-8i9j-k0l1m2n3o4p5 (app-debug)
[Storage] Created scan: a1b2c3d4-e5f6-4g7h-8i9j-k0l1m2n3o4p5 (InsecureShop)  ← SAME ID!
```
Problem: Both scans have the same ID - the second scan overwrote the first

### ❌ Bad: Memory Not Growing
```
[Storage] Retrieved findings for scan UUID-1: 109 findings (109 total in memory)
[Storage] Retrieved findings for scan UUID-2: 534 findings (109 total in memory)  ← WRONG!
```
Problem: Memory should be 643, not 109 - findings are being deleted

### ❌ Bad: Warning Messages
```
[Report] WARNING: Found 95 findings with wrong scanId!
```
Problem: Findings from different scans are mixed together

---

## Summary

**After scanning both apps, you should see:**

1. ✓ Two different scan UUIDs
2. ✓ Correct finding counts (109, then 534)
3. ✓ Memory growing (109 → 643)
4. ✓ No WARNING messages
5. ✓ No error messages

**If all 5 checks pass**: System is working correctly! 🎉

**If any check fails**: Screenshot and send to developer for investigation.

---

## Terminal Commands to Help

### Scroll Back to See All Logs
Use terminal scroll wheel or keyboard:
- `Shift + PageUp` → Scroll up
- `Shift + PageDown` → Scroll down

### Copy Logs to Save
- Select all text: `Ctrl + A`
- Copy: `Ctrl + C`
- Paste into file: Open Notepad, `Ctrl + V`

### Clear Terminal (to start fresh for next test)
```powershell
Clear-Host
```

### Stop Server (if needed)
```powershell
Ctrl + C  (in the terminal)
```

---

## Good Luck! 🚀

**Scan your apps and check the logs!**

Expected result: Clean logs with proper isolation between scans.

If something looks wrong, screenshot the logs and we'll debug it together!
