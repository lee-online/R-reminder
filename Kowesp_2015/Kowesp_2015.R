#load libraries
library(foreign)
library(dplyr)
library(ggplot2)
library(readxl)



raw_data = read.spss(file="Koweps_2015.sav", to.data.frame = T)#load data
data = raw_data #copy

#overview
head(data)
View(data)
dim(data)
str(data)

#machining
data = rename(data, sex = h10_g3, birth = h10_g4, marriage = h10_g10, religion = h10_g11, income = p1002_8aq1, job = h10_eco9, region = h10_reg7)
data = select(data, sex, birth, marriage, religion, income, job, region)
table(is.na(data))
View(data)

data_new = na.omit(data)
View(data_new)
summary(data_new)

summary(data_new$income)
