
airquality<-datasets::airquality

###Top 10 rows Last 10 rows###
head(airquality,10)
tail(airquality,10)

### Columns ###
airquality[,c(1,2)]
df<-airquality[,-6]

### Summary of the Data ###
airquality$Wind
summary(airquality$wind)
summary(airquality)
summary(airquality[,1])

### Plots ###
plot(airquality$Wind)
plot(airquality$Temp, airquality$Wind,type = "p")
plot(airquality)

### Points & Lines ###
plot(airquality$Wind,type= "b")
plot(airquality$Wind,xlab = 'ozone concentration', 
     ylab = 'No of Instances',main = 'ozone levels in NY city',col='blue')

### Horizontal Bar Plot ###
barplot(airquality$Ozone,main = 'ozone concentration in air', 
        ylab = 'ozone levels', col = 'blue',horiz = F, axes = T )

### Histogram ###
hist(airquality$Temp)
hist(airquality$Temp,main = 'solar radiation values in air', 
     xlab = 'solar rad', col = 'blue' )

### Single Box Plot ###
boxplot(airquality$Wind,main = "Boxplot")
boxplot.stats(airquality$Wind)$out

### Multiple Box Plots ###
boxplot(airquality[,1:4], main = 'Multiple')

### margin of the grid (mar) ###
### no. of rows and columns (mfrow) ###
### whether a border is to be included (bty) ###
### Positions of the labels(las: 1 for horizontal, las: 0 for vertical) ###
### bty-box around the plot ###
par(mfrow = c(3,3), mar = c(2,5,2,1), las = 0, bty = 'O')
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type = "l")
barplot(airquality$Ozone, main = 'ozone concentration in air',
        xlab = 'ozone levels', col = 'green', horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main = 'Multiple Boxplots')
