## 读取经过处理的原始数据，按机型分组，得到每个月每个机型的飞行频次

get_aircraft <- function(data,yearmonth){
  a <- read_csv(data,na=c("")) %>% filter(!is.na(aircraft))
  b <- a %>% group_by(aircraft) %>% summarise(counts = n())
  write_csv(b,str_c("aircraft_counts_",yearmonth,".csv"))
}

get_aircraft("use_201901.csv","201901")
get_aircraft("use_201902.csv","201902")
get_aircraft("use_201903.csv","201903")
get_aircraft("use_201904.csv","201904")
get_aircraft("use_201905.csv","201905")
get_aircraft("use_201906.csv","201906")
get_aircraft("use_201907.csv","201907")
get_aircraft("use_201908.csv","201908")
get_aircraft("use_201909.csv","201909")
get_aircraft("use_201910.csv","201910")
get_aircraft("use_201911.csv","201911")
get_aircraft("use_201912.csv","201912")

get_aircraft("use_202001.csv","202001")
get_aircraft("use_202002.csv","202002")
get_aircraft("use_202003.csv","202003")
get_aircraft("use_202004.csv","202004")
get_aircraft("use_202005.csv","202005")
get_aircraft("use_202006.csv","202006")
get_aircraft("use_202007.csv","202007")
get_aircraft("use_202008.csv","202008")
get_aircraft("use_202009.csv","202009")

aircraft_counts <- read_csv("aircraft_counts.csv")
aircraft_counts %>% group_by(aircraft) %>% summarise(n = sum(counts)) %>% write_csv("aircraft_counts_use.csv")