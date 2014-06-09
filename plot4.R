
# Load and preper the dataset
source("load-dataset.R")

# Create plot4
png(filename="plot4.png", width=504, height=504, units="px")

# Set some graphical parameters.
par(mfrow=c(2,2))

with(hpc.df, 
{
  # 1 of 4
  plot(hpc.df$DateTime, Global_active_power
       , xlab="", ylab="Global Active Power", type="l")
  
  # 2 of 4
  plot(hpc.df$DateTime, Voltage, xlab="datetime", ylab="Voltage", type="l")
  
  # 3 of 4
  cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
  plot(hpc.df$DateTime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")  
  lines(hpc.df$DateTime, Sub_metering_2, col="red", type="l")
  lines(hpc.df$DateTime, Sub_metering_3, col="blue", type="l")
  legend("topright", col=c("black","blue","red"), legend=cols, bty="n", lty=1, lwd=1)
  
  # 3 of 4
  plot(hpc.df$DateTime, Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l")        
  }
)

# shuts down the graphic device
dev.off()
