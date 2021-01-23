#load libraries
library(foreign)
library(dplyr)
library(ggplot2)
library(readxl)


#load data

raw_data = read.spss(file="C:/Users/indib/Desktop/R-REMINDER/R-reminder/Koweps_2015/Koweps_2015.sav", to.data.frame = T)
df