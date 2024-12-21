name{detect_outliers}
\alias{detect_outliers}
\title{Detect Outliers in Numeric Columns}
\description{
Identifies outliers in numeric columns using the Interquartile Range (IQR) method.
This function helps in identifying unusual data points that may require further investigation
or special handling in data analysis.
}
\usage{
detect_outliers(df, threshold = 1.5)
}
\arguments{
  \item{df}{A data frame containing numeric columns to check for outliers}
  \item{threshold}{Multiplier for IQR used to define outlier boundaries (default is 1.5)}
}
\value{
A list with two components:
\itemize{
  \item \code{outliers}: A data frame containing all rows identified as outliers
  \item \code{summary}: A list providing outlier details for each numeric column, including:
    \enumerate{
      \item Number of outliers
      \item Lower bound for outliers
      \item Upper bound for outliers
    }
}
}
\details{
Outliers are detected using the standard IQR method:
\enumerate{
  \item Calculate Q1 (25th percentile) and Q3 (75th percentile)
  \item Compute IQR = Q3 - Q1
  \item Define outlier boundaries as:
    \itemize{
      \item Lower bound: Q1 - (threshold * IQR)
      \item Upper bound: Q3 + (threshold * IQR)
    }
  \item Identify data points outside these boundaries as outliers
}

The \code{threshold} parameter allows flexibility in defining outliers.
A higher threshold will be more lenient, while a lower threshold will be more strict.
}
\examples{
# Create a sample dataframe with potential outliers
df <- data.frame(
  age = c(25, 30, 35, 200, 40, 45),
  salary = c(50000, 60000, 55000, 500000, 65000, 70000)
)

# Detect outliers using default threshold
outlier_results <- detect_outliers(df)

# Access outliers
outliers <- outlier_results$outliers

# Access outlier summary
outlier_summary <- outlier_results$summary
}