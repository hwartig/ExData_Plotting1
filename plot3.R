source('load_data.R')
source('save_dev_to_file.R')

data <- load_data()

plot(
  x = data$DateTime,
  y = data$Sub_metering_1,
  type = 'l',
  xlab = '',
  ylab = 'Energy Sub Metering'
)
lines(
  x = data$DateTime,
  y = data$Sub_metering_2,
  col = 'red'
)
lines(
  x = data$DateTime,
  y = data$Sub_metering_3,
  col = 'blue'
)

legend(
  'topright',
  lty = 1,
  col = c('black', 'red', 'blue'),
  legend = c(
    'Sub_metering_1',
    'Sub_metering_2',
    'Sub_metering_3'
  ),
  cex = 0.7,
  text.width = strwidth('Sub_metering_2')
)

save_dev_to_file('plot3.png')
