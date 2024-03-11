# include libraries
library(ggplot2)
library(tidyverse)
library(ggmap)
library(mapproj)
library(RPostgreSQL)

# set connection information
db_host <- "database-2.cwhx9uqpnnqq.us-east-1.rds.amazonaws.com"
db_port <- 5432
db_name <- "oxcgrt"
db_user <- "brianshih59"
db_password <- "password"

# inorder to use ggmap, we have to register an google API key
register_google(key = 'google_API_key')

# get locations from the user
repeat{
    address1 <- readline('Enter the source : ')
    address2 <- readline('Enter the destination : ')
    
    # 2 paths for user to choose
    path1 <- route(address1, address2)
    path2 <- route(address2, address1)
    paths1 <- data.frame(latitude = path1$start_lat, longitude = path1$start_lon)
    last_row <- tail(paths1, n = 1)
    tmp <- c(latitude = last_row$end_lat, longitude = last_row$end_lon)
    paths1 <- rbind(paths1, tmp)
    paths2 <- data.frame(latitude = path2$start_lat, longitude = path2$start_lon)
    last_row <- tail(paths2, n = 1)
    tmp <- c(latitude = last_row$end_lat, longitude = last_row$end_lon)
    paths2 <- rbind(paths2, tmp)
    
    # get the longitude and latitude
    coordinates1 <- geocode(address1)
    coordinates2 <- geocode(address2)
    x1 <- coordinates1$lon
    y1 <- coordinates1$lat
    x2 <- coordinates2$lon
    y2 <- coordinates2$lat
    z = max(abs(x1 - x2), abs(y1 - y2))
    minx = min(x1, x2)
    miny = min(y1, y2)
    maxx = max(x1, x2)
    maxy = max(y1, y2)
    
    # check whether it is within the territory of Taiwan and with moderate distance
    if(z > 0.0004 && z < 0.03 && x1 > 119.47 && x1 < 122.01 && y1 > 21.9 && y1 < 25.32 &&
       x2 > 119.47 && x2 < 122.01 && y2 > 21.9 && y2 < 25.32)
        break
}

# connect to aws database
con <- dbConnect(RPostgreSQL::PostgreSQL(),
                 host = db_host,
                 port = db_port,
                 dbname = db_name,
                 user = db_user,
                 password = db_password)

# get the longitude and latitude of car accidents from database within specific range 
query1 <- paste("SELECT longitude, latitude 
                FROM data1
                WHERE longitude > ", minx - 0.01, " and longitude < ", maxx + 0.01, " and latitude > ", miny - 0.01, " and latitude < ",maxy + 0.01)
result1 <- dbSendQuery(con, query1)
data1 <- dbFetch(result1)
dbClearResult(result1)

query2 <- paste("SELECT longitude, latitude 
                FROM data2
                WHERE longitude > ", minx - 0.01, " and longitude < ", maxx + 0.01, " and latitude > ", miny - 0.01, " and latitude < ",maxy + 0.01)
result2 <- dbSendQuery(con, query2)
data2 <- dbFetch(result2)
dbClearResult(result2)

# disconnect from aws database
dbDisconnect(con)

# calculate the size of zoom
if(z < 0.0004){
    w <- 20
}else if(z < 0.0009){
    w <- 19
}else if(z < 0.0018){
    w <- 18
}else if(z < 0.00375){
    w <- 17
}else if(z < 0.0075){
    w <- 16
}else if(z < 0.015){
    w <- 15
}else if(z < 0.03)
    w <- 14

# derive the map of Taiwan
twmap <- get_googlemap(center = c(lon = mean(paths1$longitude), lat = mean(paths1$latitude)),
                       zoom = w, 
                       size = c(640, 640),
                       scale = 2,
                       language = "zh-TW")

# combine the map of Taiwan with paths
map <- ggmap(twmap) + geom_path(aes(x = longitude, y = latitude),
                                group = 1, color = "green",
                                size = 1,
                                data = paths1) + 
                      geom_path(aes(x = longitude, y = latitude),
                                group = 1, color = "darkorange",
                                size = 1,
                                data = paths2)

# combine the map of Taiwan with A2 accidents
map <- map + geom_point(data = data2,
                        aes(x = longitude, y = latitude),
                        size = 0.01, 
                        color = 'deepskyblue') 
    
# combine the map of Taiwan with A1 accidents
result <- map + geom_point(data = data1,
                        aes(x = longitude, y = latitude),
                        size = 2, 
                        color = 'red') 

# print the result
print(result)
