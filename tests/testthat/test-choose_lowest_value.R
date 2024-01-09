test_that("choose lowest value from two columns", {
  df <- data.frame(a = c(1,2,3), b = c(2, 4, 1))
  lowest_value_df <- df %>% dplyr::mutate(lowest_value = c(1,2,1))
  expect_equal(choose_lowest_value(df,a,b,"lowest_value"), lowest_value_df)
})
