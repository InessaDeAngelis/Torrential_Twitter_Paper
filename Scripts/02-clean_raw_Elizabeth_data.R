#### Preamble ####
# Purpose: Clean raw @elizabethmay Tweets 
# Author: Inessa De Angelis
# Date: 23 October 2023
# Contact: inessa.deangelis@mail.utoronto.ca 
# License: MIT
# Pre-requisites
  # 01-download_Elizabeth_data.R

#### Workspace setup ####
library(tidyverse)
library(janitor)

##### STEP 1 - eliminate extra columns & combine user info and tweet text datasets #####
### Clean December 17 Tweets ###
# Read in Tweets #
raw_liz_tweets_dec_17 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_dec_17.csv")
show_col_types = FALSE

raw_liz_tweets_dec_17_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_dec_17_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_dec_17 =
  raw_liz_tweets_dec_17 |>
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
trial_liz_dec_17

trial_liz_dec_17_2 =
  raw_liz_tweets_dec_17_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_dec_17_2

combined_liz_tweets_dec_17 <-
  cbind(trial_liz_dec_17, trial_liz_dec_17_2)

# Save dataset #
write_csv(x = combined_liz_tweets_dec_17, file = "Outputs/Data/Elizabeth/combined_liz_tweets_dec_17.csv")

### Clean February 13 Tweets ###
# Read in Tweets #
raw_liz_tweets_feb_13 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_feb_13.csv")
show_col_types = FALSE

raw_liz_tweets_feb_13_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_feb_13_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_feb_13 =
  raw_liz_tweets_feb_13 |>
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
trial_liz_feb_13

trial_liz_feb_13_2 =
  raw_liz_tweets_feb_13_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_feb_13_2

combined_liz_tweets_feb_13 <-
  cbind(trial_liz_feb_13, trial_liz_feb_13_2)

# Save dataset #
write_csv(x = combined_liz_tweets_feb_13, file = "Outputs/Data/Elizabeth/combined_liz_tweets_feb_13.csv")

### Clean January 12 Tweets ###
# Read in Tweets #
raw_liz_tweets_jan_12 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_jan_12.csv")
show_col_types = FALSE

raw_liz_tweets_jan_12_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_jan_12_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_jan_12 =
  raw_liz_tweets_jan_12 |>
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
trial_liz_jan_12

trial_liz_jan_12_2 =
  raw_liz_tweets_jan_12_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_jan_12_2

combined_liz_tweets_jan_12 <-
  cbind(trial_liz_jan_12, trial_liz_jan_12_2)

# Save dataset #
write_csv(x = combined_liz_tweets_jan_12, file = "Outputs/Data/Elizabeth/combined_liz_tweets_jan_12.csv")

### Clean June 12 Tweets ###
# Read in Tweets #
raw_liz_tweets_jun_12 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_jun_12.csv")
show_col_types = FALSE

raw_liz_tweets_jun_12_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_jun_12_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_jun_12 =
  raw_liz_tweets_jun_12 |>
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
trial_liz_jun_12

trial_liz_jun_12_2 =
  raw_liz_tweets_jun_12_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_jun_12_2

combined_liz_tweets_jun_12 <-
  cbind(trial_liz_jun_12, trial_liz_jun_12_2)

# Save dataset #
write_csv(x = combined_liz_tweets_jun_12, file = "Outputs/Data/Elizabeth/combined_liz_tweets_jun_12.csv")

### Clean June 18 Tweets ###
# Read in Tweets #
raw_liz_tweets_jun_18 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_jun_18.csv")
show_col_types = FALSE

raw_liz_tweets_jun_18_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_jun_18_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_jun_18 =
  raw_liz_tweets_jun_18 |>
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
trial_liz_jun_18

trial_liz_jun_18_2 =
  raw_liz_tweets_jun_18_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_jun_18_2

combined_liz_tweets_jun_18 <-
  cbind(trial_liz_jun_18, trial_liz_jun_18_2)

# Save dataset #
write_csv(x = combined_liz_tweets_jun_18, file = "Outputs/Data/Elizabeth/combined_liz_tweets_jun_18.csv")

### Clean June 20 Tweets ###
# Read in Tweets #
raw_liz_tweets_jun_20 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_jun_20.csv")
show_col_types = FALSE

raw_liz_tweets_jun_20_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_jun_20_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_jun_20 =
  raw_liz_tweets_jun_20 |>
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
trial_liz_jun_20

trial_liz_jun_20_2 =
  raw_liz_tweets_jun_20_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_jun_20_2

combined_liz_tweets_jun_20 <-
  cbind(trial_liz_jun_20, trial_liz_jun_20_2)

# Save dataset #
write_csv(x = combined_liz_tweets_jun_20, file = "Outputs/Data/Elizabeth/combined_liz_tweets_jun_20.csv")

### Clean June 25 Tweets ###
# Read in Tweets #
raw_liz_tweets_jun_25 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_jun_25.csv")
show_col_types = FALSE

raw_liz_tweets_jun_25_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_jun_25_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_jun_25 =
  raw_liz_tweets_jun_25 |>
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
trial_liz_jun_25

trial_liz_jun_25_2 =
  raw_liz_tweets_jun_25_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_jun_25_2

combined_liz_tweets_jun_25 <-
  cbind(trial_liz_jun_25, trial_liz_jun_25_2)

# Save dataset #
write_csv(x = combined_liz_tweets_jun_25, file = "Outputs/Data/Elizabeth/combined_liz_tweets_jun_25.csv")

### Clean June 27 Tweets ###
# Read in Tweets #
raw_liz_tweets_jun_27 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_jun_27.csv")
show_col_types = FALSE

raw_liz_tweets_jun_27_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_jun_27_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_jun_27 =
  raw_liz_tweets_jun_27 |>
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
trial_liz_jun_27

trial_liz_jun_27_2 =
  raw_liz_tweets_jun_27_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_jun_27_2

combined_liz_tweets_jun_27 <-
  cbind(trial_liz_jun_27, trial_liz_jun_27_2)

# Save dataset #
write_csv(x = combined_liz_tweets_jun_27, file = "Outputs/Data/Elizabeth/combined_liz_tweets_jun_27.csv")

### Clean March 20 Tweets ###
# Read in Tweets #
raw_liz_tweets_mar_20 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_mar_20.csv")
show_col_types = FALSE

raw_liz_tweets_mar_20_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_mar_20_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_mar_20 =
  raw_liz_tweets_mar_20 |>
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
trial_liz_mar_20

trial_liz_mar_20_2 =
  raw_liz_tweets_mar_20_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_mar_20_2

combined_liz_tweets_mar_20 <-
  cbind(trial_liz_mar_20, trial_liz_mar_20_2)

# Save dataset #
write_csv(x = combined_liz_tweets_mar_20, file = "Outputs/Data/Elizabeth/combined_liz_tweets_mar_20.csv")

### Clean March 23 Tweets ###
# Read in Tweets #
raw_liz_tweets_mar_23 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_mar_23.csv")
show_col_types = FALSE

raw_liz_tweets_mar_23_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_mar_23_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_mar_23 =
  raw_liz_tweets_mar_23 |>
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
trial_liz_mar_23

trial_liz_mar_23_2 =
  raw_liz_tweets_mar_23_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_mar_23_2

combined_liz_tweets_mar_23 <-
  cbind(trial_liz_mar_23, trial_liz_mar_23_2)

# Save dataset #
write_csv(x = combined_liz_tweets_mar_23, file = "Outputs/Data/Elizabeth/combined_liz_tweets_mar_23.csv")

### Clean March 28 Tweets ###
# Read in Tweets #
raw_liz_tweets_mar_28 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_mar_28.csv")
show_col_types = FALSE

raw_liz_tweets_mar_28_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_mar_28_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_mar_28 =
  raw_liz_tweets_mar_28 |>
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
trial_liz_mar_28

trial_liz_mar_28_2 =
  raw_liz_tweets_mar_28_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_mar_28_2

combined_liz_tweets_mar_28 <-
  cbind(trial_liz_mar_28, trial_liz_mar_28_2)

# Remove row with a bunch of missing data #
combined_liz_tweets_mar_28_1 <- combined_liz_tweets_mar_28[-18,]
combined_liz_tweets_mar_28_1

# Save dataset #
write_csv(x = combined_liz_tweets_mar_28_1, file = "Outputs/Data/Elizabeth/combined_liz_tweets_mar_28.csv")

### Clean March 29 (1) Tweets ###
# Read in Tweets #
raw_liz_tweets_mar_29 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_mar_29.csv")
show_col_types = FALSE

raw_liz_tweets_mar_29_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_mar_29_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_mar_29 =
  raw_liz_tweets_mar_29 |>
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
trial_liz_mar_29

trial_liz_mar_29_2 =
  raw_liz_tweets_mar_29_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_mar_29_2

combined_liz_tweets_mar_29 <-
  cbind(trial_liz_mar_29, trial_liz_mar_29_2)

# Save dataset #
write_csv(x = combined_liz_tweets_mar_29, file = "Outputs/Data/Elizabeth/combined_liz_tweets_mar_29.csv")

### Clean March 29 (2) Tweets ###
# Read in Tweets #
raw_liz_tweets_mar_29_1 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_mar_29_3.csv")
show_col_types = FALSE

raw_liz_tweets_mar_29_3 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_mar_29_4.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_mar_29_1 =
  raw_liz_tweets_mar_29_1 |>
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
trial_liz_mar_29_1

trial_liz_mar_29_3 =
  raw_liz_tweets_mar_29_3 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_mar_29_3

combined_liz_tweets_mar_29_1 <-
  cbind(trial_liz_mar_29_1, trial_liz_mar_29_3)

# Save dataset #
write_csv(x = combined_liz_tweets_mar_29_1, file = "Outputs/Data/Elizabeth/combined_liz_tweets_mar_29_1.csv")

### Clean May 1 Tweets ###
# Read in Tweets #
raw_liz_tweets_may_1 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_may_1.csv")
show_col_types = FALSE

raw_liz_tweets_may_1_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_may_1_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_may_1 =
  raw_liz_tweets_may_1 |>
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
trial_liz_may_1

trial_liz_may_1_2 =
  raw_liz_tweets_may_1_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_may_1_2

combined_liz_tweets_may_1 <-
  cbind(trial_liz_may_1, trial_liz_may_1_2)

# Save dataset #
write_csv(x = combined_liz_tweets_may_1, file = "Outputs/Data/Elizabeth/combined_liz_tweets_may_1.csv")

### Clean November 4 (1) Tweets ###
# Read in Tweets #
raw_liz_tweets_no_4 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_no_4.csv")
show_col_types = FALSE

raw_liz_tweets_no_4_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_no_4_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_no_4 =
  raw_liz_tweets_no_4 |>
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
trial_liz_no_4

trial_liz_no_4_2 =
  raw_liz_tweets_no_4_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_no_4_2

combined_liz_tweets_nov_4 <- cbind(trial_liz_no_4, trial_liz_no_4_2)

# Save dataset #
write_csv(x = combined_liz_tweets_nov_4, file = "Outputs/Data/Elizabeth/combined_liz_tweets_nov_4.csv")

### Clean November 4 (2) Tweets ###
# Read in Tweets #
raw_liz_tweets_nov_4 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_nov_4.csv")
show_col_types = FALSE

raw_liz_tweets_nov_4_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_nov_4_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_nov_4 =
  raw_liz_tweets_nov_4 |>
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
trial_liz_nov_4

trial_liz_nov_4_2 =
  raw_liz_tweets_nov_4_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_nov_4_2

combined_liz_tweets_nov_4_1 <-
  cbind(trial_liz_nov_4, trial_liz_nov_4_2)

# Save dataset #
write_csv(x = combined_liz_tweets_nov_4_1, file = "Outputs/Data/Elizabeth/combined_liz_tweets_nov_4_1.csv")

### Clean November 18 Tweets ###
# Read in Tweets #
raw_liz_tweets_nov_18 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_nov_18.csv")
show_col_types = FALSE

raw_liz_tweets_nov_18_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_nov_18_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_nov_18 =
  raw_liz_tweets_nov_18 |>
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
trial_liz_nov_18

trial_liz_nov_18_2 =
  raw_liz_tweets_nov_18_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_nov_18_2

combined_liz_tweets_nov_18 <-
  cbind(trial_liz_nov_18, trial_liz_nov_18_2)

# Save dataset #
write_csv(x = combined_liz_tweets_nov_18, file = "Outputs/Data/Elizabeth/combined_liz_tweets_nov_18.csv")

### Clean October 2 Tweets ###
# Read in Tweets #
raw_liz_tweets_oct_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_oct_2.csv")
show_col_types = FALSE

raw_liz_tweets_oct_2_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_oct_2_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_oct_2 =
  raw_liz_tweets_oct_2 |>
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
trial_liz_oct_2

trial_liz_oct_2_2 =
  raw_liz_tweets_oct_2_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_oct_2_2

combined_liz_tweets_oct_2 <-
  cbind(trial_liz_oct_2, trial_liz_oct_2_2)

# Save dataset #
write_csv(x = combined_liz_tweets_oct_2, file = "Outputs/Data/Elizabeth/combined_liz_tweets_oct_2.csv")

### Clean October 3 Tweets ###
# Read in Tweets #
raw_liz_tweets_oct_3 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_oct_3.csv")
show_col_types = FALSE

raw_liz_tweets_oct_3_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_oct_3_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_oct_3 =
  raw_liz_tweets_oct_3 |>
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
trial_liz_oct_3

trial_liz_oct_3_2 =
  raw_liz_tweets_oct_3_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_oct_3_2

combined_liz_tweets_oct_3 <-
  cbind(trial_liz_oct_3, trial_liz_oct_3_2)

# Save dataset #
write_csv(x = combined_liz_tweets_oct_3, file = "Outputs/Data/Elizabeth/combined_liz_tweets_oct_3.csv")

### Clean October 13 Tweets ###
# Read in Tweets #
raw_liz_tweets_oct_13 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_oct_13.csv")
show_col_types = FALSE

raw_liz_tweets_oct_13_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_oct_13_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_oct_13 =
  raw_liz_tweets_oct_13 |>
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
trial_liz_oct_13

trial_liz_oct_13_2 =
  raw_liz_tweets_oct_13_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_oct_13_2

combined_liz_tweets_oct_13 <-
  cbind(trial_liz_oct_13, trial_liz_oct_13_2)

# Save dataset #
write_csv(x = combined_liz_tweets_oct_13, file = "Outputs/Data/Elizabeth/combined_liz_tweets_oct_13.csv")

### Clean October 18 Tweets ###
# Read in Tweets #
raw_liz_tweets_oct_18 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_oct_18.csv")
show_col_types = FALSE

raw_liz_tweets_oct_18_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_oct_18_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_oct_18 =
  raw_liz_tweets_oct_18 |>
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
trial_liz_oct_18

trial_liz_oct_18_2 =
  raw_liz_tweets_oct_18_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_oct_18_2

combined_liz_tweets_oct_18 <-
  cbind(trial_liz_oct_18, trial_liz_oct_18_2)

# Save dataset #
write_csv(x = combined_liz_tweets_oct_18, file = "Outputs/Data/Elizabeth/combined_liz_tweets_oct_18.csv")

### Clean October 21 Tweets ###
# Read in Tweets #
raw_liz_tweets_oct_21 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_oct_21.csv")
show_col_types = FALSE

raw_liz_tweets_oct_21_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_oct_21_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_oct_21 =
  raw_liz_tweets_oct_21 |>
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
trial_liz_oct_21

trial_liz_oct_21_2 =
  raw_liz_tweets_oct_21_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_oct_21_2

combined_liz_tweets_oct_21 <-
  cbind(trial_liz_oct_21, trial_liz_oct_21_2)

# Save dataset #
write_csv(x = combined_liz_tweets_oct_21, file = "Outputs/Data/Elizabeth/combined_liz_tweets_oct_21.csv")

### Clean October 23 Tweets ###
# Read in Tweets #
raw_liz_tweets_oct_23 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_oct_23.csv")
show_col_types = FALSE

raw_liz_tweets_oct_23_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_oct_23_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_oct_23 =
  raw_liz_tweets_oct_23 |>
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
trial_liz_oct_23

trial_liz_oct_23_2 =
  raw_liz_tweets_oct_21_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_oct_23_2

combined_liz_tweets_oct_23 <-
  cbind(trial_liz_oct_23, trial_liz_oct_23_2)

# Save dataset #
write_csv(x = combined_liz_tweets_oct_23, file = "Outputs/Data/Elizabeth/combined_liz_tweets_oct_23.csv")

### Clean September 9 Tweets ###
# Read in Tweets #
raw_liz_tweets_sep_9 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_sep_9.csv")
show_col_types = FALSE

raw_liz_tweets_sep_9_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_sep_9_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_sep_9 =
  raw_liz_tweets_sep_9 |>
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
trial_liz_sep_9

trial_liz_sep_9_2 =
  raw_liz_tweets_sep_9_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_sep_9_2

combined_liz_tweets_sep_9 <-
  cbind(trial_liz_sep_9, trial_liz_sep_9_2)

# Save dataset #
write_csv(x = combined_liz_tweets_sep_9, file = "Outputs/Data/Elizabeth/combined_liz_tweets_sep_9.csv")

### Clean September 10 Tweets ###
# Read in Tweets #
raw_liz_tweets_sep_10 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_sep_10.csv")
show_col_types = FALSE

raw_liz_tweets_sep_10_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_sep_10_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_sep_10 =
  raw_liz_tweets_sep_10 |>
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
trial_liz_sep_10

trial_liz_sep_10_2 =
  raw_liz_tweets_sep_10_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_sep_10_2

combined_liz_tweets_sep_10 <-
  cbind(trial_liz_sep_10, trial_liz_sep_10_2)

# Save dataset #
write_csv(x = combined_liz_tweets_sep_10, file = "Outputs/Data/Elizabeth/combined_liz_tweets_sep_10.csv")

### Clean September 15 Tweets ###
# Read in Tweets #
raw_liz_tweets_sep_15 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_sep_15.csv")
show_col_types = FALSE

raw_liz_tweets_sep_15_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_sep_15_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_sep_15 =
  raw_liz_tweets_sep_15 |>
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
trial_liz_sep_15

trial_liz_sep_15_2 =
  raw_liz_tweets_sep_15_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_sep_15_2

combined_liz_tweets_sep_15 <-
  cbind(trial_liz_sep_15, trial_liz_sep_15_2)

# Save dataset #
write_csv(x = combined_liz_tweets_sep_15, file = "Outputs/Data/Elizabeth/combined_liz_tweets_sep_15.csv")

### Clean September 21 Tweets ###
# Read in Tweets #
raw_liz_tweets_sep_21 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_sep_21.csv")
show_col_types = FALSE

raw_liz_tweets_sep_21_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_sep_21_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_sep_21 =
  raw_liz_tweets_sep_21 |>
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
trial_liz_sep_21

trial_liz_sep_21_2 =
  raw_liz_tweets_sep_21_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_sep_21_2

combined_liz_tweets_sep_21 <-
  cbind(trial_liz_sep_21, trial_liz_sep_21_2)

# Save dataset #
write_csv(x = combined_liz_tweets_sep_21, file = "Outputs/Data/Elizabeth/combined_liz_tweets_sep_21.csv")

### Clean September 22 Tweets ###
# Read in Tweets #
raw_liz_tweets_sep_22 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_sep_22.csv")
show_col_types = FALSE

raw_liz_tweets_sep_22_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_sep_22_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_sep_22 =
  raw_liz_tweets_sep_22 |>
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
trial_liz_sep_22

trial_liz_sep_22_2 =
  raw_liz_tweets_sep_22_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_sep_22_2

combined_liz_tweets_sep_22 <-
  cbind(trial_liz_sep_22, trial_liz_sep_22_2)

# Save dataset #
write_csv(x = combined_liz_tweets_sep_22, file = "Outputs/Data/Elizabeth/combined_liz_tweets_sep_22.csv")

### Clean September 27 Tweets ###
# Read in Tweets #
raw_liz_tweets_sep_27 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_sep_27.csv")
show_col_types = FALSE

raw_liz_tweets_sep_27_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_sep_27_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_sep_27 =
  raw_liz_tweets_sep_27 |>
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
trial_liz_sep_27

trial_liz_sep_27_2 =
  raw_liz_tweets_sep_27_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_sep_27_2

combined_liz_tweets_sep_27 <-
  cbind(trial_liz_sep_27, trial_liz_sep_27_2)

# Save dataset #
write_csv(x = combined_liz_tweets_sep_27, file = "Outputs/Data/Elizabeth/combined_liz_tweets_sep_27.csv")

### Clean September 28 Tweets ###
# Read in Tweets #
raw_liz_tweets_sep_28 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_sep_28.csv")
show_col_types = FALSE

raw_liz_tweets_sep_28_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_sep_28_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_sep_28 =
  raw_liz_tweets_sep_28 |>
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
trial_liz_sep_28

trial_liz_sep_28_2 =
  raw_liz_tweets_sep_28_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_sep_28_2

combined_liz_tweets_sep_28 <-
  cbind(trial_liz_sep_28, trial_liz_sep_28_2)

# Save dataset #
write_csv(x = combined_liz_tweets_sep_28, file = "Outputs/Data/Elizabeth/combined_liz_tweets_sep_28.csv")

### Clean October 26 Tweets ###
# Read in Tweets #
raw_liz_tweets_oct_26 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_oct_26.csv")
show_col_types = FALSE

raw_liz_tweets_oct_26_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_oct_26_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_oct_26 =
  raw_liz_tweets_oct_26 |>
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
trial_liz_oct_26

trial_liz_oct_26_2 =
  raw_liz_tweets_oct_26_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_oct_26_2

combined_liz_tweets_oct_26 <-
  cbind(trial_liz_oct_26, trial_liz_oct_26_2)

# Save dataset #
write_csv(x = combined_liz_tweets_oct_26, file = "Outputs/Data/Elizabeth/combined_liz_tweets_oct_26.csv")

#### Clean July 27 Tweets ####
# Read in Tweets #
raw_liz_tweets_jul_27 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_jul_27.csv")
show_col_types = FALSE

raw_liz_tweets_jul_27_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_jul_27_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_jul_27 =
  raw_liz_tweets_jul_27 |>
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
trial_liz_jul_27

trial_liz_jul_27_2 =
  raw_liz_tweets_jul_27_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_jul_27_2

combined_liz_tweets_jul_27 <-
  cbind(trial_liz_jul_27, trial_liz_jul_27_2)

# Save dataset #
write_csv(x = combined_liz_tweets_jul_27, file = "Outputs/Data/Elizabeth/combined_liz_tweets_jul_27.csv")

### Clean June 12 Tweets ###
# Read in Tweets #
raw_liz_tweets_jun_12 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_jun_12.csv")
show_col_types = FALSE

raw_liz_tweets_jun_12_2 <-
  read_csv("Inputs/Data/Elizabeth/raw_liz_tweets_jun_12_2.csv")
show_col_types = FALSE

# Cleaning: select columns of interest #
trial_liz_jun_12 =
  raw_liz_tweets_jun_12 |>
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
trial_liz_jun_12

trial_liz_jun_12_2 =
  raw_liz_tweets_jun_12_2 |>
  select(text,
         author_id,
         tweet_id,
         conversation_id)
trial_liz_jun_12_2

combined_liz_tweets_jun_12 <-
  cbind(trial_liz_jun_12, trial_liz_jun_12_2)

# Save dataset #
write_csv(x = combined_liz_tweets_jun_12, file = "Outputs/Data/Elizabeth/combined_liz_tweets_jun_12.csv")

##### STEP 2 - combine all individual datasets #####
# Combined chronologically starting at the top with September 2022 -> October 2023
raw_all_liz_tweets <-
  rbind(
    combined_liz_tweets_sep_9,
    combined_liz_tweets_sep_15,
    combined_liz_tweets_sep_21,
    combined_liz_tweets_sep_22,
    combined_liz_tweets_sep_27,
    combined_liz_tweets_sep_28,
    combined_liz_tweets_oct_2,
    combined_liz_tweets_oct_3,
    combined_liz_tweets_oct_21,
    combined_liz_tweets_oct_23,
    combined_liz_tweets_nov_4_1,
    combined_liz_tweets_nov_4,
    combined_liz_tweets_nov_18,
    combined_liz_tweets_dec_17,
    combined_liz_tweets_jan_12,
    combined_liz_tweets_feb_13,
    combined_liz_tweets_mar_20,
    combined_liz_tweets_mar_23,
    combined_liz_tweets_mar_28_1,
    combined_liz_tweets_mar_29,
    combined_liz_tweets_mar_29_1,
    combined_liz_tweets_may_1,
    combined_liz_tweets_jun_12,
    combined_liz_tweets_jun_18,
    combined_liz_tweets_jun_20,
    combined_liz_tweets_jun_25,
    combined_liz_tweets_jun_27,
    combined_liz_tweets_jul_27,
    combined_liz_tweets_sep_10,
    combined_liz_tweets_oct_13,
    combined_liz_tweets_oct_18,
    combined_liz_tweets_oct_26
  )

write_csv(x = raw_all_liz_tweets, file = "Outputs/Data/Elizabeth/raw_all_liz_tweets.csv")

##### STEP 3 - Eliminate extra columns, rename columns, update values #####
cleaned_liz_tweets =
  raw_all_liz_tweets |>
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
                                Verified == TRUE ~ "Yes", )) |>
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
cleaned_liz_tweets

### Filter out Tweets sent by Elizabeth ###
# Code to filter out Tweets sent by Elizabeth referenced from: https://www.marsja.se/how-to-remove-delete-row-in-r-with-na-with-conditions-duplicated/
final_cleaned_liz_tweets <-
  filter(cleaned_liz_tweets, User_id != "16220555")
final_cleaned_liz_tweets

# Save tweets #
write_csv(x = final_cleaned_liz_tweets, file = "Outputs/Data/Elizabeth/final_cleaned_liz_tweets.csv")