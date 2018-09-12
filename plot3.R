# Plot3.R

# Load the data
power <- read.csv2('household_power_consumption.txt', stringsAsFactors = FALSE)

# Filter the required days
pow <- power[power$Date == "1/2/2007" | power$Date == "2/2/2007",]

# Convert the data to appropriate format
library(lubridate)
pow$Date <- dmy_hms( paste(pow$Date , pow$Time) )
pow$Time <- NULL
pow$Global_active_power <- as.numeric(pow$Global_active_power)
pow$Global_reactive_power <- as.numeric(pow$Global_reactive_power)
pow$Voltage <- as.numeric(pow$Voltage)
pow$Global_intensity <- as.numeric(pow$Global_intensity)
pow$Sub_metering_1 <- as.numeric(pow$Sub_metering_1)
pow$Sub_metering_2 <- as.numeric(pow$Sub_metering_2)
pow$Sub_metering_3 <- as.numeric(pow$Sub_metering_3)

# Display first the plot on screen, and then save to file
plot(pow$Date, pow$Global_active_power, ylab="Global Active Power(kilowatts)", xlab = "", type = "l")
dev.copy(png,'plot3.png')
dev.off()
