library(tidyr)
library(tidyverse)

id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)

#split name by space into two cols

cus_def_5 <- separate(employee, name, into=c('first','last'), sep= ' ')

#unite or merge name cols into one

cus_def_6 <- unite(cus_def_5, 'name', 'first','last', sep= ' ') %>% 
  mutate(id=id+100)

