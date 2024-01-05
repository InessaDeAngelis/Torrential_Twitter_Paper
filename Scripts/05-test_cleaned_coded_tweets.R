#### Preamble ####
# Purpose: Tests the cleaned, coded Tweets
# Author: Inessa De Angelis
# Date: 15 November 2023
# Contact: inessa.deangelis@mail.utoronto.ca 
# License: MIT
# Pre-requisites
  # 01-clean_coded_tweets.R

#### Workspace setup ####
library(testthat)

# Read in data #
finalized_cleaned_tweets <- read_csv("Outputs/Data/finalized_cleaned_tweets.csv", show_col_types = FALSE)

#### Testing ####
test_that("check class" , {
  expect_type(finalized_cleaned_tweets$ID, "integer")
  expect_type(finalized_cleaned_tweets$name_of_politician, "character")
  expect_type(finalized_cleaned_tweets$name, "character")
  expect_type(finalized_cleaned_tweets$verified, "character")
  expect_type(finalized_cleaned_tweets$bio, "character")
  expect_type(finalized_cleaned_tweets$username, "character")
  expect_type(finalized_cleaned_tweets$tweet_text, "character")
  expect_type(finalized_cleaned_tweets$severity_of_harassment, "character")
  expect_type(finalized_cleaned_tweets$type_of_account, "character")
})

test_that("Check number of observations is correct", {
  expect_equal(nrow(finalized_cleaned_tweets), 4100)
})