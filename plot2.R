source('load_data.R')
source('save_dev_to_file.R')

data <- load_data()

plot(
  x = data$DateTime,
  y = data$Global_active_power,
  type = 'l',
  ylab = 'Global Active Power (kilowatts)',
  xlab = ''
)

save_dev_to_file('plot2.png')
