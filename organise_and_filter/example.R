library(tidyverse)
library(skimr)
library(janitor)

bookings_df <- read_csv("../data/hotel_bookings_data.csv")

head(bookings_df)

colnames(bookings_df)

custom_df <- bookings_df %>%  select( "hotel","is_canceled", "lead_time")%>% rename(hotel_type=hotel)

#combining data from two cols
cus_df_2 <- bookings_df %>% 
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")

#create new col
cus_def_3 <- bookings_df %>%
  mutate(guests = "")

#
csus_def_4 <- bookings_df %>% 
  mutate(number_canceled = "",average_lead_time="") %>% 
  select(is_canceled, lead_time) %>% 
  summarize(number_canceled=sum(is_canceled), average_lead_time=mean(lead_time))
  