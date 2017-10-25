power<-read.table("household_power_consumption.txt", sep = ";", header = TRUE)
power$Global_active_power<-as.numeric(as.character(power$Global_active_power))
power2day<- power[power$Date %in% c("1/2/2007","2/2/2007") ,]

hist(power2day$Global_active_power, 	 	
	xlab = "Global Active Power(kilowatts)", 
	ylab = "Frequency", 
	main = "Global Active Power", 
	col = "red",
	)