\name{summarize_categorical}
\alias{summarize_categorical}
\title{Summarize Categorical Variables}
\description{
Provides a comprehensive summary of categorical variables in a data frame.
This function helps in understanding the distribution and composition of categorical data.
}
\usage{
summarize_categorical(df, top_n = 5)
}
\arguments{
  \item{df}{A data frame containing categorical columns (character or factor)}
  \item{top_n}{Number of top categories to show in the summary (default is 5)}
}
\value{
A list of summary statistics for each categorical column, where each column's summary contains:
\itemize{
  \item \code{total_categories}: Total number of unique categories
  \item \code{frequencies}: Frequencies of the top N categories
  \item \code{proportions}: Proportions of the top N categories
}
}
\details{
The function performs the following steps for each categorical column:
\enumerate{
  \item Identifies unique categories
  \item Calculates frequency of each category
  \item Computes proportion of each category
  \item Returns top N categories by frequency
}

Categorical columns are identified as those of type character or factor.
}
\examples{
# Create a sample dataframe with categorical variables
df <- data.frame(
  gender = c("M", "F", "M", "F", "M", "F", "M"),
  city = c("New York", "London", "Paris", "Tokyo",
           "New York", "London", "New York"),
  education = c("Bachelors", "Masters", "PhD",
                "Bachelors", "Masters", "PhD", "Bachelors")
)

# Summarize categorical variables
cat_summary <- summarize_categorical(df)

# Access summary for a specific column
gender_summary <- cat_summary$gender
}