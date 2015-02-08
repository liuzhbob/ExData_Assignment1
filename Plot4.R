##Plot4
png(filename="plot4.png", width=480, height=480)
par(mfcol=c(2,2))
plot(powercon$timestamp, powercon$Global_active_power, type="l", xlab="",
     ylab="Global Active Power")

plot(powercon$timestamp, powercon$Sub_metering_1, type="l", xlab="",
     ylab="Energy sub metering")
lines(powercon$timestamp, powercon$Sub_metering_2, col="red")
lines(powercon$timestamp, powercon$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lwd=par("lwd"), bty="n")

plot(powercon$timestamp, powercon$Voltage, type="l",
     xlab="datetime", ylab="Voltage")

plot(powercon$timestamp, powercon$Global_reactive_power, type="l",
     xlab="datetime", ylab="Global_reactive_power")
dev.off()