#ggplot2 package in R


install.packages("ggplot2")
library(ggplot2)

#ggplot (function)
#data (data1)
#mapping (x axis, y axis)
#geometry (scatter, box, line)


library(readxl)
x <- read_excel("ggdata.xlsx", sheet = "gg1", 
                     col_types = c("text", "numeric", "text", 
                                   "text"))
ggplot(data = x, mapping = aes(x=crop, y=height))+ geom_point()

ggplot(x, mapping = aes(crop, height))+ geom_point()

ggplot(x, mapping = aes(crop, height))+ geom_point()+geom_line()

ggplot(x, mapping = aes(crop, height))+ geom_point(size=3)

ggplot(x, mapping = aes(crop, height))+ geom_boxplot()

ggplot(x, mapping = aes(crop, height))+ geom_boxplot()+geom_point()

ggplot(x, mapping = aes(crop, height))+ geom_boxplot()+geom_point(colour="#176336")

ggplot(x, mapping = aes(crop, height))+ geom_boxplot()+geom_point(size= 3, colour="#176336")

ggplot(x, mapping = aes(crop, height))+
  geom_boxplot()+
  geom_point(size= 3, colour="#176336", alpha=0.5)

ggplot(x, aes(crop, height, colour = water))+
  geom_boxplot()

ggplot(x, aes(crop, height, fill= water))+
  geom_boxplot()

ggplot(x, aes(crop, height, fill= water))+
  geom_boxplot()+
  facet_wrap(~fert.type)

ggplot(x, aes(crop, height, fill= water))+
  geom_boxplot()+
  facet_wrap(~fert.type)+
  labs(x="Crop Type", y="Plant Height (cm)", title = "Plant Growth")

ggplot(x, aes(crop, height, fill= water))+
  geom_boxplot()+
  facet_wrap(~fert.type)+
  labs(x="Crop Type", y="Plant Height (cm)", title = "Plant Growth")+
  theme_bw()

ggplot(x, aes(crop, height, fill= water))+
  geom_boxplot()+
  facet_wrap(~fert.type)+
  labs(x="Crop Type", y="Plant Height (cm)", title = "Plant Growth")+
  theme_bw()+
  ggsave("ggplot.tiff", units = "in", width = 8, height = 6, dpi = 300, compression='lzw')


ggplot(x, aes(crop, height, fill= water))+
  geom_boxplot()+
  facet_wrap(~fert.type)+
  labs(x="Crop Type", y="Plant Height (cm)", title = "Plant Growth")+
  theme_bw()+
  coord_flip()+
  ggsave("ggplot.tiff", units = "in", width = 8, height = 4, dpi = 300, compression='lzw')



