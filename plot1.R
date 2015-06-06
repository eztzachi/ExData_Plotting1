source("load_data.R")

png("plot1.png", width = 480, height = 480)
hist(power$Global_active_power, main = "Global Active power", col = "red", 
     xlab = "Global Active Power (kilowatts)", )
dev.off()