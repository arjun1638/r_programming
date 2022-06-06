library("palmerpenguins")

penguins %>%
  select(- body_mass_g) # Remove body mass column 

penguins %>%
  select( body_mass_g) # select only body mass column 

penguins %>%
  rename(body_mass_grams=body_mass_g) 

clean_names(penguins) # unique and consistent names