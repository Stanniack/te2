df = read.csv2("C:/Users/12161003882/Desktop/student-por.csv")

View(df)
str(df)

# Transformando em numerico para correlacao

levels(df$school) = c(0,1)
df$school = as.numeric(df$school)

levels(df$sex) = c(0,1)
df$sex = as.numeric(df$sex)

levels(df$address) = c(0,1)
df$address = as.numeric(df$address)

levels(df$famsize)= c(0,1)
df$famsize = as.numeric(df$famsize)

levels(df$Pstatus) = c(0,1)
df$Pstatus = as.numeric(df$Pstatus)

levels(df$Mjob) = c(0,1,2,3,4)
df$Mjob = as.numeric(df$Mjob)

levels(df$Fjob) = c(0,1,2,3,4)
df$Fjob = as.numeric(df$Fjob)

levels(df$reason) = c(0,1,2,3)
df$reason = as.numeric(df$reason)

levels(df$guardian) = c(0,1,2)
df$guardian = as.numeric(df$guardian)

levels(df$schoolsup) = c(0,1)
df$schoolsup = as.numeric(df$schoolsup)

levels(df$famsup) = c(0,1)
df$famsup = as.numeric(df$famsup)

levels(df$paid) = c(0,1)
df$paid = as.numeric(df$paid)

levels(df$activities) = c(0,1)
df$activities = as.numeric(df$activities)

levels(df$nursery) = c(0,1)
df$nursery = as.numeric(df$nursery)

levels(df$higher) = c(0,1)
df$higher = as.numeric(df$higher)

levels(df$internet) = c(0,1)
df$internet = as.numeric(df$internet)

levels(df$romantic) = c(0,1)
df$romantic = as.numeric(df$romantic)

library(corrplot)
corrplot(cor(df))

correlaco = cor(df)
# GRAVANDO DADOS
write.xls(df, "C:/Users/12161003882/Desktop/ramon.xls") 
