## 数据预处理，从原始数据中提取出需要的部分，进行变量重命名，并与表airports进行左连接，从而得到包含始发城市、始发国家、始发大洲、到达城市、到达国家、到达大洲信息的数据

library(tidyverse)
#airports <- read_csv("airports.csv")
#airports_use <- airports %>% rename(icao=ident,country=iso_country) %>% select(icao,name,continent,country,municipality)
#write_csv(airports_use,"airports_use.csv")

airports_use <- read_csv("airports_use.csv",na=c(""))

get_concat_file <- function(df1,df2,saveas){
  temp1 <- df1 %>% rename(aircraft=typecode,latitude_origin=latitude_1,longitude_origin=longitude_1,latitude_dest=latitude_2,longitude_dest=longitude_2) %>% select(callsign,aircraft,origin,destination,latitude_origin,longitude_origin,latitude_dest,longitude_dest,firstseen,lastseen) %>% mutate(dep_date=str_sub(firstseen,1,10),dep_hour=str_sub(firstseen,12,13),dep_min=str_sub(firstseen,15,16),arr_date=str_sub(lastseen,1,10),arr_hour=str_sub(lastseen,12,13),arr_min=str_sub(lastseen,15,16))
  temp2 <- temp1 %>% left_join(df2,by=c("origin"="icao")) %>% rename(dep_continent=continent,dep_country=country,dep_city=municipality) %>% select(-c(name,firstseen,lastseen)) %>% left_join(df2,by=c("destination"="icao")) %>% rename(arr_continent=continent,arr_country=country,arr_city=municipality) %>% select(-name)

write_csv(temp2,saveas,na="")
}

flights_201901 <- read_csv("201901.csv")
get_concat_file(flights_201901,airports_use,"use_201901.csv")
remove(flights_201901)

flights_201902 <- read_csv("201902.csv")
get_concat_file(flights_201902,airports_use,"use_201902.csv")
remove(flights_201902)

flights_201903 <- read_csv("201903.csv")
get_concat_file(flights_201903,airports_use,"use_201903.csv")
remove(flights_201903)

flights_201904 <- read_csv("201904.csv")
get_concat_file(flights_201904,airports_use,"use_201904.csv")
remove(flights_201904)

flights_201905 <- read_csv("201905.csv")
get_concat_file(flights_201905,airports_use,"use_201905.csv")
remove(flights_201905)

flights_201906 <- read_csv("201906.csv")
get_concat_file(flights_201906,airports_use,"use_201906.csv")
remove(flights_201906)

flights_201907 <- read_csv("201907.csv")
get_concat_file(flights_201907,airports_use,"use_201907.csv")
remove(flights_201907)

flights_201908 <- read_csv("201908.csv")
get_concat_file(flights_201908,airports_use,"use_201908.csv")
remove(flights_201908)

flights_201909 <- read_csv("201909.csv")
get_concat_file(flights_201909,airports_use,"use_201909.csv")
remove(flights_201909)

flights_201910 <- read_csv("201910.csv")
get_concat_file(flights_201910,airports_use,"use_201910.csv")
remove(flights_201910)

flights_201911 <- read_csv("201911.csv")
get_concat_file(flights_201911,airports_use,"use_201911.csv")
remove(flights_201911)

flights_201912 <- read_csv("201912.csv")
get_concat_file(flights_201912,airports_use,"use_201912.csv")
remove(flights_201912)

flights_202001 <- read_csv("202001.csv")
get_concat_file(flights_202001,airports_use,"use_202001.csv")
remove(flights_202001)

flights_202002 <- read_csv("202002.csv")
get_concat_file(flights_202002,airports_use,"use_202002.csv")
remove(flights_202002)

flights_202003 <- read_csv("202003.csv")
get_concat_file(flights_202003,airports_use,"use_202003.csv")
remove(flights_202003)

flights_202004 <- read_csv("202004.csv")
get_concat_file(flights_202004,airports_use,"use_202004.csv")
remove(flights_202004)

flights_202005 <- read_csv("202005.csv")
get_concat_file(flights_202005,airports_use,"use_202005.csv")
remove(flights_202005)

flights_202006 <- read_csv("202006.csv")
get_concat_file(flights_202006,airports_use,"use_202006.csv")
remove(flights_202006)

flights_202007 <- read_csv("202007.csv")
get_concat_file(flights_202007,airports_use,"use_202007.csv")
remove(flights_202007)

flights_202008 <- read_csv("202008.csv")
get_concat_file(flights_202008,airports_use,"use_202008.csv")
remove(flights_202008)

flights_202009 <- read_csv("202009.csv")
get_concat_file(flights_202009,airports_use,"use_202009.csv")
remove(flights_202009)