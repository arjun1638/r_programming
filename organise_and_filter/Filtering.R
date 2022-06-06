library("tidyverse")
library("palmerpenguins")

#sort by column name asc
penguins_by_depth_asc <- penguins %>% arrange(bill_depth_mm)

#sort by column name desc
penguins_by_depth_desc <- penguins %>% arrange(- bill_depth_mm)

view(penguins_by_depth_desc)

#group by island and summarize
penguins_group_by_island <- penguins %>% group_by(species,island) %>% drop_na() %>% summarise(min_depth_mm=min(bill_depth_mm), max_depth_mm=max(bill_depth_mm))

#filter
penguins_in_island_adelie <- penguins %>% filter(island == "Torgersen")