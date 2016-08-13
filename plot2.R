## Plot 2
# Load Data
data_file <- "household_power_consumption.txt" 
data <- read.table(data_file, sep=";", dec=".", header=TRUE, stringsAsFactors=FALSE) 
subset_data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,] 

# Create PNG
png("plot2.png", width=480, height=480) 
plot(strptime(paste(subset_data$Date, subset_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S"),
     as.numeric(subset_data$Global_active_power), 
     type = "l",
     xlab="",
     ylab="Global Active Power (kilowatts)")
dev.off() 