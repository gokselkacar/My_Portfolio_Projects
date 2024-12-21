# Quick Histogram Plotting

# Generates a histogram for a specified numeric column in a data frame

quick_plot <- function(df, col) {
  # Validate inputs
  if (!is.data.frame(df)) {
    stop("Input must be a data frame")
  }

  if (!(col %in% names(df))) {
    stop(paste("Column", col, "not found in the data frame"))
  }

  if (!is.numeric(df[[col]])) {
    stop(paste("Column", col, "must be numeric"))
  }

  # Create histogram using ggplot2
  p <- ggplot2::ggplot(df, ggplot2::aes(x = !!ggplot2::sym(col))) +
    ggplot2::geom_histogram(fill = "blue", color = "black", alpha = 0.7) +
    ggplot2::labs(
      title = paste("Histogram of", col),
      x = col,
      y = "Frequency"
    ) +
    ggplot2::theme_minimal()

  return(p)
}