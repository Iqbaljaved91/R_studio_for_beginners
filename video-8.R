#Built-in Datasets in R


data()   
View(CO2)  
View(PlantGrowth)
View(iris)
View(mtcars)
View(trees)
View(npk)  

head(CO2)  
names(CO2)  
nrow(CO2)  
ncol(CO2)  

install.packages("writexl")  
library(writexl)

write_xlsx(CO2, path = "C:\\Users\\Ali\\Desktop\\test1\\CO2.xlsx")  

library(ggplot2)  

ggplot(trees, aes(Girth, Height))+ geom_point()

ggplot(trees, aes(Girth, Height))+ geom_point()+ geom_smooth()

ggplot(trees, aes(Girth, Height))+ geom_point()+ geom_smooth(method = "lm")  

