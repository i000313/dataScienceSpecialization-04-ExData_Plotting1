
# Load and preper the dataset
source("load-dataset.R")

# Create plot2
png(filename="plot2.png", width=504, height=504, units = "px")
plot(hpc.df$DateTime, hpc.df$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
