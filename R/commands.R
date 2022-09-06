#load packages
library(devtools)
library(roxygen2)
library(testthat)
library(knitr)

#check we have what we need to build package
has_devel()

#create package skeleton
usethis::create_packages("/documents/OneDrive - Macquarie University/STAT1378/SGTA Week 6/ohwhaley")
#opens ohwhaley RStudio window - copy these comments in there

#create .R scripts for our 2x functions
usethis::use_r("phrases")
usethis::use_r("say")

#load the functions into R using load_all()
devtools::load_all()

#check that our package is in full working order
devtools::check()
#Oh snap! we have 1 warning and 1 note

#lets take care of the warning first (choose a license) and the DESCRIPTION file
#edit DESCRIPTION file
usethis::use_mit_license("Benjamin Graham")

#Check that package is in full working order
devtools::check()
#the warning has gone, but we still have a note to address

#declare our intent to use pipe operator
usethis::use_pipe()

#check our package is in full working order
devtools::check()

#load the functions into R and test it!
devtools::load_all()
say()

#no help page for our function - lets fix that
#code > Insert roxyegn skeleton
devtools::document() #activate the conversion of the roxygencomment into a proper help
?say()


#check that our package is in full working order
devtools::check()






