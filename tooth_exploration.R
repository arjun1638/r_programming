data("ToothGrowth")
View(ToothGrowth)

#approach 1
filter_by_tooth_growth <- filter(ToothGrowth, dose==0.5)

#sort by asc order
arrange(filter_by_tooth_growth, len)

#approach 2: we can use the nested function
arrange(filter(ToothGrowth, dose==0.5), len)

#approach 3: pipe applies to data automatically, better readability

filter_by_tooth_growth_2 <- ToothGrowth %>%
  filter(dose==0.5) %>%
  group_by(supp) %>%
  summarise(mean_len=mean(len,na.rm = T), .group= "drop")