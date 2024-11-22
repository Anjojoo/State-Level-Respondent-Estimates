#### Preamble ####
# Purpose: Cleans the raw data
# Author: Angel Xu, Yitong Wang, Yunkai Gu
# Date: 21 November 2024
# Contact: kylie.gu@mail.utoronto.ca & anjojoo.xu@mail.utoronto.ca & stevenn.wang@mail.utoronto.ca
# License: MIT
# Pre-requisites: Extract data from IPUMS
# Any other information needed? No

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read.csv(file = here::here("data/01-raw_data/usa_00001.csv"))

cleaned_data <-
  raw_data |>
  select(STATEICP, EDUCD) |>
  tidyr::drop_na()

#### Save data ####
write_csv(cleaned_data, "data/02-analysis_data/analysis_data.csv")

