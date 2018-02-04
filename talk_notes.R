
##Amanda Gadrow debugging
library(devtools)
library(tidyverse)

clean <- function(vec){
  values <- strsplit(vec, ",")
  flat_values <- unlist(values)
  trimmed_values <- str_trim(glat_values)
  trimmed_values
}

#clean vector and get the unique values
uniquify <- function(vec) {
  clean_values <- clean(vec)
  unique_values <- unique(clean_values)
  unique_values
}

#read data and get unique climate values
get_climates <- function(){
  planets <- read.csv2("planets.csv")
  unique_climate <- uniquify(planets$climate)
  unique_climate
}
#turns on the debugger; R stops at the breaker
#traceback shows where you are in the code and what you called to get there
get_climates()

#go the function and identify where error occured and why
get_climates <- function(){
  planets <- read.csv2("planets.csv", stringsAsFactors = FALSE)
  unique_climate <- uniquify(planets$climate)
  unique_climate
}

##Di Cook: visualizations
install.packages("sf") #simple features
install.packages("tibbletime")
install.packages("infer")

#xts: native time index support, built on  matrices,
#tibble: grouped analysis, readabinlity, but need time index support
#down to microseconds and can group by time period
#rollify: this is like safelt from purrr
#could create rolling averages, can specify a window, and retruend new function; so could do something like short term and long term functions
#s3 object

#infer
#simulation through permutation: if these variables are totally unrelated the ties between variables are arbitrary so they might just as well have been shuffled
#generate data:
#gss %>%  mutate(perm ~ sample(nasa) %>%  select(party, perm))
#chiswuare statistic measure of the diff between your data and what you would expect if the bull hypo were true
#need to do simulation under null hypothesis to get an idea of how good/bad test statistic is
#so get these chi square statistics values under null hypothesis under numerous permutations; his example was 1k permutations
#specify() is like select; getting the vars interested to study
#hypothesize() make the null hypo
#generate() through permutatuin
#calculate the chi square stats
#visualize()


##Emily Robinson: lesser knowns stars in tidyverse
#as_tibble() use to print only 10 rows

#examine NAs:
df %>%
  na_if("") %>%
  count(column)

#examine numeric columns
#dplyr::select_if() + skimr::skim()
#str_split and tidyr::unnest()


#fct_reorder()
#fct_relevel() to manually order your factor such as changing a likert scale or uneven barplots
#make minimal reproducible example

#use tiblle() to make toy dataset
#tiny.cc/rstudiotalk
# robinsones.github.io
# robinson_es
# modelr

#Max Kuhn talk
#kuhn git r-studio-conf-2018
#use loss fns that are relevent, use bayesian rope estimates to assess practical differences
#dont rely on p val; whtas prob distribution of


##Hadley Wickhams talk
#arg qouted and evaluated in a non standard way
#first arg evaluated using usual R rules
#bang-bang unqoutes an argument
#main 3 ideas: r code is a tree; build trees by unqouting; capture user input by qouting
#adv-r.hadley.nz/evaluation.html

##JJ Allaire slide deck: https://beta.rstudioconnect.com/ml-with-tensorflow-and-r/#1
#tfestimators, tfdatasets
install.packages("tensorflow")
#have goals for what you want your students to do, and start them doing it as early as possible: order matters; when you teach something then show why its useful
#don't show useless code but start with actual data asap


##
# Deploying TensorFlow models with tfdeploy Javier Luraschi; very helpful talk to see set up and deploying a model
#sparklyr; dplyr interface for working with big data
#reinforcement learning


#nycopendata- ny data good for teaching
#teaching beginners data sciene: http://bit.ly/rstudioconf18: moderndive.com is textbook
#use lubridate
