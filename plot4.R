## Plot 4
# Load Data
data_file <- "household_power_consumption.txt" 
data <- read.table(data_file, sep=";", dec=".", header=TRUE, stringsAsFactors=FALSE) 
subset_data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,] 

# Create PNG
date_time <- strptime(paste(subset_data$Date, subset_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot4.png", width=480, height=480) 
par(mfrow = c(2, 2))
# Plot 1,1
plot(date_time,
     as.numeric(subset_data$Global_active_power), 
     type = "l",
     xlab="",
     ylab="Global Active Power")

# Plot 1,2
plot(date_time,
     as.numeric(subset_data$Voltage), 
     type = "l",
     xlab="datetime",
     ylab="Voltage")

# Plot 2,1
plot(date_time,
     as.numeric(subset_data$Sub_metering_1), 
     type = "l",
     xlab="",
     ylab="Energy sub metering")
lines(date_time,
      as.numeric(subset_data$Sub_metering_2),
      type = "l",
      col = "red")
lines(date_time,
      as.numeric(subset_data$Sub_metering_3),
      type = "l",
      col = "blue")
legend("topright", 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1,
       lwd = 2.5,
       col = c("black", "red", "blue"))

# Plot 2,2
plot(date_time,
     as.numeric(subset_data$Global_reactive_power), 
     type = "l",
     xlab="datetime",
     ylab="Global_reactive_power")

dev.off() 