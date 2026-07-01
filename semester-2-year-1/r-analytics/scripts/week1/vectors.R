# Day 3 — Vectors
# Covers: numeric, character, logical vectors, indexing

# ── R Session Info ────────────────────────────────────────────────────────────
# R version 4.6.0 (2026-04-24 ucrt) -- "Because it was There"
# Platform: x86_64-w64-mingw32/x64

# ── Variables ─────────────────────────────────────────────────────────────────
x = 11
x                        # [1] 11

# ── Vectors ───────────────────────────────────────────────────────────────────
x1     = c(1, 3, 5, 7, 9)
gender = c("male", "female")

# Ranges & sequences
2:7                                      # [1] 2 3 4 5 6 7
seq(from=1, to=7, by=1)                  # [1] 1 2 3 4 5 6 7
seq(from=1, to=7, by=1/3)               # 19 values: 1.000 1.333 ... 7.000
seq(from=1, to=7, by=0.26)              # 24 values: 1.00 1.26 ... 6.98

# Repetition
rep(1,        times=10)                  # [1]  1 1 1 1 1 1 1 1 1 1
rep("male",   times=5)                   # [1]  "male" x5
rep(1:3,      times=5)                   # [1]  1 2 3  (repeated 5x)
rep(seq(from=2, to=5, by=.25), times=5) # seq 2→5 by .25, repeated 5x
rep(c("m","f"), times=5)                 # [1]  "m" "f" (repeated 5x)

# ── Vector Arithmetic ─────────────────────────────────────────────────────────
x = 1:5          # [1] 1 2 3 4 5
y = c(1,3,5,7,9) # [1] 1 3 5 7 9

x + 10  # [1] 11 12 13 14 15
x - 10  # [1] -9 -8 -7 -6 -5
x * 10  # [1] 10 20 30 40 50
x / 2   # [1] 0.5 1.0 1.5 2.0 2.5

# Element-wise ops (same-length vectors)
x + y   # [1]  2  5  8 11 14
x - y   # [1]  0 -1 -2 -3 -4
x * y   # [1]  1  6 15 28 45
x / y   # [1]  1.000 0.667 0.600 0.571 0.556

# ── Vector Indexing ───────────────────────────────────────────────────────────
y[3]          # [1] 5        — 3rd element
y[-1]         # [1] 3 5 7 9  — drop 1st
y[1:3]        # [1] 1 3 5    — elements 1–3
y[c(1,5)]     # [1] 1 9      — 1st and 5th
y[-c(1,5)]    # [1] 3 5 7    — drop 1st and 5th
y[y < 6]      # [1] 1 3 5    — conditional filter

# ── Matrices ──────────────────────────────────────────────────────────────────
# Fill by row
matrix(c(1:9), nrow=3, byrow=TRUE)
#      [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    4    5    6
# [3,]    7    8    9

# Fill by column (default)
matrix(c(1:9), nrow=3, byrow=FALSE)
#      [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9

mat = matrix(c(1:9), nrow=3, byrow=FALSE)

# Matrix indexing  [row, col]
mat[1, 2]      # [1] 4         — row 1, col 2
mat[c(1,3), 2] # [1] 4 6       — rows 1 & 3, col 2
mat[2, ]       # [1] 2 5 8     — entire row 2
mat[, 1]       # [1] 1 2 3     — entire col 1

# Scalar arithmetic on matrix
mat * 10
#      [,1] [,2] [,3]
# [1,]   10   40   70
# [2,]   20   50   80
# [3,]   30   60   90