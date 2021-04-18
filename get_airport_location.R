## 抽取航线，添加机场的经度和纬度、所在城市、所在国家、所在大洲等信息

get_location <- function(data,saveas){
  airports <- read_csv("airports.csv",na=c(""))
  airports <- airports %>% rename(icao=ident,latitude=latitude_deg,longitude=longitude_deg,country=iso_country) %>% select(icao,latitude,longitude,continent,country,municipality)
  
  flights <- read_csv(data)
  airports_with_location <- flights %>% left_join(airports,by=c("origin"="icao")) %>% rename(latitude_origin = latitude, longitude_origin = longitude,dep_continent=continent,dep_country=country,dep_city=municipality) %>% select(origin,dep_continent,dep_country,dep_city,latitude_origin,longitude_origin,destination,fly_counts)
  
  airports_with_location <- airports_with_location %>% left_join(airports,by=c("destination"="icao")) %>% rename(latitude_dest = latitude, longitude_dest = longitude,arr_continent=continent,arr_country=country,arr_city=municipality) %>% select(origin,dep_continent,dep_country,dep_city,latitude_origin,longitude_origin,destination,arr_continent,arr_country,arr_city,latitude_dest,longitude_dest,fly_counts)
  write_csv(airports_with_location,saveas,na="")
}

get_location("map_201901.csv","airmap_201901.csv")
get_location("map_201902.csv","airmap_201902.csv")
get_location("map_201903.csv","airmap_201903.csv")
get_location("map_201904.csv","airmap_201904.csv")
get_location("map_201905.csv","airmap_201905.csv")
get_location("map_201906.csv","airmap_201906.csv")
get_location("map_201907.csv","airmap_201907.csv")
get_location("map_201908.csv","airmap_201908.csv")
get_location("map_201909.csv","airmap_201909.csv")

get_location("map_202001.csv","airmap_202001.csv")
get_location("map_202002.csv","airmap_202002.csv")
get_location("map_202003.csv","airmap_202003.csv")
get_location("map_202004.csv","airmap_202004.csv")
get_location("map_202005.csv","airmap_202005.csv")
get_location("map_202006.csv","airmap_202006.csv")
get_location("map_202007.csv","airmap_202007.csv")
get_location("map_202008.csv","airmap_202008.csv")
get_location("map_202009.csv","airmap_202009.csv")