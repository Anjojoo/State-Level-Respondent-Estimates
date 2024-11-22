#### Preamble ####
# Purpose: Tests the structure and validity of the simulated data
  #electoral divisions dataset.
# Author: Yunkai Gu & Anqi Xu & Yitong Wang
# Date: 4 NOvember 2024
# Contact: kylie.gu@mail.utoronto.ca & anjojoo.xu@mail.utoronto.ca & stevenn.wang@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
  # - The `tidyverse` package must be installed and loaded
  # - 00-simulate_data.R must have been run



#### Workspace setup ####
library(tidyverse)
library(testthat)

data <- read_csv("data/00-simulated_data/simulated_data.csv")

#### Test data ####
test_that("Dataset has correct columns", {
  expect_true("STATEICP" %in% colnames(data))
  expect_true("EDUCD" %in% colnames(data))
})

test_that("STATEICP column has no missing values", {
  expect_false(any(is.na(data$STATEICP)))
})

test_that("EDUCD column has no missing values", {
  expect_false(any(is.na(data$EDUCD)))
})

test_that("STATEICP values are within a reasonable range", {
  expect_true(all(data$STATEICP >= 0 & data$STATEICP <= 100))
})

test_that("EDUCD values are positive integers", {
  expect_true(all(data$EDUCD >= 0))
  expect_true(all(data$EDUCD == floor(data$EDUCD)))
})
