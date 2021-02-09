source("getdata.R")

data <- getdata()

png("plot1.png", width=480, height=480, unit="px")


hist(
  as.numeric(as.character(data$Global_active_power)),
  xlab="Global Active Power (kilowatts)",
  col="red",
  main="Global Active Power"
)


dev.off()