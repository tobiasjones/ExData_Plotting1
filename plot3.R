## Plot 3
# Load Data
data_file <- "household_power_consumption.txt" 
data <- read.table(data_file, sep=";", dec=".", header=TRUE, stringsAsFactors=FALSE) 
subset_data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,] 

# Create PNG
date_time <- strptime(paste(subset_data$Date, subset_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot3.png", width=480, height=480) 
plot(date_time,
     as.numeric(subset_data$Sub_metering_1), 
     type = "l",
     xlab="",
     ylab="Energy Submetering")
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
dev.off() 