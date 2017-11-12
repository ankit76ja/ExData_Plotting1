source("read_data.r")

power_data<-read_data()
png("plot3.png",height = 480,width = 480,units = "px")
plot(power_data$Time, power_data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(power_data$Time,power_data$Sub_metering_2,col="red")
lines(power_data$Time,power_data$Sub_metering_3,col="blue")
legend("topright",legend = c("sub_metering_1","sub_metering_2","sub_metering_3"),lty = 1,col = c("black","red","blue"),cex = 0.75,box.lty = 0)

dev.off()
