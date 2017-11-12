source("read_data.r")

power_data<-read_data()
png("plot1.png",height = 480,width = 480,units = "px")
hist(power_data$Global_active_power,col = "red",xlab = "Global Active Power (Kilowatts)",main = "Global Active Power")
dev.off()
