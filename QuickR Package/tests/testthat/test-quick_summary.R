test_that("quick_summary provides correct summary statistics", {
  # Create test dataframe
  df <- data.frame(
    a = rnorm(100, mean = 10, sd = 2),
    b = rnorm(100, mean = 50, sd = 5)
  )

  # Generate summary
  summary_result <- quick_summary(df)

  # Check structure
  expect_true(is.data.frame(summary_result))
  expect_equal(nrow(summary_result), 2)
  expect_true(all(c("column", "mean", "median", "sd", "min", "max") %in% names(summary_result)))
})

test_that("quick_summary handles edge cases", {
  # Empty dataframe
  expect_warning(quick_summary(data.frame()))

  # Dataframe with no numeric columns
  df_non_numeric <- data.frame(text = letters[1:10])
  expect_warning(quick_summary(df_non_numeric))
})