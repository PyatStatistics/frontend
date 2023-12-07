library(rgdal)
shape <- readOGR(dsn = ".", layer = "map")
sh <- SpatialPolygonsDataFrame(sgape)
plot(sh)