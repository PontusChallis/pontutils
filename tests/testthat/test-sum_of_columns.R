test_that("Test that sum of culums is working", {
  df <- data.frame(a = c(1,2,3), b = c(4,2,1), c = c(5,6,7))
  df_sum <- data.frame(a = c(1,2,3), b = c(4,2,1), c = c(5,6,7), sum_of_a_b = c(5,4,4))
  expect_equal(sum_of_columns(df, "sum_of_a_b", a, b), df_sum)
})
