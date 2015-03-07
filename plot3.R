## Loading and preparing dataset 
data<-read.table("C:\\Users\\Sonam\\Documents\\GitHub\\ExData_Plotting1\\CourseProject(Week 1)\\data\\household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE,dec=".")

## Subset data accoring to the requirement
subsetData <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

mergedDateTime <- strptime(paste(subsetData$Date, subsetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
global.active.power <- as.numeric(subsetData$Global_active_power)
subMetering1 <- as.numeric(subsetData$Sub_metering_1)
subMetering2 <- as.numeric(subsetData$Sub_metering_2)
subMetering3 <- as.numeric(subsetData$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(mergedDateTime, subMetering1, type="l", ylab="Energy sub metering", xlab="")
lines(mergedDateTime, subMetering2, type="l", col="red")
lines(mergedDateTime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"))
dev.off()
