#### Preamble ####
# Purpose: Models
# Author: Inessa De Angelis
# Date: 15 November 2023
# Contact: inessa.deangelis@mail.utoronto.ca 
# License: MIT
# Pre-requisites
  # 04-clean_coded_tweets.R
  # 05-test_cleaned_coded_tweets.R

#### Workspace setup ####
library(tidyverse)
library(rstanarm)
library(modelsummary)
library(marginaleffects)
library(bayesplot)
library(tidybayes)

# Read in data #
finalized_cleaned_tweets <- read_csv("Outputs/Data/finalized_cleaned_tweets.csv", show_col_types = FALSE)

#### Prepare data to model ####
## Create analysis data with severity of harassment factored ##
analysis_data_binary <-
  finalized_cleaned_tweets |>
  select(severity_of_harassment, type_of_account, verified, name_of_politician) |>
  mutate(harassment_binary = if_else(severity_of_harassment == "Positive" | severity_of_harassment == "Neutral",
                                     0,
                                     1)) 
analysis_data_binary

## Test data ##
class(analysis_data_binary$severity_of_harassment) == "character"
class(analysis_data_binary$type_of_account) == "character"
class(analysis_data_binary$verified) == "character"
class(analysis_data_binary$name_of_politician) == "character"
class(analysis_data_binary$harassment_binary) == "numeric"
nrow(analysis_data_binary) == 4139

#### Make Bayesian hierarchical model ####
harassment_model <-
  stan_glmer(
    harassment_binary ~ (1 | type_of_account) + (1 | name_of_politician) + (1 | verified),
    data = analysis_data_binary,
    family = binomial(link = "logit"),
    prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
    seed = 16
  )
verified_model

## Save model ##
saveRDS(harassment_model, "Outputs/Model/harassment_model.rds")

## Summary ##
summary(harassment_model)