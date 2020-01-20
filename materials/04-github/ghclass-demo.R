# load packages ----------------------------------------------------------------

library(devtools)
#install_github("rundel/ghclass")
library(ghclass)
library(tidyverse)

# clean up ---------------------------------------------------------------------

repo_delete(org_repos("ghclass-demo",
                      filter = "hw-01-"))



# load roster data -------------------------------------------------------------

roster <- read_csv("03-reproducible-workflows/Teaching Data Science - GitHub names (Responses) - Form Responses 1.csv")

roster <- roster %>%
  slice(c(1,37:nrow(roster)))

names(roster) <- c("timestamp", "email", "name", "ghname")

# define org -------------------------------------------------------------------

org = "ghclass-demo"

# invite users -----------------------------------------------------------------

org_invite(org = org, user = roster$ghname)

org_invite(org = org, user = "ricardomayerb")

# create individual assignment -------------------------------------------------

org_create_assignment(org = org, 
                      repo = paste0("hw-01-", roster$ghname), 
                      user = roster$ghname, 
                      source_repo = "ghclass-demo/hw-01")

# create teams -----------------------------------------------------------------

team_names <- c("team1", "team2", "team3", "team4", "team5", "team6", "team7", "team8", "team9", "team10")

roster <- roster %>%
  mutate(team = sample(team_names, nrow(roster), replace = TRUE))

team_create(org = org,
            team = unique(roster$team))

team_invite(org = org,
            user = roster$ghname,
            team = roster$team)

# create team assignment -------------------------------------------------

org_create_assignment(org = org, 
                      repo = paste0("hw-02-", roster$team), 
                      user = roster$ghname, 
                      team = roster$team,
                      source_repo = "ghclass-demo/hw-02")

# collect assignments ----------------------------------------------------------

hw01_repos <- org_repos(org = org, filter = "hw-01-")

local_repo_clone(repo = hw01_repos, 
                 local_path = "hw-01-collect")

# styling ----------------------------------------------------------------------

repo_style(repo = "ghclass-demo/hw-01-minebotmine", 
           files = "*.Rmd", draft = TRUE)

