# File to load
file.name <- "data/household_power_consumption.txt"


hpc.df <- read.table(file.name, header=TRUE, sep=";", na.strings = "?", stringsAsFactors=FALSE)

hpc.df <- hpc.df[(hpc.df$Date == "1/2/2007") | (hpc.df$Date == "2/2/2007"),]

hpc.df$DateTime <- strptime(paste(hpc.df$Date, hpc.df$Time), "%d/%m/%Y %H:%M:%S")
