test_that("summarize_categorical provides correct summary", {
  df <- data.frame(
    gender = c("M", "F", "M", "F", "M"),
    city = c("New York", "London", "Paris", "Tokyo", "New York")
  )

  # Summarize categorical variables
  results <- summarize_categorical(df)

  # Check summary structure
  expect_true("gender" %in% names(results))
  expect_true("total_categories" %in% names(results$gender))
})