source('load_data.R')

png("plot3.png", width = 480, height = 480)
 
plot(power$Datetime, power$Sub_metering_1, type='l', xlab='', 
     ylab='Energy sub metering')
lines(power$Datetime, power$Sub_metering_2, col='red')
lines(power$Datetime, power$Sub_metering_3, col='blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), lty='solid', lwd=2)
dev.off()