power<-read.table("household_power_consumption.txt", sep = ";", header = TRUE)
power2day<- power[power$Date %in% c("1/2/2007","2/2/2007") ,]

Sub_metering_1<-as.numeric(as.character(power2day$Sub_metering_1))
Sub_metering_2<-as.numeric(as.character(power2day$Sub_metering_2))
Sub_metering_3<-as.numeric(as.character(power2day$Sub_metering_3))

plot(datetime, Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(datetime, Sub_metering_2, col = "red")
lines(datetime, Sub_metering_3, col = "blue")

legend("topright", col = c("black", "red", "blue"), 
		legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1, 1, 1))