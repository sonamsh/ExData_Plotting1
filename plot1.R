
## Loading and preparing dataset 
data<-read.table("C:\\Users\\Sonam\\Documents\\GitHub\\ExData_Plotting1\\CourseProject(Week 1)\\data\\household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE,dec=".")

## Subset data accoring to the requirement
subsetData <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

## convert column to plot to numeric
global.active.power <- as.numeric(subsetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(global.active.power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
