#### Preamble ####
# Purpose: Simulates a dataset of Australian electoral divisions, including the 
  #state and party that won each division.
# Author: Rohan Alexander
# Date: 26 September 2024
# Contact: rohan.alexander@utoronto.ca
# License: MIT
# Pre-requisites: The `tidyverse` package must be installed
# Any other information needed? Make sure you are in the `starter_folder` rproj


#### Workspace setup ####
library(tidyverse)
set.seed(853)

data <- read.csv("data/02-analysis_data/analysis_data.csv")
n <- 500

#### Simulate data ####
simulated_data <- tibble(
  STATEICP = sample(0:100, n, replace = TRUE),
  EDUCD = sample(0:120, n, replace = TRUE)
)

#### Save data ####
write_csv(simulated_data, "data/00-simulated_data/simulated_data.csv")
