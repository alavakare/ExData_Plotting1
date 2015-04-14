## read the first 50 days of data, that will take you up to 3-2-2007
hpc <- read.csv("household_power_consumption.txt", sep=";",header = TRUE, na.strings="?", nrows= 70500)

## subset for 1st & 2nd February
hpc2=subset(hpc, Date=="1/2/2007" | Date=="2/2/2007")

## open png file as graphic device
png(filename="plot1.png", width = 480, height = 480)

## plot the histogram with title and x-axis labels
hist(hpc2$Global_active_power, col = "red", breaks=12, main = "Global Active Power",xlab ="Global Active Power (kilowatts)")

## close graphics device
dev.off()