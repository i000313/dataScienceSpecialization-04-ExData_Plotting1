
# Load and preper the dataset
source("load-dataset.R")

# Create plot4
png(filename="plot4.png", width=504, height=504, units="px")

par (mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))

with(hpc.df, 
 {
  # 1 of 4
  plot(DateTime, Global_active_power, xlab="", ylab="Global Active Power", type="l")
  # 2 of 4
  plot(DateTime, Voltage, xlab="datetime", ylab="Voltage", type="l")
  
  # 3 of 4
  cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
   plot(DateTime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")  
   lines(DateTime, Sub_metering_2, col="red", type="l")
   lines(DateTime, Sub_metering_3, col="blue", type="l")
   legend("topright", col=c("black","blue","red"), legend=cols, bty="n", lty=1, lwd=1)
   # 3 of 4
   plot(DateTime, Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l")        
  }
 )    
dev.off()
