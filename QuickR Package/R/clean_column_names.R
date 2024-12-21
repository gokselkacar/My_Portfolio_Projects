# Clean and Standardize Column Names

# Converts column names to a consistent format by:
# 1. Converting to lowercase
# 2. Replacing spaces with underscores
# 3. Removing special characters

clean_column_names <- function(df) {
  # Validate input
  if (!is.data.frame(df)) {
    stop("Input must be a data frame")
  }

  # Clean column names
  names(df) <- tolower(names(df)) %>%
    gsub(" ", "_", .) %>%
    gsub("[^a-z0-9_]", "", .)

  return(df)
}