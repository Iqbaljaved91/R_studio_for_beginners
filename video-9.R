#Hash-tags in R

#how to use built in datasets of R
data()   #all datasets in R
View(CO2)  #to view datasets in R console
View(PlantGrowth)
View(iris)
View(mtcars)
View(trees)
View(npk)  #NPK data for factorial design

head(CO2)  #to show first 6 rows of the data
names(CO2)  #to show the names of columns
nrow(CO2)  #to look for number of rows
ncol(CO2)  #to look for number of columns

install.packages("writexl")  #to save .xlsx files
library(writexl)

write_xlsx(CO2, path = "C:\\Users\\Ali\\Desktop\\test1\\CO2.xlsx")  #command line to save .xlsx files

library(ggplot2)  #to plot graphs and figures

ggplot(trees, aes(Girth, Height))+ geom_point()

ggplot(trees, aes(Girth, Height))+ geom_point()+ geom_smooth()

ggplot(trees, aes(Girth, Height))+ geom_point()+ geom_smooth(method = "lm")  #scatter plot
