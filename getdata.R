library(dplyr)
getdata <- function() {
  temp <- tempfile()
  url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(url, temp)
  data <- read.table(unz(temp, "household_power_consumption.txt"), header=TRUE, sep=";")
  unlink(temp)
  data$Date <- as.Date(data$Date, format="%d/%m/%Y")
  data$DateTime <- with(data, as.POSIXct(paste(Date, Time), "%d/%m/%Y %H:%M"))
  data <- data[data["Date"] >= "2007-02-01" & data["Date"] <= "2007-02-02",]
  data
}
