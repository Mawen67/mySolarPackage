% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{filter_solar}
\alias{filter_solar}
\title{Easily select solar data columns}
\usage{
filter_solar(SolarEnergy_data, col_of_interest)
}
\arguments{
\item{SolarEnergy_data}{A data frame containing solar data.}

\item{col_of_interest}{A string corresponding to the column of the `SolarEnergy` data frame that you wish to select.}
}
\value{
A data frame
}
\description{
Easily select solar data columns
}
\examples{
# Keep the `Temperature``column
filter_solar(SolarEnergy,
            col_of_interest = "Temperature")
}
