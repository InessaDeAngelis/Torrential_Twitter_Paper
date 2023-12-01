#### Preamble ####
# Purpose: Clean raw @cafreeland Tweets 
# Author: Inessa De Angelis
# Date: 30 October 2023
# Contact: inessa.deangelis@mail.utoronto.ca 
# License: MIT
# Pre-requisites
  # 01-download_Chrystia_data.R

#### Workspace setup ####
library(tidyverse)
library(janitor)

##### STEP 1 - eliminate extra columns & combine user info and tweet text datasets #####
### Clean February 25 Tweets ###
# Read in Tweets #
raw_chrystia_tweets_feb_25 <-
  read_csv("Inputs/Data/Chrystia/raw_chrystia_tweets_feb_25.csv")
show_col_types = FALSE

raw_chrystia_tweets_feb_25_2 <-
  read_csv("Inputs/Data/Chrystia/raw_chrystia_tweets_feb_25_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_chrystia_feb_25 =
  raw_chrystia_tweets_feb_25 |>
  select(
    profile.name,
    profile.verified,
    profile.url,
    profile.public_metrics.followers_count,
    profile.public_metrics.following_count,
    profile.description,
    profile.username,
    profile.profile_image_url,
    profile.location,
    user_id
  )
trial_chrystia_feb_25

trial_chrystia_feb_25_2 =
  raw_chrystia_tweets_feb_25_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_chrystia_feb_25_2

combined_chrystia_tweets_feb_25 <-
  cbind(trial_chrystia_feb_25, trial_chrystia_feb_25_2)

# Save dataset #
write_csv(x = combined_chrystia_tweets_feb_25, file = "Outputs/Data/Chrystia/combined_chrystia_tweets_feb_25.csv")

### Clean January 18 Tweets ###
# Read in Tweets #
raw_chrystia_tweets_jan_18 <-
  read_csv("Inputs/Data/Chrystia/raw_chrystia_tweets_jan_18.csv")
show_col_types = FALSE

raw_chrystia_tweets_jan_18_2 <-
  read_csv("Inputs/Data/Chrystia/raw_chrystia_tweets_jan_18_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_chrystia_jan_18 =
  raw_chrystia_tweets_jan_18 |>
  select(
    profile.name,
    profile.verified,
    profile.url,
    profile.public_metrics.followers_count,
    profile.public_metrics.following_count,
    profile.description,
    profile.username,
    profile.profile_image_url,
    profile.location,
    user_id
  )
trial_chrystia_jan_18

trial_chrystia_jan_18_2 =
  raw_chrystia_tweets_jan_18_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_chrystia_jan_18_2

combined_chrystia_tweets_jan_18 <-
  cbind(trial_chrystia_jan_18, trial_chrystia_jan_18_2)

# Save dataset #
write_csv(x = combined_chrystia_tweets_jan_18, file = "Outputs/Data/Chrystia/combined_chrystia_tweets_jan_18.csv")

### Clean January 19 Tweets ###
# Read in Tweets #
raw_chrystia_tweets_jan_19 <-
  read_csv("Inputs/Data/Chrystia/raw_chrystia_tweets_jan_19.csv")
show_col_types = FALSE

raw_chrystia_tweets_jan_19_2 <-
  read_csv("Inputs/Data/Chrystia/raw_chrystia_tweets_jan_19_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_chrystia_jan_19 =
  raw_chrystia_tweets_jan_19 |>
  select(
    profile.name,
    profile.verified,
    profile.url,
    profile.public_metrics.followers_count,
    profile.public_metrics.following_count,
    profile.description,
    profile.username,
    profile.profile_image_url,
    profile.location,
    user_id
  )
trial_chrystia_jan_19

trial_chrystia_jan_19_2 =
  raw_chrystia_tweets_jan_19_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_chrystia_jan_19_2

combined_chrystia_tweets_jan_19 <-
  cbind(trial_chrystia_jan_19, trial_chrystia_jan_19_2)

# Save dataset #
write_csv(x = combined_chrystia_tweets_jan_19, file = "Outputs/Data/Chrystia/combined_chrystia_tweets_jan_19.csv")

### Clean January 30 Tweets ###
# Read in Tweets #
raw_chrystia_tweets_jan_30 <-
  read_csv("Inputs/Data/Chrystia/raw_chrystia_tweets_jan_30.csv")
show_col_types = FALSE

raw_chrystia_tweets_jan_30_2 <-
  read_csv("Inputs/Data/Chrystia/raw_chrystia_tweets_jan_30_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_chrystia_jan_30 =
  raw_chrystia_tweets_jan_30 |>
  select(
    profile.name,
    profile.verified,
    profile.url,
    profile.public_metrics.followers_count,
    profile.public_metrics.following_count,
    profile.description,
    profile.username,
    profile.profile_image_url,
    profile.location,
    user_id
  )
trial_chrystia_jan_30

trial_chrystia_jan_30_2 =
  raw_chrystia_tweets_jan_30_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_chrystia_jan_30_2

combined_chrystia_tweets_jan_30 <-
  cbind(trial_chrystia_jan_30, trial_chrystia_jan_30_2)

# Save dataset #
write_csv(x = combined_chrystia_tweets_jan_30, file = "Outputs/Data/Chrystia/combined_chrystia_tweets_jan_30.csv")

### Clean May 11 (1) Tweets ###
# Read in Tweets #
raw_chrystia_tweets_may_11 <-
  read_csv("Inputs/Data/Chrystia/raw_chrystia_tweets_may_11.csv")
show_col_types = FALSE

raw_chrystia_tweets_may_11_2 <-
  read_csv("Inputs/Data/Chrystia/raw_chrystia_tweets_may_11_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_chrystia_may_11 =
  raw_chrystia_tweets_may_11 |>
  select(
    profile.name,
    profile.verified,
    profile.url,
    profile.public_metrics.followers_count,
    profile.public_metrics.following_count,
    profile.description,
    profile.username,
    profile.profile_image_url,
    profile.location,
    user_id
  )
trial_chrystia_may_11

trial_chrystia_may_11_2 =
  raw_chrystia_tweets_may_11_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_chrystia_may_11_2

combined_chrystia_tweets_may_11 <-
  cbind(trial_chrystia_may_11, trial_chrystia_may_11_2)

# Save dataset #
write_csv(x = combined_chrystia_tweets_may_11, file = "Outputs/Data/Chrystia/combined_chrystia_tweets_may_11.csv")

### Clean May 11 (2) Tweets ###
# Read in Tweets #
raw_chrystia_tweets_may_11_1 <-
  read_csv("Inputs/Data/Chrystia/raw_chrystia_tweets_may_11_3.csv")
show_col_types = FALSE

raw_chrystia_tweets_may_11_3 <-
  read_csv("Inputs/Data/Chrystia/raw_chrystia_tweets_may_11_4.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_chrystia_may_11_1 =
  raw_chrystia_tweets_may_11_1 |>
  select(
    profile.name,
    profile.verified,
    profile.url,
    profile.public_metrics.followers_count,
    profile.public_metrics.following_count,
    profile.description,
    profile.username,
    profile.profile_image_url,
    profile.location,
    user_id
  )
trial_chrystia_may_11_1

trial_chrystia_may_11_3 =
  raw_chrystia_tweets_may_11_3 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_chrystia_may_11_3

combined_chrystia_tweets_may_11_1 <-
  cbind(trial_chrystia_may_11_1, trial_chrystia_may_11_3)

# Save dataset #
write_csv(x = combined_chrystia_tweets_may_11_1, file = "Outputs/Data/Chrystia/combined_chrystia_tweets_may_11_2.csv")

### Clean May 13 Tweets ###
# Read in Tweets #
raw_chrystia_tweets_may_13 <-
  read_csv("Inputs/Data/Chrystia/raw_chrystia_tweets_may_13.csv")
show_col_types = FALSE

raw_chrystia_tweets_may_13_2 <-
  read_csv("Inputs/Data/Chrystia/raw_chrystia_tweets_may_13_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_chrystia_may_13 =
  raw_chrystia_tweets_may_13 |>
  select(
    profile.name,
    profile.verified,
    profile.url,
    profile.public_metrics.followers_count,
    profile.public_metrics.following_count,
    profile.description,
    profile.username,
    profile.profile_image_url,
    profile.location,
    user_id
  )
trial_chrystia_may_13

trial_chrystia_may_13_2 =
  raw_chrystia_tweets_may_13_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_chrystia_may_13_2

combined_chrystia_tweets_may_13 <-
  cbind(trial_chrystia_may_13, trial_chrystia_may_13_2)

# Save dataset #
write_csv(x = combined_chrystia_tweets_may_13, file = "Outputs/Data/Chrystia/combined_chrystia_tweets_may_13.csv")

### Clean October 11 Tweets ###
# Read in Tweets #
raw_chrystia_tweets_oct_11 <-
  read_csv("Inputs/Data/Chrystia/raw_chrystia_tweets_oct_11.csv")
show_col_types = FALSE

raw_chrystia_tweets_oct_11_2 <-
  read_csv("Inputs/Data/Chrystia/raw_chrystia_tweets_oct_11_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_chrystia_oct_11 =
  raw_chrystia_tweets_oct_11 |>
  select(
    profile.name,
    profile.verified,
    profile.url,
    profile.public_metrics.followers_count,
    profile.public_metrics.following_count,
    profile.description,
    profile.username,
    profile.profile_image_url,
    profile.location,
    user_id
  )
trial_chrystia_oct_11

trial_chrystia_oct_11_2 =
  raw_chrystia_tweets_oct_11_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_chrystia_oct_11_2

combined_chrystia_tweets_oct_11 <-
  cbind(trial_chrystia_oct_11, trial_chrystia_oct_11_2)

# Save dataset #
write_csv(x = combined_chrystia_tweets_oct_11, file = "Outputs/Data/Chrystia/combined_chrystia_tweets_oct_11.csv")

### Clean October 12 Tweets ###
# Read in Tweets #
raw_chrystia_tweets_oct_12 <-
  read_csv("Inputs/Data/Chrystia/raw_chrystia_tweets_oct_12.csv")
show_col_types = FALSE

raw_chrystia_tweets_oct_12_2 <-
  read_csv("Inputs/Data/Chrystia/raw_chrystia_tweets_oct_12_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_chrystia_oct_12 =
  raw_chrystia_tweets_oct_12 |>
  select(
    profile.name,
    profile.verified,
    profile.url,
    profile.public_metrics.followers_count,
    profile.public_metrics.following_count,
    profile.description,
    profile.username,
    profile.profile_image_url,
    profile.location,
    user_id
  )
trial_chrystia_oct_12

trial_chrystia_oct_12_2 =
  raw_chrystia_tweets_oct_12_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_chrystia_oct_12_2

combined_chrystia_tweets_oct_12 <-
  cbind(trial_chrystia_oct_12, trial_chrystia_oct_12_2)

# Save dataset #
write_csv(x = combined_chrystia_tweets_oct_12, file = "Outputs/Data/Chrystia/combined_chrystia_tweets_oct_12.csv")

### Clean October 14 Tweets ###
# Read in Tweets #
raw_chrystia_tweets_oct_14 <-
  read_csv("Inputs/Data/Chrystia/raw_chrystia_tweets_oct_14.csv")
show_col_types = FALSE

raw_chrystia_tweets_oct_14_2 <-
  read_csv("Inputs/Data/Chrystia/raw_chrystia_tweets_oct_14_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_chrystia_oct_14 =
  raw_chrystia_tweets_oct_14 |>
  select(
    profile.name,
    profile.verified,
    profile.url,
    profile.public_metrics.followers_count,
    profile.public_metrics.following_count,
    profile.description,
    profile.username,
    profile.profile_image_url,
    profile.location,
    user_id
  )
trial_chrystia_oct_14

trial_chrystia_oct_14_2 =
  raw_chrystia_tweets_oct_14_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_chrystia_oct_14_2

combined_chrystia_tweets_oct_14 <-
  cbind(trial_chrystia_oct_14, trial_chrystia_oct_14_2)

# Save dataset #
write_csv(x = combined_chrystia_tweets_oct_14, file = "Outputs/Data/Chrystia/combined_chrystia_tweets_oct_14.csv")

### Clean October 26 Tweets ###
# Read in Tweets #
raw_chrystia_tweets_oct_26 <-
  read_csv("Inputs/Data/Chrystia/raw_chrystia_tweets_oct_26.csv")
show_col_types = FALSE

raw_chrystia_tweets_oct_26_2 <-
  read_csv("Inputs/Data/Chrystia/raw_chrystia_tweets_oct_26_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_chrystia_oct_26 =
  raw_chrystia_tweets_oct_26 |>
  select(
    profile.name,
    profile.verified,
    profile.url,
    profile.public_metrics.followers_count,
    profile.public_metrics.following_count,
    profile.description,
    profile.username,
    profile.profile_image_url,
    profile.location,
    user_id
  )
trial_chrystia_oct_26

trial_chrystia_oct_26_2 =
  raw_chrystia_tweets_oct_26_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_chrystia_oct_26_2

combined_chrystia_tweets_oct_26 <-
  cbind(trial_chrystia_oct_26, trial_chrystia_oct_26_2)

# Save dataset #
write_csv(x = combined_chrystia_tweets_oct_26, file = "Outputs/Data/Chrystia/combined_chrystia_tweets_oct_26.csv")

##### STEP 2 - combine all individual datasets #####
# Combined chronologically starting at the top with October 2022 -> October 2023
raw_all_chrystia_tweets <-
  rbind(
    combined_chrystia_tweets_oct_11,
    combined_chrystia_tweets_oct_12,
    combined_chrystia_tweets_oct_14,
    combined_chrystia_tweets_jan_18,
    combined_chrystia_tweets_jan_19,
    combined_chrystia_tweets_jan_30,
    combined_chrystia_tweets_feb_25,
    combined_chrystia_tweets_may_11,
    combined_chrystia_tweets_may_11_1,
    combined_chrystia_tweets_may_13,
    combined_chrystia_tweets_oct_26
  )

write_csv(x = raw_all_chrystia_tweets, file = "Outputs/Data/Chrystia/raw_all_chrystia_tweets.csv")

##### STEP 3 - Eliminate extra columns, rename columns, update values #####
cleaned_chrystia_tweets =
  raw_all_chrystia_tweets |>
  select(
    profile.name,
    profile.verified,
    profile.url,
    profile.public_metrics.followers_count,
    profile.public_metrics.following_count,
    profile.description,
    profile.username,
    profile.profile_image_url,
    profile.location,
    text,
    user_id,
    conversation_id
  ) |>
  rename(
    Name = profile.name,
    Verified = profile.verified,
    URL = profile.url,
    Followers = profile.public_metrics.followers_count,
    Following = profile.public_metrics.following_count,
    Bio = profile.description,
    Username = profile.username,
    Profile_picture = profile.profile_image_url,
    Location = profile.location,
    Text = text,
    User_id = user_id,
    Conversation_id = conversation_id
  ) |>
  mutate("Verified" = case_when(Verified == FALSE ~ "No",
                                Verified == TRUE ~ "Yes",)) |>
  select(
    Name,
    Verified,
    URL,
    Followers,
    Following,
    Bio,
    Username,
    Profile_picture,
    Location,
    Text,
    User_id,
    Conversation_id
  )
cleaned_chrystia_tweets

### Filter out Tweets sent by Chrystia & replies in languages other than English ###
# Code to filter out Tweets sent by Chrystia referenced from: https://www.marsja.se/how-to-remove-delete-row-in-r-with-na-with-conditions-duplicated/
final_cleaned_chrystia_tweets <-
  filter(cleaned_chrystia_tweets, User_id != "203132018")

final_cleaned_chrystia_tweets1 <-
  final_cleaned_chrystia_tweets[-c(606, 1082, 2095), ]
final_cleaned_chrystia_tweets1

# Save cleaned Tweets
write_csv(x = final_cleaned_chrystia_tweets1, file = "Outputs/Data/Chrystia/final_cleaned_chrystia_tweets.csv")