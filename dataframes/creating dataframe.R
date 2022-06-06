#library(tidyverse)

#creating vector name 
names <- c("sai", "ram", "bil", "bob")

#creating vector age
age <- c(23,24,33 ,22 )

#creating new dataframe friends 
friends <- data.frame(names, age)

#preview data
head(friends)

#structure of data
str(friends)

glimpse(friends)

#get col names
colnames(friends)

mutate(friends, age_in_2022 = age + 10)

