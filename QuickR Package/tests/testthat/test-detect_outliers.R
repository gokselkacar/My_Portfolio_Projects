test_that("detect_outliers identifies correct outliers", {
  df <- data.frame(
    age = c(25, 30, 35, 200, 40, 45),
    salary = c(50000, 60000, 55000, 500000, 65000, 70000)
  )

  # Detect outliers
  results <- detect_outliers(df)

  # Check outlier detection
  expect_true(nrow(results$outliers) > 0)
  expect_true("age" %in% names(results$summary))
})