#Video-4: Boxplots (basics) in R

library(readxl)
my_data <- read_excel("data.xlsx", col_types = c("text", 
                                              "numeric", "numeric"))
View(data)
remove(data)

boxplot(my_data$Height ~ my_data$Crop)

#labeling
boxplot(Height ~ Crop, data=my_data)
boxplot(Height ~ Crop, data=my_data, main="Boxplot of Experiment")

boxplot(Height ~ Crop, data=my_data, main="Boxplot of Experiment",
        xlab = "Crop Type" , ylab = "Plant Height (cm)")

#coloring
boxplot(Height ~ Crop, data=my_data, main="Boxplot of Experiment",
        xlab = "Crop Type" , ylab = "Plant Height (cm)",
        col="#03fc28", border="#fc7303")

#grouping of treatment

library(readxl)
my_data2 <- read_excel("data.xlsx", sheet = "data2", 
                   col_types = c("text", "numeric", "numeric", 
                                 "text"))

View(data)

boxplot(my_data2$Height ~ my_data2$Crop)
boxplot(my_data2$Height ~ my_data2$Crop * my_data2$Water)

my_data2$Crop <- factor(my_data2$Crop, levels = c("Wheat", "Maize", "Rice","Potato"))
boxplot(my_data2$Height ~ my_data2$Crop * my_data2$Water)


my_data2$Crop <- factor(my_data2$Crop, levels = c("Wheat", "Maize", "Rice","Potato"))
boxplot(my_data2$Height ~ my_data2$Crop * my_data2$Water,main="Boxplot of Experiment", 
        xlab = "Water", ylab = "Plant Height")


