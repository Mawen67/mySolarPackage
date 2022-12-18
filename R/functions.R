#' Easily select solar data columns
#' @param SolarEnergy_data A data frame containing solar data.
#' @param col_of_interest A string corresponding to the column of the `SolarEnergy` data frame that you wish to select.
#' @importFrom dplyr select
#' @return A data frame
#' @export
#' @examples
#' # Keep the `Temperature``column
#' filter_solar(SolarEnergy,
#'             col_of_interest = "Temperature")

filter_solar <- function(SolarEnergy_data,
                         col_of_interest){

  result <- tryCatch({
      SolarEnergy_data |>
               dplyr::select({{col_of_interest}})
    },
    error=function(cond) {
      data.frame()
    }
  )

  if(nrow(result) == 0) {
    warning("The `col_of_interest` argument supplied does not match any column in the original data.")
  }
  result
}

#' Perform a ARIMA model on a specific column
#' @param SolarEnergy_data A data frame containing solar data.
#' @param col_of_interest A string corresponding to the column of the `SolarEnergy` data frame that you wish to perform forecasting on.
#' @param number_of_forecast An integer corresponding to the number of points that you wish to forecast (default value = 2000).
#' @importFrom dplyr select
#' @import forecast
#' @return A plot
#' @export
#' @examples
#' # Forecast the `Temperature`
#' predict_solar(SolarEnergy,
#'               col_of_interest = "Temperature",
#'               number_of_forecast = 2000)

predict_solar <- function(SolarEnergy_data,
                         col_of_interest,
                         number_of_forecast = 2000){

  data_of_interest <- filter_solar(SolarEnergy_data, col_of_interest)


  if(nrow(data_of_interest) == 0) {
      return(NA)
  } else {
    #tsdisplay(data_of_interest)
    #output_arima <-forecast::Arima(data_of_interest,order=c(ar.param,i.param,ma.param))
    output_arima <- forecast::auto.arima(data_of_interest)
    #tsdiag(output_arima)
    forecast::autoplot(forecast::forecast(output_arima, number_of_forecast))
    }
}
