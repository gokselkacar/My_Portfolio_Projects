# Detect Outliers in Numeric Columns

# Identifies outliers in numeric columns using the Interquartile Range (IQR) method

detect_outliers <- function(df, threshold = 1.5) {
  # Validate input
  if (!is.data.frame(df)) {
    stop("Input must be a data frame")
  }

  # Find numeric columns
  numeric_cols <- sapply(df, is.numeric)

  # Initialize results
  all_outliers <- list()
  outlier_summary <- list()

  # Detect outliers for each numeric column
  for (col in names(df)[numeric_cols]) {
    x <- df[[col]]

    # Calculate IQR
    Q1 <- quantile(x, 0.25)
    Q3 <- quantile(x, 0.75)
    IQR <- Q3 - Q1

    # Define outlier bounds
    lower_bound <- Q1 - (threshold * IQR)
    upper_bound <- Q3 + (threshold * IQR)

    # Identify outliers
    outliers_mask <- x < lower_bound | x > upper_bound

    # Store results
    all_outliers[[col]] <- df[outliers_mask, ]
    outlier_summary[[col]] <- list(
      count = sum(outliers_mask),
      lower_bound = lower_bound,
      upper_bound = upper_bound
    )
  }

  # Return results
  return(list(
    outliers = do.call(rbind, all_outliers),
    summary = outlier_summary
  ))
}