
mydata <- read.csv(file = "household_power_consumption.txt", header = TRUE, sep = ";")
mydata <- subset(mydata, Date == c("1/2/2007", "2/2/2007"))

hist(as.numeric(mydata$Global_active_power), col = "red", main = "Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, "plot1.png")
dev.off()
dev.cur()


