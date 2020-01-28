:spiral_calendar: January 27 and 28, 2020  
:alarm_clock:     09:00 - 17:00  
:hotel:           Union Square 22  
:writing_hand:    [rstd.io/conf](http://rstd.io/conf)

-----

## Overview

Success in data science and statistics is dependent on the development of both analytical and computational skills, and the demand for educators who are proficient at teaching both these skills is growing. The goal of this workshop is to equip educators with concrete information on content, workflows, and infrastructure for painlessly introducing modern computation with R and RStudio within a data science curriculum.

In addition to gaining technical knowledge, participants will engage in discussion around the decisions that go into developing a data science curriculum and choosing workflows and infrastructure that best support the curriculum and allow for scalability. Workshop attendees will work through several exercises from existing courses and get first-hand experience with using relevant tool-chains and techniques, including running a course on RStudio Cloud, and literate programming with R Markdown, and workflows for collaboration, version control, and automated feedback with Git/GitHub. We will also discuss best practices for configuring and deploying classroom infrastructures to support these tools.

This workshop is aimed primarily at participants teaching data science in an academic setting in semester-long courses, however much of the information and tooling we introduce is applicable for shorter teaching experiences like workshops and bootcamps as well. Basic knowledge of R is assumed and familiarity with Git is preferred.

## Learning objectives

Curriculum, workflow, and infrastructure design for teaching data science with R and RStudio.

## Is this course for me?

If your answer to the following questions is "yes", then this is the right workshop for you.

1. Do you want to learn / discuss curriculum, pedagogy, and computing infrastructure design for teaching data science with R and RStudio?

2. Are you interested in setting up your class in RStudio Cloud?

3. Do you want to integrate version control with git into your teaching and learn about tools and best practices for running your course on GitHub?

## Prework

In this workshop you will wear two hats: the educator and the learner. At times I will be demoing workflows for instructors (whom I assume are familiar with R, RStudio, and the tidyverse and have taught with or are interested in teaching with RStudio Cloud, Git, and GitHub) and at other times you will be working through the student view (on RStudio Cloud, assuming you're not using your local setup).

For the former, you'll need to come prepared. For the latter, you can assume you're a student in an intro data science course and this is the first day of class (i.e. there's no expectation of prep).

So, let's focus on the former -- the instructor view. The list of items you should complete prior to the workshop can be found below. If you need help with any of the steps, please ask on the [RStudio Community thread about this workshop](https://community.rstudio.com/t/designing-the-data-science-classroom-workshop-rstudio-conf-2020).

**Note:** These steps will direct you to relevant chapters from "Happy Git with R" by Jenny Bryan et. al. It's such a great and comprehensive resource that I have not felt the need to replicate the information elsewhere.

- [Register a free GitHub account](https://happygitwithr.com/github-acct.html#github-acct)
- [Install or update R and RStudio](https://happygitwithr.com/install-r-rstudio.html#install-r-rstudio)
- [Install Git](https://happygitwithr.com/install-git.html#install-git)
- [Introduce yourself to Git](https://happygitwithr.com/hello-git.html#hello-git)
- [Prove local Git can talk to GitHub](https://happygitwithr.com/push-pull-github.html#push-pull-github)
- [Cache your username and password or set up SSH keys](https://happygitwithr.com/credential-caching.html#credential-caching)
- [Create and save a GitHub Personal Access Token (PAT)](https://happygitwithr.com/credential-caching.html#credential-caching)
- [Prove RStudio can find local Git and, therefore, can talk to GitHub](https://happygitwithr.com/rstudio-git-github.html#rstudio-git-github)

Finally, specific to this workshop:
- Install and load the following packages:
  - From CRAN:
  
```
install.packages("devtools")
install.packages("DiagrammeR")
install.packages("DT")
install.packages("flesdashboard")
install.packages("gapminder")
install.packages("learnr")
install.packages("lubridate")
install.packages("infer")
install.packages("magick")
install.packages("nycflights13")
install.packages("rvest")
install.packages("shiny")
install.packages("sortable")
install.packages("tidyverse")
install.packages("unvotes")
```

  - From GitHub:
  
```
devtools::install_github("gadenbuie/countdown")
devtools::install_github("OpenIntroStat/openintro-r-package")
devtools::install_github("rundel/ghclass")
```


## Useful links

- RStudio Cloud workspace: [rstd.io/design-ds-cloud](https://rstd.io/design-ds-cloud)

## Schedule

### Day 1 - Monday, Jan 27

| Time          | Activity         |
| :------------ | :--------------- |
| 09:00 - 10:30 | [Welcome](https://rstudio-conf-2020.github.io/design-ds-classroom/materials/00-welcome/slides/00-welcome.html#1) +  [Curriculum design](https://github.com/rstudio-conf-2020/design-ds-classroom/tree/master/materials/01-curriculum-design) |
| 10:30 - 11:00 | :coffee: *Coffee break*   |
| 11:00 - 12:30 | [Teaching the tidyverse](https://github.com/rstudio-conf-2020/design-ds-classroom/tree/master/materials/02-teach-tidyverse) |
| 12:30 - 13:30 | :fork_and_knife: *Lunch break*    |
| 13:30 - 15:00 | [Computing infrastructure with RStudio Cloud](https://github.com/rstudio-conf-2020/design-ds-classroom/tree/master/materials/03-rstudio-cloud) |
| 15:00 - 15:30 | :coffee: *Coffee break*   |
| 15:30 - 17:00 | [Case study: Design your assignment on RStudio Cloud](https://github.com/rstudio-conf-2020/design-ds-classroom/tree/master/materials/04-case-study) |

### Day 2 - Tuesday, Jan 28

**Materials for Day 2 will be posted in the morning of Day 2**

| Time          | Activity         |
| :------------ | :--------------- |
| 09:00 - 10:30 | Reproducible workflows: R Markdown, Git, GitHub] |
| 10:30 - 11:00 | :coffee: *Coffee break*   |
| 11:00 - 12:30 | Getting more out of GitHub |
| 12:30 - 13:30 | :fork_and_knife: *Lunch break*    |
| 13:30 - 15:00 | Interactivity and immediate feedback |
| 15:00 - 15:30 | :coffee: *Coffee break*   |
| 15:30 - 17:00 | #rstats lifehacks for instructors + Wrap up |

## Instructor

[Mine Çetinkaya-Rundel](http://mine-cr.com/) is Professional Educator and Data Scientist at RStudio as well as Senior Lecturer in the School of Mathematics at University of Edinburgh (on leave from her position as Associate Professor of the Practice position at the Department of Statistical Science at Duke University). Mine’s work focuses on innovation in statistics and data science pedagogy, with an emphasis on computing, reproducible research, student-centered learning, and open-source education as well as pedagogical approaches for enhancing retention of women and under-represented minorities in STEM. Mine works on integrating computation into the undergraduate statistics curriculum, using reproducible research methodologies and analysis of real and complex datasets. She also organizes ASA DataFest, an annual two-day competition in which teams of undergraduate students work to reveal insights into a rich and complex data set. Mine works on the OpenIntro project, whose mission is to make educational products that are free, transparent, and lower barriers to education. As part of this project she co-authored three open-source introductory statistics textbooks. She is also the creator and maintainer of datasciencbox.org and she teaches the popular Statistics with R MOOC on Coursera. Mine is the Chair of the ASA's Section on Statistical Education. In 2018 Mine received the David Pickard Teaching Award and in 2016 the ASA Waller Education Award. She is also the recipient of the 2015 JSM Best Paper Award in the Section on Teaching Statistics in the Health Sciences and the 2014 Duke University David and Janet Vaughan Brooks Award for Teaching Excellence.

-----

![](https://i.creativecommons.org/l/by/4.0/88x31.png) This work is
licensed under a [Creative Commons Attribution 4.0 International
License](https://creativecommons.org/licenses/by/4.0/).
