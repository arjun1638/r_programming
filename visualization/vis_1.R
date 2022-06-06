#install.packages('Tmisc')
library(Tmisc)
library(tidyverse)
library(ggplot2)
library(dplyr)
library(datasauRus)

data("quartet")

quartet %>%
  group_by(set) %>%
  summarise(mean(x),sd(x), mean(y), sd(y), cor(x,y))

ggplot(quartet,aes(x,y)) + geom_point() + geom_smooth(method=lm, se=FALSE) + facet_wrap(~set)

ggplot(datasaurus_dozen,aes(x=x,y=y,colour=dataset)) +geom_point()+ theme_void() + theme(legend.position = "none") +facet_wrap(~dataset,ncol=3)
