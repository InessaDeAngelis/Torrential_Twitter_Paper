#### Preamble ####
# Purpose: Measures intercoder reliability
# Author: Inessa De Angelis
# Date: 10 January 2024
# Contact: inessa.deangelis@mail.utoronto.ca 
# License: MIT
# Pre-requisites
  # 07-intercoder_prep.R
# CODE from: https://bookdown.org/content/759d32f5-0f3a-4e44-b515-a0a8cfaba221/tutorial-6-data-collection-testing-intercoder-reliability.html

#### Workspace setup ####
library(tidyverse)
library(janitor)
library(irr)

#### Read in three coders' data ####
# Coder 1
inessa_tweets <- read_csv("Outputs/Data/intercoder/inessa_tweets.csv")
show_col_types = FALSE

# Code 2
sarah_tweets <- read_csv("Outputs/Data/intercoder/sarah_tweets.csv")
show_col_types = FALSE

# Coder 3
allyson_tweets <- read_csv("Outputs/Data/intercoder/allyson_tweets.csv")
show_col_types = FALSE

#### Data cleaning and dataset standardization ####
## Name organization ##
# Coder 2
cleaned_sarah_tweets <-
  clean_names(sarah_tweets)

# Coder 3 
cleaned_allyson_tweets <-
  clean_names(allyson_tweets)

## Select columns ##
# Coder 1
cleaned_inessa_tweets <-
  inessa_tweets |>
  select(
    name_of_politician,
    username,
    tweet_text,
    severity_of_harassment,
    type_of_account
  )
head(cleaned_inessa_tweets)

# Coder 2 
cleaned_sarah_tweets <-
  cleaned_sarah_tweets |>
  select(
    coder_name,
    name_of_politician,
    username,
    tweet_text,
    severity_of_harassment,
    type_of_account
  )
head(cleaned_sarah_tweets)  

# Coder 3
cleaned_allyson_tweets <-
  cleaned_allyson_tweets |>
  select(
    coder_name,
    name_of_politician,
    username,
    tweet_text,
    severity_of_harassment,
    type_of_account
  )
head(cleaned_allyson_tweets)  

## Manipulate columns ##
# Add coder_name for Coder 1
finalized_inessa_tweets <-
  cleaned_inessa_tweets |>
  mutate(coder_name = c("Inessa"),
         .before = name_of_politician) |>
  select(coder_name, name_of_politician, username, tweet_text, severity_of_harassment, type_of_account)
head(finalized_inessa_tweets)

# Case match in reverse 
finalized_inessa_tweets <-
  finalized_inessa_tweets |>
  mutate("severity_of_harassment" = case_when(
    severity_of_harassment == "Positive" ~ 1,
    severity_of_harassment == "Neutral" ~ 2,
    severity_of_harassment == "Questioning Authority" ~ 3,
    severity_of_harassment == "Name-calling/Gender insults" ~ 4,
    severity_of_harassment == "Vicious language" ~ 5,
    severity_of_harassment == "Credible threats" ~ 6,
    severity_of_harassment == "Hate speech" ~ 7,
  )) |>
  mutate("type_of_account" = case_when(
    type_of_account == "Personal" ~ 1,
    type_of_account == "Professional" ~ 2,
    type_of_account == "Bots" ~ 3,
    type_of_account == "Spammers" ~ 4,
    type_of_account == "Anonymous" ~ 5,
    type_of_account == "Suspended/deleted" ~ 6,
  )) |>
  select(coder_name, name_of_politician, username, tweet_text, severity_of_harassment, type_of_account)
head(finalized_inessa_tweets)

## Add ID column ##
# Coder 1
finalized_inessa_tweets <-
  finalized_inessa_tweets |>
  mutate(ID = c(1:413),
         .before = coder_name) |>
  select(ID, coder_name, name_of_politician, username, severity_of_harassment, type_of_account)
head(finalized_inessa_tweets)

# Coder 2
cleaned_sarah_tweets <-
  cleaned_sarah_tweets |>
  mutate(ID = c(1:413),
         .before = coder_name) |>
  select(ID, coder_name, name_of_politician, username, severity_of_harassment, type_of_account)
head(cleaned_sarah_tweets)

# Coder 3
cleaned_allyson_tweets <-
  cleaned_allyson_tweets |>
  mutate(ID = c(1:413),
         .before = coder_name) |>
  select(ID, coder_name, name_of_politician, username, severity_of_harassment, type_of_account)
head(cleaned_allyson_tweets)

## Combine datasets ##
all_tweets <- rbind(finalized_inessa_tweets, cleaned_sarah_tweets, cleaned_allyson_tweets)

all_tweets_coders <- rbind(cleaned_sarah_tweets, cleaned_allyson_tweets)

## Make coder identification numeric ##
finalized_all_tweets <-
  all_tweets |>
  mutate(coder_name = case_when(
    startsWith(coder_name, "Inessa") ~ "1",
    startsWith(coder_name, "Sarah") ~ "2",
    startsWith(coder_name, "Allyson") ~ "3"
  ))
finalized_all_tweets

# rename columns to match tidycomm package expectations #
finalized_all_tweets <-
  finalized_all_tweets |>
  rename(
    post_id = ID,
  ) |>
  select(post_id, coder_name, severity_of_harassment, type_of_account)
finalized_all_tweets

finalized_all_tweets <-
  finalized_all_tweets |>
rename(
  coder_id = coder_name,
) |>
  select(post_id, coder_id, severity_of_harassment, type_of_account)
finalized_all_tweets

## Save intercoder specific dataset ##
write_csv(
  x = finalized_all_tweets,
  file = "Outputs/Data/intercoder/finalized_all_tweets.csv"
)


#### Intercoder reliability test - simple percent agreement ####
## Create datasets
# Combine all individual datasets 
tweets_combined <- cbind(finalized_inessa_tweets, cleaned_sarah_tweets, cleaned_allyson_tweets)
tweets_combined

# Clean names 
tweets_combined2 <-
clean_names(tweets_combined)
tweets_combined2

# Select specific columns 
tweets_combined2 <-
  tweets_combined2 |>
  select(id, coder_name, severity_of_harassment, type_of_account, coder_name_2, severity_of_harassment_2, type_of_account_2, coder_name_3, severity_of_harassment_3, type_of_account_3)
tweets_combined2

## Create specific datasets by coder combos for severity of harassment ##
# All coders & post ID
tweets_combined_severity <-
  tweets_combined2 |>
  select(id, severity_of_harassment, severity_of_harassment_2, severity_of_harassment_3)
tweets_combined_severity

# Coder 1 & 2
tweets_combined_severity2 <-
  tweets_combined_severity |>
  select(severity_of_harassment, severity_of_harassment_2)
tweets_combined_severity2

# Coder 1 & 3
tweets_combined_severity3 <-
  tweets_combined_severity |>
  select(severity_of_harassment, severity_of_harassment_3)
tweets_combined_severity3

# Coder 2 & 3
tweets_combined_severity4 <-
  tweets_combined_severity |>
  select(severity_of_harassment_2, severity_of_harassment_3)
tweets_combined_severity4

## Create specific datasets by coder combos for type of account ##
# All accounts & post ID
tweets_combined_account <-
  tweets_combined2 |>
  select(id, type_of_account, type_of_account_2, type_of_account_3)
tweets_combined_account

# All accounts only
tweets_combined_account2 <-
  tweets_combined_account |>
  select(type_of_account, type_of_account_2, type_of_account_3)

# Coder 1 & 2
tweets_combined_account3 <-
  tweets_combined_account2 |>
  select(type_of_account, type_of_account_2)

# Coder 1 & 3
tweets_combined_account4 <-
  tweets_combined_account2 |>
  select(type_of_account, type_of_account_3)

# Coder 2 & 3
tweets_combined_account5 <-
  tweets_combined_account2 |>
  select(type_of_account_2, type_of_account_3)
  
## Measure Agreement ##
# Severity of Harassment
agree(tweets_combined_severity2, 1)

# Type of Account
agree(tweets_combined_account3, 1)
