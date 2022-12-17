# Load data
SolarEnergy <- readr::read_csv("./data/SolarEnergy.csv")
usethis::use_data(SolarEnergy, overwrite = TRUE)
