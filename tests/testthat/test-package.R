# Ctrl + Shift + L to lead package
# Ctrl + Shift + T to run all tests
# https://testthat.r-lib.org/reference/index.html

# Download data to run the tests
mySolarPackage::SolarEnergy


#============================ Tests on filter_solar ============================
test_that("filter_solar: selecting Temperature work", {

  returned_value <- filter_solar(
    SolarEnergy,
    col_of_interest = "Temperature") |>
    as.data.frame()

  expected_value <- read.csv("test_data_temperature.csv")

  expect_equal(returned_value$Temperature, expected_value$Temperature)

})

# test Temperature. Create csv file:
#filter_solar(
# SolarEnergy,
# col_of_interest = "Temperature") %>%
# readr::write_csv("tests/testthat/test_data_temperature.csv")


# Check wrong column name -> do not want an error, but an empty dataframe
# Create a Warning
test_that("filter_solar: wrong column name: return empty dataframe", {

  returned_value <- filter_solar(
    SolarEnergy,
    col_of_interest = "wrong_name") |>
    as.data.frame()

  expected_value <- data.frame()

  expect_equal(returned_value, expected_value)

})

# Check if a wrong column name return a warning
test_that("filter_solar: wrong column name: warning is thrown", {

  expect_warning({
    filter_solar(
      SolarEnergy,
      col_of_interest = "wrong_name")
  }, "does not match any column in the original data")
})

#============================ Tests on filter_solar ============================
# Check if a wrong column name return a warning
test_that("predict_solar: wrong column name: warning is thrown", {

  expect_warning({
    predict_solar(
      SolarEnergy,
      col_of_interest = "wrong_name",
      number_of_forecast = 2000)
  }, "does not match any column in the original data")
})
