library(readxl)

library(readxl)
data <- read_excel("data.xlsx", col_types = c("text", 
                                              "numeric", "numeric"))

View(my_data)
str(my_data)     # To view structure of data

head(my_data)    # gives only first 6 rows to view
tail(my_data)    # gives last 6 rows of data

plot(my_data)
boxplot(my_data)  # gives an error beacause boxplot is drawn between 2 variables

boxplot(my_data$Height , my_data$Weight)    

boxplot(my_data$Height , my_data$Crop)   # gives an error, x-axis or argument must comes first

boxplot(my_data$Crop ,my_data$Height)  # error, because there is different function for boxplot between two different variable types and different for two nuumerical variables


boxplot(my_data$Height ~ my_data$Crop)

