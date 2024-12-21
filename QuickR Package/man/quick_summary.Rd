\name{quick_summary}
\alias{quick_summary}
\title{Generate Quick Summary Statistics}
\description{
Provides comprehensive summary statistics for all numeric columns in a data frame.
This function offers a rapid way to obtain key descriptive statistics across multiple numeric variables.
}
\usage{
quick_summary(df)
}
\arguments{
  \item{df}{A data frame containing numeric columns to summarize}
}
\value{
A data frame with the following summary statistics for each numeric column:
\itemize{
  \item \code{column}: Name of the original column
  \item \code{mean}: Arithmetic mean
  \item \code{median}: Median value
  \item \code{sd}: Standard deviation
  \item \code{min}: Minimum value
  \item \code{max}: Maximum value
}
}
\details{
The function performs the following:
\enumerate{
  \item Identifies numeric columns in the data frame
  \item Calculates summary statistics, ignoring NA values
  \item Returns a data frame with comprehensive statistics
}

Useful for quick data exploration and initial statistical assessment.
}
\examples{
# Create a sample dataframe
df <- data.frame(
  age = rnorm(100, mean = 30, sd = 5),
  income = rnorm(100, mean = 50000, sd = 10000)
)

# Generate quick summary
summary_results <- quick_summary(df)

# View the results
\dontrun{
print(summary_results)
}
}