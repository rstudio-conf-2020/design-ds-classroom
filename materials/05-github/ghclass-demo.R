# load packages ----------------------------------------------------------------

library(ghclass)
library(tidyverse)

# load data --------------------------------------------------------------------

roster <- read_csv("materials/05-github/GitHub Usernames - Designing the Data Science Classroom (Responses) - Form Responses 1.csv")
org = "design-ds-class"

# invite users -----------------------------------------------------------------

org_invite(org = org, user = roster$username)

# member status ----------------------------------------------------------------

org_members(org)
org_pending(org)

# create individual assignment -------------------------------------------------

org_create_assignment(
  org = org,
  repo = paste0("hw-01-airbnb-edi-", roster$username),
  user = roster$username,
  source_repo = paste0(org, "/hw-01-airbnb-edi")
)

# collect assignments ----------------------------------------------------------

hw01_repos <- org_repos(org, "hw-01-airbnb-edi-")
local_repo_clone(hw01_repos, local_path = "hw01_submissions")

# create issues ----------------------------------------------------------------

issue_create(roster$hw01_repo, # should be in org/repo format
             title = "Feedback",
             body = roster$hw01_feedback)

# view repo stats --------------------------------------------------------------

org_repo_stats(org, filter = "hw-01-airbnb-edi-")

# create team assignments ------------------------------------------------------

org_create_assignment(
  org = org,
  repo = paste0("lab-03-nobel-laureates-", roster$team_name),
  user = roster$github_name,
  team = roster$team_name,
  source_repo = paste0(org, "/lab-03-nobel-laureates")
)