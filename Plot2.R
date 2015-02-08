##Read in data
powercon = read.csv("household_power_consumption.txt", header=T,
                    sep=";", stringsAsFactors=F, na.strings="?",
                    colClasses=c("character", "character", "numeric",
                                 "numeric", "numeric", "numeric",
                                 "numeric", "numeric", "numeric"))

## Format and subset dates only between 2007-02-01 and 2007-02-02
powercon$timestamp = strptime(paste(powercon$Date, powercon$Time),
                              format="%d/%m/%Y %H:%M:%S", tz="UTC")
sDate = strptime("01/02/2007 00:00:00", format="%d/%m/%Y %H:%M:%S", tz="UTC")
eDate = strptime("02/02/2007 23:59:59", format="%d/%m/%Y %H:%M:%S", tz="UTC")
powercon = powercon[powercon$timestamp >= sDate & powercon$timestamp <= eDate, ]


## plot2
png(filename="plot2.png", width=480, height=480)
plot(powercon$timestamp, powercon$Global_active_power, type="l", xlab="",
     ylab="Global Active Power (kilowatts)")
dev.off()
