# Explorarory Data Analysis
# Project 1
# Plot 2

setwd("C:/Users/Diana/Desktop/Exploratory Data Analysis")
library(dplyr)
dataset <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
dates <- filter(dataset, Date == "1/2/2007" | Date == "2/2/2007")
plot(as.numeric(dates$Global_active_power), col = "black", ylab = "Global Active Power (kilowatts)", type = "l", xlab = "")
dev.copy(png, "plot2.png")
dev.off()
