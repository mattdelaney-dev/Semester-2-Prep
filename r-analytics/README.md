# R Analytics — STAT1201

**Tools:** R + RStudio Desktop  
**Resource:** MarinStatsLectures (YouTube) · StatQuest (YouTube)  
**Key packages:** ggplot2, dplyr

## Concepts tracker

### Week 1 — R basics
- [ ] Variables and assignment
- [ ] Arithmetic in R
- [ ] Vectors (numeric, character, logical)
- [ ] Vector operations (mean, sum, length)
- [ ] Sequences and rep()

### Week 2 — Data structures
- [ ] Factors and levels
- [ ] Matrices
- [ ] Matrix operations (transpose, multiply, apply)
- [ ] Data frames intro
- [ ] Filtering data frames
- [ ] Importing CSV files

### Week 3 — ggplot2 visualisation
- [ ] Install and load ggplot2
- [ ] Scatter plot (geom_point)
- [ ] Histogram (geom_histogram)
- [ ] Box plot (geom_boxplot)
- [ ] Themes and labels
- [ ] facet_wrap()

### Week 4 — dplyr + full pipeline
- [ ] filter() and select()
- [ ] mutate() and arrange()
- [ ] summarise() and group_by()
- [ ] Pipe operator %>%
- [ ] Full analysis pipeline on real data

## ggplot2 quick reference
```r
ggplot(df, aes(x = col1, y = col2)) +
  geom_point() +
  labs(title = "Title", x = "X axis", y = "Y axis") +
  theme_minimal()
```

## dplyr quick reference
```r
df %>%
  filter(col > 10) %>%
  select(col1, col2) %>%
  mutate(new_col = col1 * 2) %>%
  group_by(category) %>%
  summarise(mean_val = mean(col1))
```
