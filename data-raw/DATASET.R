# Load data
library(dplyr)
SolarEnergy <- readr::read_csv("./data/SolarPrediction.csv")
SolarEnergy <- SolarEnergy %>%
                  dplyr::rename(WindDirection = `WindDirection(Degrees)`)
SolarEnergy <- SolarEnergy[order(nrow(SolarEnergy):1),]
usethis::use_data(SolarEnergy, overwrite = TRUE)
