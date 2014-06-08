
# Load and preper the dataset
source("load-dataset.R")

# Create plot2
png(filename="plot3.png", width=504, height=504, units="px")
cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(hpc.df$DateTime, hpc.df$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(hpc.df$DateTime, hpc.df$Sub_metering_2, col="red", type="l")
lines(hpc.df$DateTime, hpc.df$Sub_metering_3, col="blue", type="l")
legend("topright", col=c("black","blue","red"), legend=cols, lty=1, lwd=1)
dev.off()
