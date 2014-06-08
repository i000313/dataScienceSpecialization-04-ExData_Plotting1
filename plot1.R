
# Load and preper the dataset
source("load-dataset.R")

# Create the histogram plot
png(filename = "plot1.png", width=504, height=504, units = "px")
hist(hpc.df$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
