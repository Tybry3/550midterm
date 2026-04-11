## DATA 550 Midterm Project Part 2 - Git Repository

Hi all! Here is some general information about how I've structured the repository for our midterm project - if you 
have any questions, comments, concerns, or changes you'd like to make, please don't hesistate to reach out!

# Instructions for putting together repository code

I have this repository structured so that everyone has (a) an individual .R file for generating their pieces of the report and (b) a section
of code in `report.Rmd` for calling those pieces into the full report. If it works for everyone, I think a good workflow for this next part
of the assignment would be:
  
  1. Entering your code to generate your tables/figures into your corresponding .R file ("0#_make_elements_#.R")
  2. Saving those tables/figures as .rds objects in the `output/` folder following the structure we've used in class
  3. Editing your corresponding section of `report.Rmd` to call those objects and generate your section of the report.
  
If you run into any issues with this structure or would like things done a different way, please let me know and I can make edits!!

# IMPORTANT: Instructions for loading data

In order to generate two different versions of our report based on parameters, I have set up two different `make` commands that each call 
on a different `render.R` script, with different parameters set (standard vs. intervention) depending on what command is executed. Additionally,
the first step of the `report.Rmd` file filters our initial dataset depending on what parameter is set and saves a clean version of the dataset
(cleandata.rds) in the `data/` folder.

- It's my understanding that if each person begins their code chunk by loading 'cleandata.rds' from the `data/` folder (I've already added 
this code to the top of each coder's script), we will all be working from the correctly filtered dataset

- However, as we are putting together the code for the report, you may have to run the commands to filter and save 'cleandata.rds' 
on your own before executing your code

My apologies for the hassle y'all, this is what I was going to clarify in class/office hours this week!!

------

# Repository Contents

Besides this README.md file, this repository also contains...

- the `code/` folder contains:
      - an individual R script for each section of code for the report (labeled 1-4 corresponding to our project outline assignment)
      - render_report_standard.R, which renders the standard version of the report
      - render_report_intervention.R, which renders the intervention version of the report
- the `data/` folder contains our initial dataset, as well as a cleaned version (cleandata.rds) based on what version of the report we are running
- the Makefile contains commands to generate our report (standard and intervention version) from terminal
- the `output/` folder will house whatever .rds objects we'd like to pull into our final version of the report
- the report.Rmd file, which is used to compile our report

