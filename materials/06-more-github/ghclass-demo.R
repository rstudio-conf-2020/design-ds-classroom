# load packages ----------------------------------------------------------------

library(ghclass)
library(tidyverse)

# define org -------------------------------------------------------------------

org = "design-ds-class"

# add issue template -----------------------------------------------------------

hw01_repos <- org_repos(org, "hw-01-airbnb-edi-")

repo_add_file(
  hw01_repos, 
  file = "materials/06-more-github/issue-template.md",
  repo_folder = ".github/ISSUE_TEMPLATE", 
  message = "Add issue template"
  )

# add files for merge conflict practice ----------------------------------------

lab03_repos <- org_repos(org, "lab-03-nobel-laureates-")
repo_add_file(
  repo = lab03_repos, 
  file = "materials/06-more-github/merge-conflict-practice.md",
  message = "Add file to practice merge conflicts with"
  )

# add check-rmd action ---------------------------------------------------------

repo_add_file(
  repo = hw01_repos, 
  file = "materials/06-more-github/actions/check-rmd.yml",
  repo_folder = ".github/workflows", 
  message = "Add action to check if Rmd knits"
)

repo_add_badge(
  repo = hw01_repos, 
  workflow = "Check Rmd",
)

# add style action -------------------------------------------------------------

repo_add_file(
  repo = hw01_repos, 
  file = "materials/06-more-github/actions/style.yml",
  repo_folder = ".github/workflows", 
  message = "Add action to check for code style"
)

