bookings_df <- read_csv("data/hotel_bookings_data.csv")
head(bookings_df)
colnames(bookings_df)

#create new df from booking with 3 columns
new_df <- select(bookings_df, adults,adr,meal) #adr: average daily rate

mutate(new_df, total = adr / adults)


head(new_df)
