# Set the working dir
setwd("E:/Os Meus Documentos/Courses/Cousera-DataScienceSpecialization-04ExploratoryDataAnalysis-2014Jun02-Jun30/CourseProject01-ExData_Plotting1")

# File to load
file.name <- "data/household_power_consumption.txt"

# Load the file into a data frame
hpc.df <- read.table(file.name, header=TRUE, sep=";"
                     , na.strings = "?", stringsAsFactors=FALSE)

# Get all the rows for this specif days
hpc.df <- hpc.df[(hpc.df$Date == "1/2/2007") | (hpc.df$Date == "2/2/2007"),]

# Create the "DateTime" varible from the character variables "Date" and "Time"
hpc.df$DateTime <- strptime(paste(hpc.df$Date, hpc.df$Time)
                            , "%d/%m/%Y %H:%M:%S")
