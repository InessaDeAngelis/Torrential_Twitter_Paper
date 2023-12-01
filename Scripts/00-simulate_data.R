#### Preamble ####
# Purpose: Simulates severity of harassment and type of account 
# Author: Inessa De Angelis
# Date: 1 December 2023
# Contact: inessa.deangelis@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)
library(janitor)

#### Data expectations ####
# Severity of harassment will vary on the 7-point scale from positive to hate speech 
# Type of account will vary from Personal, Professional, Bots, Spammers, Anonymous, and Suspended/Deleted 
# There will be a combination of verified and unverified Twitter users 
# Personal accounts that send Tweets containing mid to high levels of harassment on the 7-point scale are likely to belong to people who support the Conservative Party or People's Party

#### Simulate data ####
## Simulate varying harassment on the 7-point scale, types of accounts on the 6-point scale, and whether a user is verified ##
set.seed(16)
num_people <- 4100
varying_harassment <- tibble(
  person = 1:num_people,
  name_of_politician = sample(c("Chrystia Freeland", "Elizabeth May", "Laurel Collins"), size = num_people, replace = TRUE, prob = c(0.5, 0.3, 0.2)),
  severity_of_harassment = sample(c("Positive", "Neutral", "Questioning authority", "Name-calling/Gender insults", "Vicious language", "Credible threats", "Hate speech"), size = num_people, replace = TRUE, prob = c(0.025, 0.1, 0.6, 0.2, 0.025, 0.025, 0.025)),
  type_of_account = sample(c("Personal", "Professional", "Bots", "Spammers", "Anonymous", "Suspended/deleted"), size = num_people, replace = TRUE, prob = c(0.2, 0.025, 0.025, 0.4, 0.3, 0.050)),
  verified = sample(c("No", "Yes"), size = num_people, replace = TRUE, prob = c(0.9, 0.1)))
print(varying_harassment, n = 30)

## Simulate personal accounts / conservative political views ##
set.seed(16)
personal_accounts <- tibble(
  Account = 1:4100,
  severity_of_harassment =
    sample(x = c("Name-calling/Gender insults", "Vicious language", "Credible threats"), 
           size = 4100, 
           replace = TRUE, 
           prob = c(0.5, 0.3, 0.2)), 
  party_identification =
    sample(x = c("Conservative", "People's Party"),
           size = 4100,
           replace = TRUE,
           prob = c(0.6, 0.4)),
  verified = sample(c("No", "Yes"), size = num_people, replace = TRUE, prob = c(0.8, 0.2)))
personal_accounts

#### Data validation ####
# Check severity of harassment #
class(varying_harassment$severity_of_harassment) == "character"
class(varying_harassment$person) == "integer"
sum(!(varying_harassment$severity_of_harassment) %in%
      c("Positive",
        "Neutral",
        "Questioning authority",
        "Name-calling/Gender insults",
        "Vicious language",
        "Credible threats",
        "Hate speech",
        NA)) == 0

varying_harassment$severity_of_harassment |>
  unique() |>
  length() == 7

# Check types of accounts #
class(varying_harassment$type_of_account) == "character"
class(varying_harassment$person) == "integer"
sum(!(varying_harassment$type_of_account) %in%
      c("Personal",
        "Professional",
        "Bots",
        "Spammers",
        "Anonymous",
        "Suspended/deleted",
        NA)) == 0

varying_harassment$type_of_account |>
  unique() |>
  length() == 6

# Check verification #
class(varying_harassment$verified) == "character"

varying_harassment$verified |>
  unique() |>
  length() == 2

# Check personal accounts / conservative views #
stopifnot(
  class(personal_accounts$severity_of_harassment) == "character",
  class(personal_accounts$party_identification) == "character",
  class(personal_accounts$Account) == "integer",
  class(personal_accounts$verified) == "character",
  all(complete.cases(personal_accounts)),
  nrow(personal_accounts) == 4100
)

personal_accounts$severity_of_harassment |>
  unique() |>
  length() == 3

personal_accounts$party_identification |>
  unique() |>
  length() == 2

#### Explore simulated data: graph varying severity of harassment and types of accounts ####
set.seed(16)

varying_harassment |>
  mutate(severity_of_harassment = fct_relevel(severity_of_harassment, "Positive", "Neutral", "Questioning authority", "Name-calling/Gender insults", "Vicious language", "Credible threats", "Hate speech")) |>
  ggplot(mapping = aes(x = severity_of_harassment, y = person, fill = type_of_account)) +
  geom_bar(stat = "identity") +
  theme(axis.text.x = element_text(angle=45, hjust = 1, size = 9)) + 
  theme(axis.text.y = element_text(size = 6)) +
  theme(legend.position = "bottom") +
  theme(legend.text = element_text(size = 6)) +
  theme(legend.title = element_text(size = 9)) 