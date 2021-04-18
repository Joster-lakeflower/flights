## 对经过处理的原始数据按（起点，终点）进行分组，统计出每一组的航班数量

get_map_data <- function(data,saveas){
  a <- read_csv(data,na=c(""))
  b <- a %>% group_by(origin,destination) %>% summarise(fly_counts = n()) %>% filter(!is.na(origin) & !is.na(destination))
  write_csv(b,saveas)
  return
}

get_map_data("use_201901.csv","map_201901.csv")
get_map_data("use_201902.csv","map_201902.csv")
get_map_data("use_201903.csv","map_201903.csv")
get_map_data("use_201904.csv","map_201904.csv")
get_map_data("use_201905.csv","map_201905.csv")
get_map_data("use_201906.csv","map_201906.csv")
get_map_data("use_201907.csv","map_201907.csv")
get_map_data("use_201908.csv","map_201908.csv")
get_map_data("use_201909.csv","map_201909.csv")

get_map_data("use_202001.csv","map_202001.csv")
get_map_data("use_202002.csv","map_202002.csv")
get_map_data("use_202003.csv","map_202003.csv")
get_map_data("use_202004.csv","map_202004.csv")
get_map_data("use_202005.csv","map_202005.csv")
get_map_data("use_202006.csv","map_202006.csv")
get_map_data("use_202007.csv","map_202007.csv")
get_map_data("use_202008.csv","map_202008.csv")
get_map_data("use_202009.csv","map_202009.csv")