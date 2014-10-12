download_file <- function(source_url = 'http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip') {
  tmp_file = './tmp/power_consumption.zip'
  data_file = './tmp/household_power_consumption.txt'
  
  if (!file.exists(data_file)) {
    download.file(source_url, destfile = tmp_file, mode='wb')
    unzip(tmp_file, exdir = './tmp')
  }
  data_file
}