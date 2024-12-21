# Generate Quick Summary Statistics

# Provides summary statistics for all numeric columns in a data frame

quick_summary <- function(df) {
  # Validate input
  if (!is.data.frame(df)) {
    stop("Input must be a data frame")
  }

  # Find numeric columns
  numeric_cols <- sapply(df, is.numeric)

  # If no numeric columns, return empty data frame
  if (sum(numeric_cols) == 0) {
    warning("No numeric columns found in the data frame")
    return(data.frame())
  }

  # Calculate summary statistics
  summary_stats <- do.call(rbind, lapply(df[numeric_cols], function(x) {
    data.frame(
      mean = mean(x, na.rm = TRUE),
      median = median(x, na.rm = TRUE),
      sd = sd(x, na.rm = TRUE),
      min = min(x, na.rm = TRUE),
      max = max(x, na.rm = TRUE)
    )
  }))

  # Add column names as a new column
  summary_stats$column <- rownames(summary_stats)
  rownames(summary_stats) <- NULL

  # Reorder columns to put 'column' first
  summary_stats <- summary_stats[, c("column", setdiff(names(summary_stats), "column"))]

  return(summary_stats)
}