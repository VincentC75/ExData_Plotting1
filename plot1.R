# Plot1.R

# Load the data
power <- read.csv2('household_power_consumption.txt', stringsAsFactors = FALSE)

# Filter the required days

pow <- power[power$Date == "1/2/2007" | power$Date == "2/2/2007",]


# Convert the data to appropriate format
library(lubridate)
power$Date <- dmy_hms( paste(power$Date , power$Time) )
power$Time <- NULL
power$Global_active_power <- as.numeric(power$Global_active_power)
power$Global_reactive_power <- as.numeric(power$Global_reactive_power)
power$Voltage <- as.numeric(power$Voltage)
power$Global_intensity <- as.numeric(power$Global_intensity)
power$Sub_metering_1 <- as.numeric(power$Sub_metering_1)
power$Sub_metering_2 <- as.numeric(power$Sub_metering_2)
power$Sub_metering_3 <- as.numeric(power$Sub_metering_3)
