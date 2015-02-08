
##Read in data
powercon = read.csv("household_power_consumption.txt", header=T,
                    sep=";", stringsAsFactors=F, na.strings="?",
                    colClasses=c("character", "character", "numeric",
                                 "numeric", "numeric", "numeric",
                                 "numeric", "numeric", "numeric"))

## Format and subset dates only between 2007-02-01 and 2007-02-02
powercon$Date = as.Date(powercon$Date, format="%d/%m/%Y")
sDate = as.Date("01/02/2007", format="%d/%m/%Y")
eDate = as.Date("02/02/2007", format="%d/%m/%Y")
powercon = powercon[powercon$Date >= sDate & powercon$Date <= eDate, ]

## plot 1
png(filename="plot1.png", width=480, height=480)
hist(powercon$Global_active_power, main="Global Active Power",
     xlab="Global Active Power (kilowatts)", col="red")
dev.off()