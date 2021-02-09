source("getdata.R")

data <- getdata()

png("plot2.png", width=480, height=480, unit="px")


plot(
  data$DateTime,
  as.numeric(as.character(data$Global_active_power)),
  type='l',
  xlab='',
  ylab="Global Active Power (kilowatts)"
)

dev.off()