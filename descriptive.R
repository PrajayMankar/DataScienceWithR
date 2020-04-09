head(airquality)
tail(airquality)
airquality[ ,c(1,2)]
airquality$Ozone

########################

summary(airquality$Month)
summary(airquality)

#########################

plot(airquality$Ozone)
plot(airquality)

########################

plot(airquality$Ozone, type= "l")

plot(airquality$Ozone , xlab="Ozone Concentration" ,
     ylab="No Of Instances" , main="Ozone Levels in City" , col="blue")


#########################

#Horizontal barplot

barplot(airquality$Ozone, main="Ozone" ,
        xlab="levels" , col="Red" ,horiz=F)


###################
#Histogram

hist(airquality$Solar.R)
hist(airquality$Solar.R,
     main="Solar", xlab="Solar Rad", col="blue")


#SIngle box plot
boxplot(airquality$Ozone)


#Multiple Box Plot


boxplot(airquality[ , 1:4], main="Multiple")

##############
#ALL GRAPHS IN 1 GRAPH

par(mfrow=c(3,3),mar=c(2,5,2,1), las=1 , bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type="l")
plot(airquality$Ozone, type="l")
plot(airquality$Ozone, type="l")
barplot(airquality$Ozone, main="Ozone" ,
        xlab="levels" , col="Red" ,horiz=T)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main="Multiple box plot")