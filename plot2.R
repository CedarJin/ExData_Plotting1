mydata <- read.csv(file = "household_power_consumption.txt", header = TRUE, sep = ";")
mydata <-  mydata[mydata$Date %in% c("1/2/2007","2/2/2007"),]

datetime <- strptime(paste(mydata$Date, mydata$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

finaldata <- cbind(datetime,mydata)

plot(finaldata$datetime, finaldata$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")

