setwd("~/OneDrive/Cursos/meusR/")
a <- read.csv("dataframea.csv", header = T, sep = ";")
b <- read.csv("dataframeb.csv", header = T, sep = ";")
a
b
merge(a,b, by.x = "c1", by.y = "a")

common <- intersect(a$c1, b$a)       
common

library(dplyr)
inner_join(a, b)

df1 <- structure(list(v1 = c("id300", "id2345", "id5456", "id33", "id45", 
                             "id54")), .Names = "v1", class = "data.frame", row.names = c("1", 
                                                                                          "2", "3", "4", "5", "6"))

df2 <- structure(list(v1 = c("id832", "id300", "id1000", "id45", "id984", 
                             "id5456", "id888")), .Names = "v1", class = "data.frame", row.names = c("1", 
                                                                                                     "2", "3", "4", "5", "6", "7"))
library(data.table)
fintersect(setDT(df1), setDT(df2))
