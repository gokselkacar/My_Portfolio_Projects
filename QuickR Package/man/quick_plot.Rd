\name{quick_plot}
\alias{quick_plot}
\title{Quick Histogram Plotting}
\description{
Generates a histogram for a specified numeric column in a data frame using ggplot2.
This function provides a quick and easy way to visualize the distribution of a numeric variable.
}
\usage{
quick_plot(df, col)
}
\arguments{
  \item{df}{A data frame containing the data to be plotted}
  \item{col}{Name of the numeric column to plot, specified as a string}
}
\value{
A ggplot object representing the histogram of the specified column
}
\details{
The function creates a histogram with the following characteristics:
\itemize{
  \item Blue fill color
  \item Black outline
  \item Minimal theme
  \item Automatically labeled axes and title
}

Requires the ggplot2 package for plotting.
}
\examples{
# Create a sample dataframe
df <- data.frame(age = rnorm(100, mean = 30, sd = 5))

# Generate a quick histogram
p <- quick_plot(df, "age")

# The plot can be further customized or displayed
\dontrun{
print(p)
}
}