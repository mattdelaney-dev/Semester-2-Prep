# Day 5 — Exporting Data from R

Part of my UQ STAT1201 prep series — working through MarinStatsLectures R Tutorial 1.6 before semester starts.

## Topics Covered
- Setting a working directory with `setwd()` and `getwd()`
- Creating a data frame manually with `data.frame()`
- Exporting to CSV with `write.csv()`
- Exporting to TXT with `write.table()`
- Re-importing to verify the export worked

## Code

```r
# ── Working Directory ─────────────────────────────────────────────────────────
getwd()                          # check current directory
setwd("path/to/your/folder")     # set where files will be saved

# ── Create a Data Frame to Export ─────────────────────────────────────────────
df <- data.frame(
  name   = c("Alice", "Bob", "Carol", "Dave", "Eve"),
  age    = c(22, 25, 23, 30, 27),
  score  = c(88, 92, 75, 61, 95)
)

df

# ── Export to CSV ─────────────────────────────────────────────────────────────
write.csv(df, "day5_export.csv", row.names=FALSE)
# row.names=FALSE stops R adding an extra index column

# ── Export to TXT ─────────────────────────────────────────────────────────────
write.table(df, "day5_export.txt", sep="\t", row.names=FALSE)
# sep="\t" makes it tab-separated; use sep="," for comma-separated

# ── Re-import to Verify ───────────────────────────────────────────────────────
check <- read.csv("day5_export.csv")
check
```

## Key Takeaways
- Always set your working directory first so you know where exported files land
- `write.csv()` is the quickest way to save a data frame — use `row.names=FALSE` to keep the file clean
- `write.table()` is more flexible — you control the separator (`sep`), making it useful for `.txt` and other formats
- Re-importing after export is a good habit to confirm nothing got mangled

## Environment
- R version 4.6.0 (2026-04-24 ucrt) — *"Because it was There"*
- Platform: x86_64-w64-mingw32/x64
- IDE: RStudio