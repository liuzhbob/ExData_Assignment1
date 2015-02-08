##Plot3

png(filename="plot3.png", width=480, height=480)
plot(powercon$timestamp, powercon$Sub_metering_1, type="l", xlab="",
     ylab="Energy sub metering")
lines(powercon$timestamp, powercon$Sub_metering_2, col="red")
lines(powercon$timestamp, powercon$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lwd=par("lwd"))
dev.off()