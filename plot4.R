par(mfrow = c(2,2))

plot(datetime, mydata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power", cex = 0.2)
plot(datetime,mydata$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(datetime, mydata$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power", cex=0.2)

dev.copy(png, "plot4.png")
dev.off()
