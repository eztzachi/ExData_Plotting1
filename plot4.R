source('load_data.R')

png("plot4.png", width = 480, height = 480)
# split the graphic device to 2X2 layout 
par(mfrow=c(2,2))

# Top left graph
plot(power$Datetime, power$Global_active_power, xlab='', 
     ylab='Global Active Power', type='l')

# Top right graph
plot(power$Datetime, power$Voltage, xlab='datetime', ylab='Voltage', type='l')

# Bottom left graph
plot(power$Datetime, power$Sub_metering_1, type='l', xlab='', 
     ylab='Energy sub metering')
lines(power$Datetime, power$Sub_metering_2, col='red')
lines(power$Datetime, power$Sub_metering_3, col='blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), lty='solid', lwd=2, bty='n')

# Bottom right graph
plot(power$Datetime, power$Global_reactive_power, xlab='datetime', 
     ylab='Global_reactive_power', type='l')

dev.off()