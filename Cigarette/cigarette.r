cigarette<-read.csv("C:\\Data Analysis\\Lectures\\Cigarttes.csv")

#Scatter Plot Matrix:
pairs(cigarette[,2:8])

#Correlation  
#Correlation Matrix:
cor(cigarette[,2:8])

#Regression Model:
reg.model<-lm(Sales~Age+HS+Income+Black+Female+Price,data = cigarette)
summary(reg.model)
