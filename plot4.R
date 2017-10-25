power<-read.table("household_power_consumption.txt", sep = ";", header = TRUE)
power2day<- power[power$Date %in% c("1/2/2007","2/2/2007") ,]

power2day$Global_active_power<-as.numeric(as.character(power2day$Global_active_power))
voltage<-as.numeric(as.character(power2day$Voltage))
Sub_metering_1<-as.numeric(as.character(power2day$Sub_metering_1))
Sub_metering_2<-as.numeric(as.character(power2day$Sub_metering_2))
Sub_metering_3<-as.numeric(as.character(power2day$Sub_metering_3))
global_reactive_power<-as.numeric(as.character(power2day$Global_reactive_power))

par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
with(power2day, {
 plot(datetime, power2day$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

 plot(datetime, voltage, type = "l", xlab = "datetime", ylab = "Voltage")

 plot(datetime, Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
 lines(datetime, Sub_metering_2, col = "red")
 lines(datetime, Sub_metering_3, col = "blue")
 legend("topright", col = c("black", "red", "blue"), 
		legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1, 1, 1))

 plot(datetime, global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
}
)
