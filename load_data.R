source('download_data.R')

load_data <- function() {
  data_file = download_file()
  data = read.csv(
    data_file,
    sep = ';',
    dec = '.',
    na.strings = '?'
  )
  data$Date = as.Date(data$Date, "%d/%m/%Y")
  data = subset(data,Date == "2007-02-01" | Date == "2007-02-02")
  data$DateTime = strptime(apply(data[,1:2], 1, paste, collapse=' '), '%Y-%m-%d %H:%M:%S')
  data
}