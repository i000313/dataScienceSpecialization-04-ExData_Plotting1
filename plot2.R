
# Load and preper the dataset
source("load-dataset.R")

# Open a png graphic device
png(filename="plot2.png", width=504, height=504, units = "px")

# Create plot2
plot(hpc.df$DateTime, hpc.df$Global_active_power
     , type="l"
     , xlab=""
     , ylab="Global Active Power (kilowatts)")

# shuts down the graphic device
dev.off()
