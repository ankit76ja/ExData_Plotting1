source("read_data.r")

power_data<-read_data()
png("plot2.png",height = 480,width = 480,units = "px")
plot(power_data$Time,power_data$Global_active_power,ylab = "Global Active Power (Kilowatts)",xlab = "",type = "l")
dev.off()