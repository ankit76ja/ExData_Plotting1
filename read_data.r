

read_data=function(){
  library("dplyr")
  x<-read.table("./household_power_consumption.txt",sep = ";",header = TRUE,na.strings = "?")
  date_time<-strptime(paste(x$Date," ",x$Time),"%d/%m/%Y %H:%M:%S")
  x$Time<-as.POSIXct(date_time)
  new_df<-subset(x,x$Time >= strptime("2007-02-01 00:00:00", "%Y-%m-%d %H:%M:%S") & x$Time <= strptime("2007-02-03 00:00:00", "%Y-%m-%d %H:%M:%S"))
  new_df
}