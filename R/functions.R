#' Easily select solar data columns
#' @param SolarEnergy_data A data frame containing solar data
#' @param col_of_interest A column of the `SolarEnergy` data frame that you wish to select.
#' @importFrom janitor clean_names
#' @importFrom dplyr select
#' @return A data frame
#' @export
#' @examples
#' # Keep the `Temperature``column
#' filter_solar(SolarEnergy,
#'             col_of_interest = Temperature)

filter_solar <- function(SolarEnergy_data,
                        col_of_interest){

  result <- SolarEnergy_data |>
    janitor::clean_names() |>
    dplyr::select({{col_of_interest}})

  result
}

#' Perform a ARIMA model on a specific column
#' @param SolarEnergy_data A data frame containing solar data
#' @param col_of_interest A column of the `SolarEnergy` data frame that you wish to select.
#' @param ar.param Parameter of the model AR
#' @param ma.param Parameter of the model MA
#' @param i.param Parameter of the integration of the ARIMA model
#' @importFrom janitor clean_names
#' @importFrom dplyr select
#' @import forecast
#' @import lmtest
#' @return A data frame
#' @export

predict_solar <- function(SolarEnergy_data,
                         col_of_interest,
                         ar.param = 0,
                         ma.param = 0,
                         i.param = 0){

  result <- filter_solar(SolarEnergy_data, col_of_interest)

  result
}
