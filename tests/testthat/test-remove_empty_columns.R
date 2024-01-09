test_that("Empty columns are removed", {
  df <- data.frame(a = c(1,2,3), b = c(NA, NA, NA), c = c(NA, 2, NA))
  expect_equal(remove_empty_columns(df), data.frame(a = c(1,2,3), c = c(NA, 2, NA)))
})
