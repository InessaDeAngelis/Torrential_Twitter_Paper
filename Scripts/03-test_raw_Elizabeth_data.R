#### Preamble ####
# Purpose: Tests raw @elizabethmay Tweets 
# Author: Inessa De Angelis
# Date: 30 October 2023
# Contact: inessa.deangelis@mail.utoronto.ca 
# License: MIT
# Pre-requisites
  # 02-clean_raw_Elizabeth_data.R

#### Workspace setup ####
library(tidyverse)
library(validate)

#### Read in cleaned Tweets ####
cleaned_liz_tweets <-
  read_csv("Outputs/Data/Elizabeth/final_cleaned_liz_tweets.csv")
show_col_types = FALSE

#### Test ####
# Check for type of variables #
rules <- validator(
  is.character(Name),
  is.character(Verified),
  is.character(URL),
  is.numeric(Followers),
  is.numeric(Following),
  is.character(Bio),
  is.character(Username),
  is.character(Profile_picture),
  is.function(location),
  is.character(Text),
  is.numeric(User_id),
  is.numeric(Conversation_id),
  Verified %in% c("No", "Yes", "other")
)

out <-
  confront(cleaned_liz_tweets, rules)

summary(out)

# Check number of rows is correct #
nrow(cleaned_liz_tweets) == 1059