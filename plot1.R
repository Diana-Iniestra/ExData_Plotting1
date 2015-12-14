# Explorarory Data Analysis
# Project 1
# Plot 1

library(dplyr)
dataset <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
dates <- filter(dataset, Date == "1/2/2007" | Date == "2/2/2007")
hist(as.numeric(dates$Global_active_power), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", las = 1)
dev.copy(png, "plot1.png")
dev.off()
