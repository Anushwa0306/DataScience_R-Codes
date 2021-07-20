
quakes<-datasets::quakes

### Top 10 rows and Last 10 rows ###
head(quakes,10)
tail(quakes,10)

### Columns ###
quakes[,c(1,2)]
df<-quakes[,-5]

### Summary of the data ###
summary(quakes[,1])
quakes$lat
summary(quakes$lat)
summary(quakes)

### Plots ###
plot(quakes$lat)
plot(quakes$long,quakes$lat, type = "p")
plot(quakes)

### Points & Lines ###
plot(quakes$lat, type = "b")
plot(quakes$lat,xlab = 'latitude',ylab = 'No of Instances', 
     main =  'latitude in Mumbai city', col = 'blue')

### Horizontal bar Plot ###
barplot(quakes$stations, main = 'Stations in Mumbai City', 
        ylab = 'Depth of the stations', col = 'red', horiz = F, axes = T )

### Histogram ###
hist(quakes$depth)
hist(quakes$depth, main = 'depth of water level', 
     xlab = 'depth of water level', col = 'red')

### Single Box Plot ###
boxplot(quakes$lat, main = "Boxplot")
boxplot.stats(quakes$lat)$out

### Multiple Box Plot ###
boxplot(quakes[,1:5],main = 'Multiple')

### margin of the grid (mar) ###
### no. of rows and columns (mfrow) ###
### whether a border is to be included (bty) ###
### Positions of the labels(las: 1 for horizontal, las: 0 for vertical) ###
### bty-box around the plot ###
par(mfrow= c(3,3), mar= c(2,5,2,1), las=0, bty="O")
plot(quakes$lat)
plot(quakes$lat, quakes$long)
plot(quakes$lat, type = "l")
barplot(quakes$lat, main = 'depth of the water level', 
        xlab = 'water levels', col = 'green', horiz = TRUE)
hist(quakes$mag)
boxplot(quakes$mag)
boxplot(quakes[,0:4], main = 'Multiple Boxplots')
