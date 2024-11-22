#### Preamble ####
# Purpose: Tests analysis data
# Author: Yunkai Gu & Anqi Xu & Yitong Wang
# Date: 21 November 2024
# Contact: kylie.gu@mail.utoronto.ca & anjojoo.xu@mail.utoronto.ca & stevenn.wang@mail.utoronto.ca
# License: MIT
# Pre-requisites:
  # - The `tidyverse` package must be installed and loaded
  # - 03-clean_data.R must have been run



#### Workspace setup ####
library(tidyverse)
library(testthat)

data1 <- read_csv("data/02-analysis_data/analysis_data.csv")


#### Test data ####
test_that("Dataset has correct columns", {
  expect_true("STATEICP" %in% colnames(data1))
  expect_true("EDUCD" %in% colnames(data1))
})

test_that("STATEICP column has no missing values", {
  expect_false(any(is.na(data1$STATEICP)))
})

test_that("EDUCD column has no missing values", {
  expect_false(any(is.na(data1$EDUCD)))
})

test_that("STATEICP values are within a reasonable range", {
  expect_true(all(data1$STATEICP >= 0 & data1$STATEICP <= 100))
})

test_that("EDUCD values are positive numbers", {
  expect_true(all(data1$EDUCD >= 0))
})