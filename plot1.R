source('load_data.R')
source('save_dev_to_file.R')

data <- load_data()

hist(
  data$Global_active_power,
  col = 'red',
  main = 'Global Active Power',
  xlab = 'Global Active Power (kilowatts)'
)

save_dev_to_file('plot1.png')
