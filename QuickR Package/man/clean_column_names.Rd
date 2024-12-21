\name{clean_column_names}
\alias{clean_column_names}
\title{Clean and Standardize Column Names}
\description{
Converts column names to a consistent, clean format by:
\itemize{
  \item Converting all names to lowercase
  \item Replacing spaces with underscores
  \item Removing special characters
}
This function is useful for standardizing column names across different data frames,
making them more consistent and easier to work with in subsequent analysis.
}
\usage{
clean_column_names(df)
}
\arguments{
  \item{df}{A data frame with column names to be cleaned}
}
\value{
A data frame with standardized column names
}
\details{
The cleaning process involves three main steps:
\enumerate{
  \item Convert all characters to lowercase
  \item Replace spaces with underscores
  \item Remove any characters that are not lowercase letters, numbers, or underscores
}
}
\examples{
# Create a sample dataframe with messy column names
df <- data.frame("First Name" = c("John", "Jane"),
                 "Age!" = c(30, 25),
                 "Salary ($)" = c(50000, 60000))

# Clean the column names
clean_df <- clean_column_names(df)

# Resulting column names will be: c("first_name", "age", "salary")
}