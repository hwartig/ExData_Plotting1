source('load_data.R')
source('save_dev_to_file.R')

data <- load_data()

par(mfrow = c(2, 2), cex.lab=0.8)

# plot 1
plot(
  x = data$DateTime,
  y = data$Global_active_power,
  type = 'l',
  ylab = 'Global Active Power',
  xlab = ''
)

# plot 2
plot(
  x = data$DateTime,
  y = data$Voltage,
  type='l',
  ylab = 'Voltage',
  xlab = 'datetime'
)

# plot 3
plot(
  x = data$DateTime,
  y = data$Sub_metering_1,
  type = 'l',
  ylab = 'Energy sub metering',
  xlab = ''
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
  c(
    'Sub_metering_1',
    'Sub_metering_2',
    'Sub_metering_3'
  ),
  cex = 0.7,
  bty = 'n',
  text.width = strwidth('Sub_metering_2'),
)

# plot 4
plot(
  x = data$DateTime,
  y = data$Global_reactive_power,
  type = 'l',
  ylab = 'Global_reactive_power',
  xlab = 'datetime'
)

save_dev_to_file('plot4.png')
