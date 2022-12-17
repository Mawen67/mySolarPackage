#' Solar Radiation Prediction
#'
#' A tidy dataset of different measurements  for 4 months
#'
#' @format
#' A data frame with 32686 rows and 11 columns:
#' \describe{
#'   \item{UNIXTime}{UNIXTime of measurement}
#'   \item{Data}{Date of measurement}
#'   \item{Time}{Hour of measurement}
#'   \item{Radiation}{Solar radiation: watts per meter²}
#'   \item{Temperature}{Temperature: degrees Fahrenheit}
#'   \item{Humidity}{Humidity: percent}
#'   \item{Pressure}{Barometric pressure: Hg}
#'   \item{WindDirection}{Wind direction: degrees}
#'   \item{Speed}{Wind speed: miles per hour}
#'   \item{TimeSunRise}{Sunrise: Hawaii time}
#'   \item{TimeSunSet}{Sunset: Hawaii time}
#' }
#' @source https://www.kaggle.com/datasets/dronio/SolarEnergy
"SolarEnergy"
