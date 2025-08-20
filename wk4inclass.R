##q3
#3.1.1
cholesterol_data <- tibble(
  oat_bran_free = c(4.61, 5.42, 5.40, 4.54, 3.98), 
  oat_bran = c(3.64, 5.57, 4.85, 4.80, 3.68)
)
cholesterol_data
#3.1.2
col_long <- cholesterol_data |>
  pivot_longer(
    cols = c(`oat_bran_free`, `oat_bran`),z
    names_to = "oat_bran?",
    values_to = "col_lvl"
  )
col_long
#3.1.3
col_long|>
summarise(
  n = n_distinct(col_lvl),
  mean = mean(col_lvl),
  std = sd(col_lvl)
  )
