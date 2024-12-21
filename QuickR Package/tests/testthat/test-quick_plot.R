test_that("quick_plot generates correct ggplot object", {
  # Create test dataframe
  df <- data.frame(value = rnorm(100))

  # Generate plot
  plot <- quick_plot(df, "value")

  # Check plot is ggplot object
  expect_true(inherits(plot, "ggplot"))

  # Check plot has correct layers
  expect_true(length(plot$layers) > 0)
})

test_that("quick_plot handles invalid inputs", {
  # Create test dataframe
  df <- data.frame(value = rnorm(100), text = letters[1:100])

  # Test invalid column
  expect_error(quick_plot(df, "nonexistent_column"))

  # Test non-numeric column
  expect_error(quick_plot(df, "text"))
})