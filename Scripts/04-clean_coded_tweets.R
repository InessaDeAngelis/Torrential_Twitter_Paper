#### Preamble ####
# Purpose: Cleans Tweets for all three female politicians that were manually coded
# Author: Inessa De Angelis
# Date: 15 November 2023
# Contact: inessa.deangelis@mail.utoronto.ca 
# License: MIT
# Pre-requisites
  # Must manually code the Tweets first

#### Workspace setup ####
library(tidyverse)
library(janitor)

#### Read in the raw coded Tweets ####
raw_coded_tweets <- read_csv("Outputs/Data/coding_form_responses.csv", show_col_types = FALSE)

#### Cleaning ####
# Name organization #
cleaned_coded_tweets <-
  clean_names(raw_coded_tweets)

# Select columns of interest #
cleaned_coded_tweets <-
  cleaned_coded_tweets |>
  select(
    name_of_politician,
    name,
    verified,
    bio,
    username,
    tweet_text,
    severity_of_harassment,
    type_of_account
  )
head(cleaned_coded_tweets)  

# Add ID column #
finalized_cleaned_tweets <-
  cleaned_coded_tweets |>
  mutate(ID = c(1:2564),
         .before = name_of_politician) |>
  select(ID, name_of_politician, name, verified, bio, username, tweet_text, severity_of_harassment, type_of_account)
head(finalized_cleaned_tweets)

# Case Match #
finalized_cleaned_tweets <-
  finalized_cleaned_tweets |>
  mutate("severity_of_harassment" = case_when(
    severity_of_harassment == 1 ~ "Positive",
    severity_of_harassment == 2 ~ "Neutral",
    severity_of_harassment == 3 ~ "Questioning Authority",
    severity_of_harassment == 4 ~ "Name-calling/Gender insults",
    severity_of_harassment == 5 ~ "Vicious language",
    severity_of_harassment == 6 ~ "Credible threats",
    severity_of_harassment == 7 ~ "Hate speech",
  )) |>
  mutate("type_of_account" = case_when(
    type_of_account == 1 ~ "Personal",
    type_of_account == 2 ~ "Professional",
    type_of_account == 3 ~ "Bots",
    type_of_account == 4 ~ "Spammers",
    type_of_account == 5 ~ "Anonymous",
    type_of_account == 6 ~ "Suspended/deleted",
  )) |>
  select(ID, name_of_politician, name, verified, bio, username, tweet_text, severity_of_harassment, type_of_account)
finalized_cleaned_tweets

#### Save cleaned data in CSV file format ####
write_csv(
  x = finalized_cleaned_tweets,
  file = "Outputs//Data/finalized_cleaned_tweets.csv"
)

finalized_cleaned_tweets |>
  group_by(type_of_account) |>
  count()