## Plot 1
# Load Data
data_file <- "household_power_consumption.txt" 
data <- read.table(data_file, sep=";", dec=".", header=TRUE, stringsAsFactors=FALSE) 
subset_data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,] 

# Create PNG
png("plot1.png", width=480, height=480) 
hist(as.numeric(subset_data$Global_active_power), 
     col="red", 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency")
dev.off() 

