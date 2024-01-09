#### Preamble ####
# Purpose: Multi-step cleaning of @laurel_bc Tweets
# Author: Inessa De Angelis
# Date: 18 October 2023
# Contact: inessa.deangelis@mail.utoronto.ca 
# License: MIT
# Pre-requisites
  # 01-download_Laurel_data.R

#### Workspace setup ####
library(tidyverse)
library(janitor)

##### STEP 1 - eliminate extra columns & combine user info and tweet text datasets #####
### Clean April 12 Tweets ###
# Read in Tweets #
raw_laurel_tweets_apr_12 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_apr_12.csv")
show_col_types = FALSE

raw_laurel_tweets_apr_12_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_apr_12_2.csv")
show_col_types = FALSE 

# Cleaning: select columns of interest #
trial_laurel_apr_12 =
  raw_laurel_tweets_apr_12 |>
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
trial_laurel_apr_12

trial_laurel_apr_12_2 =
  raw_laurel_tweets_apr_12_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_apr_12_2

combined_laurel_tweets_apr_12 <- cbind(trial_laurel_apr_12, trial_laurel_apr_12_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_apr_12, file = "Outputs/Data/Laurel/combined_laurel_tweets_apr_12.csv")

### Clean April 21 Tweets ###
# Read in Tweets #
raw_laurel_tweets_apr_21 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_apr_21.csv")
show_col_types = FALSE

raw_laurel_tweets_apr_21_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_apr_21_2.csv")
show_col_types = FALSE 

# Cleaning: select columns of interest #
trial_laurel_apr_21 =
  raw_laurel_tweets_apr_21 |>
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
trial_laurel_apr_21

trial_laurel_apr_21_2 =
  raw_laurel_tweets_apr_21_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_apr_21_2

combined_laurel_tweets_apr_21 <- cbind(trial_laurel_apr_21, trial_laurel_apr_21_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_apr_21, file = "Outputs/Data/Laurel/combined_laurel_tweets_apr_21.csv")

### Clean April 22 Tweets ###
# Read in Tweets #
raw_laurel_tweets_apr_22 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_apr_22.csv")
show_col_types = FALSE

raw_laurel_tweets_apr_22_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_apr_22_2.csv")
show_col_types = FALSE 

# Cleaning: select columns of interest #
trial_laurel_apr_22 =
  raw_laurel_tweets_apr_22 |>
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
trial_laurel_apr_22

trial_laurel_apr_22_2 =
  raw_laurel_tweets_apr_22_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_apr_22_2

combined_laurel_tweets_apr_22 <- cbind(trial_laurel_apr_22, trial_laurel_apr_22_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_apr_22, file = "Outputs/Data/Laurel/combined_laurel_tweets_apr_22.csv")

### Clean August 17 Tweets ###
# Read in Tweets #
raw_laurel_tweets_aug_17 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_aug_17.csv")
show_col_types = FALSE

raw_laurel_tweets_aug_17_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_aug_17_2.csv")
show_col_types = FALSE 

# Cleaning: select columns of interest #
trial_laurel_aug_17 =
  raw_laurel_tweets_aug_17 |>
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
trial_laurel_aug_17

trial_laurel_aug_17_2 =
  raw_laurel_tweets_aug_17_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_aug_17_2 

combined_laurel_tweets_aug_17 <- cbind(trial_laurel_aug_17, trial_laurel_aug_17_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_aug_17, file = "Outputs/Data/Laurel/combined_laurel_tweets_aug_17.csv")

### Clean December 8 Tweets ###
# Read in Tweets #
raw_laurel_tweets_dec_8 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_dec_8.csv")
  show_col_types = FALSE
  
raw_laurel_tweets_dec_8_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_dec_8_2.csv")
  show_col_types = FALSE 
  
# Cleaning: select columns of interest #
trial_laurel_dec_8 =
    raw_laurel_tweets_dec_8 |>
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
trial_laurel_dec_8

trial_laurel_dec_8_2 =
  raw_laurel_tweets_dec_8_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_dec_8_2

combined_laurel_tweets_dec_8 <- cbind(trial_laurel_dec_8, trial_laurel_dec_8_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_dec_8, file = "Outputs/Data/Laurel/combined_laurel_tweets_dec_8.csv")

### Clean Feb 3 Tweets ###
# Read in Tweets #
raw_laurel_tweets_feb_3 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_feb_3.csv")
show_col_types = FALSE

raw_laurel_tweets_feb_3_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_feb_3_2.csv")
show_col_types = FALSE 

# Cleaning: select columns of interest #
trial_laurel_feb_3 =
  raw_laurel_tweets_feb_3 |>
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
trial_laurel_feb_3

trial_laurel_feb_3_2 =
  raw_laurel_tweets_feb_3_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_feb_3_2

combined_laurel_tweets_feb_3 <- cbind(trial_laurel_feb_3, trial_laurel_feb_3_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_feb_3, file = "Outputs/Data/Laurel/combined_laurel_tweets_feb_3.csv")

### Clean Feb 10 Tweets ###
# Read in Tweets #
raw_laurel_tweets_feb_10 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_feb_10.csv")
show_col_types = FALSE

raw_laurel_tweets_feb_10_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_feb_10_2.csv")
show_col_types = FALSE 

# Cleaning: select columns of interest #
trial_laurel_feb_10 =
  raw_laurel_tweets_feb_10 |>
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
trial_laurel_feb_10

trial_laurel_feb_10_2 =
  raw_laurel_tweets_feb_10_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_feb_10_2

combined_laurel_tweets_feb_10 <- cbind(trial_laurel_feb_10, trial_laurel_feb_10_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_feb_10, file = "Outputs/Data/Laurel/combined_laurel_tweets_feb_10.csv")

### Clean Feb 14 Tweets ###
# Read in Tweets #
raw_laurel_tweets_feb_14 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_feb_14.csv")
show_col_types = FALSE

raw_laurel_tweets_feb_14_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_feb_14_2.csv")
show_col_types = FALSE 

# Cleaning: select columns of interest #
trial_laurel_feb_14 =
  raw_laurel_tweets_feb_14 |>
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
trial_laurel_feb_14

trial_laurel_feb_14_2 =
  raw_laurel_tweets_feb_14_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_feb_14_2

combined_laurel_tweets_feb_14 <- cbind(trial_laurel_feb_14, trial_laurel_feb_14_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_feb_14, file = "Outputs/Data/Laurel/combined_laurel_tweets_feb_14.csv")

### Clean Feb 21 Tweets ###
# Read in Tweets #
raw_laurel_tweets_feb_21 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_feb_21.csv")
show_col_types = FALSE

raw_laurel_tweets_feb_21_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_feb_21_2.csv")
show_col_types = FALSE 

# Cleaning: select columns of interest #
trial_laurel_feb_21 =
  raw_laurel_tweets_feb_21 |>
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
trial_laurel_feb_21

trial_laurel_feb_21_2 =
  raw_laurel_tweets_feb_21_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_feb_21_2

combined_laurel_tweets_feb_21 <- cbind(trial_laurel_feb_21, trial_laurel_feb_21_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_feb_14, file = "Outputs/Data/Laurel/combined_laurel_tweets_feb_14.csv")

### Clean Jan 1 Tweets ###
# Read in Tweets #
raw_laurel_tweets_jan_1 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_jan_1.csv")
show_col_types = FALSE

raw_laurel_tweets_jan_1_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_jan_1_2.csv")
show_col_types = FALSE 

# Cleaning: select columns of interest #
trial_laurel_jan_1 =
  raw_laurel_tweets_jan_1 |>
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
trial_laurel_jan_1

trial_laurel_jan_1_2 =
  raw_laurel_tweets_jan_1_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_jan_1_2

combined_laurel_tweets_jan_1 <- cbind(trial_laurel_jan_1, trial_laurel_jan_1_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_jan_1, file = "Outputs/Data/Laurel/combined_laurel_tweets_jan_1.csv")

### Clean Jan 31 Tweets ###
# Read in Tweets #
raw_laurel_tweets_jan_31 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_jan_31.csv")
show_col_types = FALSE

raw_laurel_tweets_jan_31_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_jan_31_2.csv")
show_col_types = FALSE 

# Cleaning: select columns of interest #
trial_laurel_jan_31 =
  raw_laurel_tweets_jan_31 |>
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
trial_laurel_jan_31

trial_laurel_jan_31_2 =
  raw_laurel_tweets_jan_31_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_jan_31_2

combined_laurel_tweets_jan_31 <- cbind(trial_laurel_jan_31, trial_laurel_jan_31_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_jan_31, file = "Outputs/Data/Laurel/combined_laurel_tweets_jan_31.csv")

### Clean June 7 Tweets ###
# Read in Tweets #
raw_laurel_tweets_jun_7 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_jun_7.csv")
show_col_types = FALSE

raw_laurel_tweets_jun_7_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_jun_7_2.csv")
show_col_types = FALSE 

# Cleaning: select columns of interest #
trial_laurel_jun_7 =
  raw_laurel_tweets_jun_7 |>
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
trial_laurel_jun_7

trial_laurel_jun_7_2 =
  raw_laurel_tweets_jun_7_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_jun_7_2

combined_laurel_tweets_jun_7 <- cbind(trial_laurel_jun_7, trial_laurel_jun_7_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_jun_7, file = "Outputs/Data/Laurel/combined_laurel_tweets_jun_7.csv")

### Clean June 12 Tweets ###
# Read in Tweets #
raw_laurel_tweets_jun_12 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_jun_12.csv")
show_col_types = FALSE

raw_laurel_tweets_jun_12_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_jun_12_2.csv")
show_col_types = FALSE 

# Cleaning: select columns of interest #
trial_laurel_jun_12 =
  raw_laurel_tweets_jun_12 |>
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
trial_laurel_jun_12

trial_laurel_jun_12_2 =
  raw_laurel_tweets_jun_12_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_jun_12_2

combined_laurel_tweets_jun_12 <- cbind(trial_laurel_jun_12, trial_laurel_jun_12_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_jun_12, file = "Outputs/Data/Laurel/combined_laurel_tweets_jun_12.csv")

### Clean June 23 Tweets ###
# Read in Tweets #
raw_laurel_tweets_jun_23 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_jun_23.csv")
show_col_types = FALSE

raw_laurel_tweets_jun_23_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_jun_23_2.csv")
show_col_types = FALSE 

# Cleaning: select columns of interest #
trial_laurel_jun_23 =
  raw_laurel_tweets_jun_23 |>
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
trial_laurel_jun_23

trial_laurel_jun_23_2 =
  raw_laurel_tweets_jun_23_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_jun_23_2

combined_laurel_tweets_jun_23 <- cbind(trial_laurel_jun_23, trial_laurel_jun_23_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_jun_23, file = "Outputs/Data/Laurel/combined_laurel_tweets_jun_23.csv")

### Clean March 10 Tweets ###
# Read in Tweets #
raw_laurel_tweets_mar_10 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_mar_10.csv")
show_col_types = FALSE

raw_laurel_tweets_mar_10_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_mar_10_2.csv")
show_col_types = FALSE 

# Cleaning: select columns of interest #
trial_laurel_mar_10 =
  raw_laurel_tweets_mar_10 |>
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
trial_laurel_mar_10

trial_laurel_mar_10_2 =
  raw_laurel_tweets_mar_10_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_mar_10_2

combined_laurel_tweets_mar_10 <- cbind(trial_laurel_mar_10, trial_laurel_mar_10_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_mar_10, file = "Outputs/Data/Laurel/combined_laurel_tweets_mar_10.csv")

### Clean May 2 Tweets ###
# Read in Tweets #
raw_laurel_tweets_may_2<-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_may_2.csv")
show_col_types = FALSE

raw_laurel_tweets_may_2_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_may_2_2.csv")
show_col_types = FALSE 

# Cleaning: select columns of interest #
trial_laurel_may_2 =
  raw_laurel_tweets_may_2 |>
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
trial_laurel_may_2

trial_laurel_may_2_2 =
  raw_laurel_tweets_may_2_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_may_2_2

combined_laurel_tweets_may_2 <- cbind(trial_laurel_may_2, trial_laurel_may_2_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_may_2, file = "Outputs/Data/Laurel/combined_laurel_tweets_may_2.csv")

### Clean May 16 Tweets ###
# Read in Tweets #
raw_laurel_tweets_may_16 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_may_16.csv")
show_col_types = FALSE

raw_laurel_tweets_may_16_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_may_16_2.csv")
show_col_types = FALSE 

# Cleaning: select columns of interest #
trial_laurel_may_16 =
  raw_laurel_tweets_may_16 |>
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
trial_laurel_may_16

trial_laurel_may_16_2 =
  raw_laurel_tweets_may_16_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_may_16_2

combined_laurel_tweets_may_16 <- cbind(trial_laurel_may_16, trial_laurel_may_16_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_may_16, file = "Outputs/Data/Laurel/combined_laurel_tweets_may_16.csv")

### Clean November 1 Tweets ###
# Read in Tweets #
raw_laurel_tweets_nov_1 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_nov_1.csv")
show_col_types = FALSE

raw_laurel_tweets_nov_1_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_nov_1_2.csv")
show_col_types = FALSE 

# Cleaning: select columns of interest #
trial_laurel_nov_1 =
  raw_laurel_tweets_nov_1 |>
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
trial_laurel_nov_1

trial_laurel_nov_1_2 =
  raw_laurel_tweets_nov_1_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_nov_1_2

combined_laurel_tweets_nov_1 <- cbind(trial_laurel_nov_1, trial_laurel_nov_1_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_nov_1, file = "Outputs/Data/Laurel/combined_laurel_tweets_nov_1.csv")

### Clean November 4 Tweets ###
# Read in Tweets #
raw_laurel_tweets_nov_4 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_nov_4.csv")
show_col_types = FALSE

raw_laurel_tweets_nov_4_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_nov_4_2.csv")
show_col_types = FALSE 

# Cleaning: select columns of interest #
trial_laurel_nov_4 =
  raw_laurel_tweets_nov_4 |>
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
trial_laurel_nov_4

trial_laurel_nov_4_2 =
  raw_laurel_tweets_nov_4_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_nov_4_2

combined_laurel_tweets_nov_4 <- cbind(trial_laurel_nov_4, trial_laurel_nov_4_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_nov_4, file = "Outputs/Data/Laurel/combined_laurel_tweets_nov_4.csv")

### Clean November 16 Tweets ###
# Read in Tweets #
raw_laurel_tweets_nov_16 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_nov_16.csv")
show_col_types = FALSE

raw_laurel_tweets_nov_16_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_nov_16_2.csv")
show_col_types = FALSE 

# Cleaning: select columns of interest #
trial_laurel_nov_16 =
  raw_laurel_tweets_nov_16 |>
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
trial_laurel_nov_16

trial_laurel_nov_16_2 =
  raw_laurel_tweets_nov_16_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_nov_16_2

combined_laurel_tweets_nov_16 <- cbind(trial_laurel_nov_16, trial_laurel_nov_16_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_nov_16, file = "Outputs/Data/Laurel/combined_laurel_tweets_nov_16.csv")

### Clean November 17 Tweets ###
# Read in Tweets #
raw_laurel_tweets_nov_17 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_nov_17.csv")
show_col_types = FALSE

raw_laurel_tweets_nov_17_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_nov_17_2.csv")
show_col_types = FALSE 

# Cleaning: select columns of interest #
trial_laurel_nov_17 =
  raw_laurel_tweets_nov_17 |>
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
trial_laurel_nov_17

trial_laurel_nov_17_2 =
  raw_laurel_tweets_nov_17_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_nov_17_2

combined_laurel_tweets_nov_17 <- cbind(trial_laurel_nov_17, trial_laurel_nov_17_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_nov_17, file = "Outputs/Data/Laurel/combined_laurel_tweets_nov_17.csv")

### Clean November 25 Tweets ###
# Read in Tweets #
raw_laurel_tweets_nov_25 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_nov_25.csv")
show_col_types = FALSE

raw_laurel_tweets_nov_25_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_nov_25_2.csv")
show_col_types = FALSE 

# Cleaning: select columns of interest #
trial_laurel_nov_25 =
  raw_laurel_tweets_nov_25 |>
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
trial_laurel_nov_25

trial_laurel_nov_25_2 =
  raw_laurel_tweets_nov_25_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_nov_25_2

combined_laurel_tweets_nov_25 <- cbind(trial_laurel_nov_25, trial_laurel_nov_25_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_nov_25, file = "Outputs/Data/Laurel/combined_laurel_tweets_nov_25.csv")

### Clean October 3 Tweets ###
# Read in Tweets #
raw_laurel_tweets_oct_3 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_oct_3.csv")
show_col_types = FALSE

raw_laurel_tweets_oct_3_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_oct_3_2.csv")
show_col_types = FALSE 

# Cleaning: select columns of interest #
trial_laurel_oct_3 =
  raw_laurel_tweets_oct_3 |>
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
trial_laurel_oct_3

trial_laurel_oct_3_2 =
  raw_laurel_tweets_oct_3_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_oct_3_2

combined_laurel_tweets_oct_3 <- cbind(trial_laurel_oct_3, trial_laurel_oct_3_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_oct_3, file = "Outputs/Data/Laurel/combined_laurel_tweets_oct_3.csv")

### Clean September 1 Tweets ###
# Read in Tweets #
raw_laurel_tweets_sep_1 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_sep_1.csv")
show_col_types = FALSE

raw_laurel_tweets_sep_1_2 <-
  read_csv("Inputs/Data/Laurel/raw_laurel_tweets_sep_1_2.csv")
show_col_types = FALSE 

# Cleaning: select columns of interest #
trial_laurel_sep_1 =
  raw_laurel_tweets_sep_1 |>
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
trial_laurel_sep_1

trial_laurel_sep_1_2 =
  raw_laurel_tweets_sep_1_2 |>
  select(
    text,
    author_id,
    tweet_id,
    conversation_id
    )
trial_laurel_sep_1_2

combined_laurel_tweets_sep_1 <- cbind(trial_laurel_sep_1, trial_laurel_sep_1_2)

# Save dataset #
write_csv(x = combined_laurel_tweets_sep_1, file = "Outputs/Data/Laurel/combined_laurel_tweets_sep_1.csv")

##### STEP 2 - combine all individual datasets #####
# Combined chronologically starting at the top with October 2022 -> October 2023
raw_all_laurel_tweets <-
  rbind(
    combined_laurel_tweets_nov_1,
    combined_laurel_tweets_nov_4,
    combined_laurel_tweets_nov_16,
    combined_laurel_tweets_nov_17,
    combined_laurel_tweets_nov_25,
    combined_laurel_tweets_dec_8,
    combined_laurel_tweets_jan_1,
    combined_laurel_tweets_jan_31,
    combined_laurel_tweets_feb_3,
    combined_laurel_tweets_feb_10,
    combined_laurel_tweets_feb_14,
    combined_laurel_tweets_feb_21,
    combined_laurel_tweets_mar_10,
    combined_laurel_tweets_apr_12,
    combined_laurel_tweets_apr_21,
    combined_laurel_tweets_apr_22,
    combined_laurel_tweets_may_2,
    combined_laurel_tweets_may_16,
    combined_laurel_tweets_jun_7,
    combined_laurel_tweets_jun_12,
    combined_laurel_tweets_jun_23,
    combined_laurel_tweets_aug_17,
    combined_laurel_tweets_sep_1,
    combined_laurel_tweets_oct_3)

write_csv(x = raw_all_laurel_tweets, file = "Outputs/Data/Laurel/raw_all_laurel_tweets.csv")

##### STEP 3 - Eliminate extra columns, rename columns, update values #####
cleaned_laurel_tweets =
  raw_all_laurel_tweets |>
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
  mutate("Verified" = case_when(
    Verified == FALSE ~ "No",
    Verified == TRUE ~ "Yes",
  )) |>
  select(Name, Verified, URL, Followers, Following, Bio, Username, Profile_picture, Location, Text, User_id, Conversation_id) 
cleaned_laurel_tweets

### Filter out Tweets sent by Laurel ###
# Code to filter out Tweets sent by Laurel referenced from: https://www.marsja.se/how-to-remove-delete-row-in-r-with-na-with-conditions-duplicated/
final_cleaned_laurel_tweets <- filter(cleaned_laurel_tweets, User_id != "2167166754")   
final_cleaned_laurel_tweets

# Save Tweets #
write_csv(x = final_cleaned_laurel_tweets, file = "Outputs/Data/Laurel/final_cleaned_laurel_tweets.csv")