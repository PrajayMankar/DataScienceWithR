equakes<-datasets::quakes

#Head & Tail Gives 1st 6 and last 6 rows in dataset
head(quakes)
tail(quakes)

##############################

#Returns all rows in 3rd 4th 5th cols in dataset

quakes[ ,c(3,4,5)]

##############################


quakes$depth


##############################

#returns mean median 1st quartle 3rd quartle

summary(quakes$depth)
summary(quakes$mag)
summary(quakes$stations)



##############################

#Plots The Data into graph format

plot(quakes$depth)
plot(quakes$mag)
plot(quakes$stations)
plot(quakes)


##############################

plot(quakes$depth, type="b")
plot(quakes$depth, main="Depth" , xlab="depth" , ylab="dist",
     col="Red")

plot(quakes$mag, type="b")
plot(quakes$mag, main="Magnitude", xlab="Mag1", ylab="mag2",
     col="blue")

plot(quakes$stations, type="b")
plot(quakes$stations, main="Stations", xlab = "station 1", ylab = "station2",
     col="Blue")


#############################

#Barplot

barplot(quakes$depth)
barplot(quakes$mag)
barplot(quakes$stations)

barplot(quakes$depth, main = "Depth" , xlab = "depth1",col="Red", horiz = F)
barplot(quakes$mag, main="Magnitude", xlab = "mag1", col = "red", horiz = F)
barplot(quakes$stations, main = "Stations", xlab = "station1", col = "red", horiz = F)


#############################

#Histogram

hist(quakes$depth)
hist(quakes$mag)
hist(quakes$stations)

hist(quakes$depth, main = "Depth", xlab = "Depth1" , col = "Red")
hist(quakes$mag, main = "Magnitude", xlab = "Mag1", col = "Blue")
hist(quakes$stations, main = "Stations", xlab = "station1", col = "green")

#############################

#Boxplot

boxplot(quakes$depth)
boxplot(quakes$mag)
boxplot(quakes$stations)

#Multiple Boxplot

boxplot(quakes[ ,1:5] ,type="Multiple")


#############################

par(mfrow=c(4,3),mar=c(2,5,2,1), las=1, bty="o")
plot(quakes$depth, main = "Depth")
plot(quakes$mag, main = "Magnitude")
plot(quakes$stations, main = "Stations")

barplot(quakes$depth, main="Depth")
barplot(quakes$mag, main = "Magnitude")
barplot(quakes$stations, main = "Stations")

hist(quakes$depth, main = "Depth")
hist(quakes$mag, main = "Magnitude")
hist(quakes$stations, main = "Stations")

boxplot(quakes$depth, main = "Depth")
boxplot(quakes$mag, main = "Magnitude")
boxplot(quakes$stations, main = "Stations")