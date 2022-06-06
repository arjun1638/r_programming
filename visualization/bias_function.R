library(SimDesign)

actual_temp <- c(15, 18, 19, 21, 16, 19.5)
predicted_temp <- c(16,17,18,21,16,18)

bias(actual_temp,predicted_temp)

actual_sales <- c(15,16,17,18,26,30)
predicted_sales <- c(13,15,17,19,20,30)
bias(actual_sales,predicted_sales)
