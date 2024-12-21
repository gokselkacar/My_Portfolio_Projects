test_that("clean_column_names works correctly", {
  # Create test dataframe
  df <- data.frame("First Name" = c("John", "Jane"),
                   "Age!" = c(30, 25))

  # Clean column names
  cleaned_df <- clean_column_names(df)

  # Check column names
  expect_equal(names(cleaned_df), c("first_name", "age"))
})