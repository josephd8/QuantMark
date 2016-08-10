


pointsmap <- function(data,min,max){
  newmap <- getMap(resolution = "high")
  plot(newmap, xlim = c(-130, -60), ylim = c(28, 52), asp = 1)
  
  newdat <- subset(data,subset = ContactScore >= min & ContactScore <= max,
                   select=c(City,ContactScore,Longitude,Latitude))
  
  points(newdat$Longitude,newdat$Latitude, col="red",cex=.6)
}
