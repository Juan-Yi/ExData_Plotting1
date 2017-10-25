power<-read.table("household_power_consumption.txt", sep = ";", header = TRUE)
power$Global_active_power<-as.numeric(as.character(power$Global_active_power))
power2day<- power[power$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(power2day$Date, power2day$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(datetime, power2day$Global_active_power, type = "l", xlab="", ylab="Global Active Power (kilowatts)")

