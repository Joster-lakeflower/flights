## 首先过滤掉始发国家和抵达国家为缺失值的记录，接着分别以（起飞日期，始发国家）和（抵达日期，抵达国家）为分组依据，统计每个国家每天的航班起飞量和航班降落量，共得到42个文件

get_flights_quantity <- function(data,yearmonth){
  a <- read_csv(data,na=c("")) %>% filter(!is.na(dep_country)) %>% filter(!is.na(arr_country))
  b1 <- a %>% group_by(dep_date,dep_country) %>% summarise(dep_counts = n())
  write_csv(b1,str_c("dep_counts_",yearmonth,".csv"))
  b2 <- a %>% group_by(arr_date,arr_country) %>% summarise(arr_counts = n())
  write_csv(b2,str_c("arr_counts_",yearmonth,".csv"))
}
    
get_flights_quantity("use_201901.csv","201901")
get_flights_quantity("use_201902.csv","201902")
get_flights_quantity("use_201903.csv","201903")
get_flights_quantity("use_201904.csv","201904")
get_flights_quantity("use_201905.csv","201905")
get_flights_quantity("use_201906.csv","201906")
get_flights_quantity("use_201907.csv","201907")
get_flights_quantity("use_201908.csv","201908")
get_flights_quantity("use_201909.csv","201909")
get_flights_quantity("use_201910.csv","201910")
get_flights_quantity("use_201911.csv","201911")
get_flights_quantity("use_201912.csv","201912")

get_flights_quantity("use_202001.csv","202001")
get_flights_quantity("use_202002.csv","202002")
get_flights_quantity("use_202003.csv","202003")
get_flights_quantity("use_202004.csv","202004")
get_flights_quantity("use_202005.csv","202005")
get_flights_quantity("use_202006.csv","202006")
get_flights_quantity("use_202007.csv","202007")
get_flights_quantity("use_202008.csv","202008")
get_flights_quantity("use_202009.csv","202009")