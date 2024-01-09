test_that("range of columns works", {
  df <- data.frame(a = c(1,2,3), b = c(NA, NA, NA), c = c(NA, 2, NA))
  expect_equal(range_of_column(df, a), c(1,3))
})
