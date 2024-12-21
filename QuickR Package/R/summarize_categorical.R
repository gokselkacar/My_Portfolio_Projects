# Summarize Categorical Variables

# Provides a comprehensive summary of categorical variables

summarize_categorical <- function(df, top_n = 5) {
  # Validate input
  if (!is.data.frame(df)) {
    stop("Input must be a data frame")
  }

  # Find categorical columns (character or factor)
  cat_cols <- sapply(df, function(x) is.character(x) || is.factor(x))

  # Initialize results
  categorical_summary <- list()

  # Summarize each categorical column
  for (col in names(df)[cat_cols]) {
    # Calculate frequencies
    freq_table <- table(df[[col]])

    # Sort in descending order and take top N
    top_categories <- head(sort(freq_table, decreasing = TRUE), top_n)

    # Store summary
    categorical_summary[[col]] <- list(
      total_categories = length(unique(df[[col]])),
      frequencies = as.list(top_categories),
      proportions = prop.table(top_categories)
    )
  }

  return(categorical_summary)
}