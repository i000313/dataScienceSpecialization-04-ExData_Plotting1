
# Load and preper the dataset
source("load-dataset.R")

# Open a png graphic device
png(filename = "plot1.png", width=504, height=504, units = "px")

# Create plot1
hist(hpc.df$Global_active_power
     , col="red"
     , main="Global Active Power"
     , xlab="Global Active Power (kilowatts)")

# shuts down the graphic device
dev.off()
