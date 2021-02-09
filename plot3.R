source("getdata.R")

data <- getdata()

png("plot3.png", width=480, height=480, unit="px")


plot(
  data$DateTime,
  as.numeric(as.character(data$Sub_metering_1)),
  type='l',
  xlab='',
  ylab="Energy sub metering"
)

lines(
  data$DateTime,
  as.numeric(as.character(data$Sub_metering_2)),
  col="red"
)

lines(
  data$DateTime,
  as.numeric(as.character(data$Sub_metering_3)),
  col="blue"
)

legend(
  "topright", 
  legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
  col=c("black", "red", "blue"),
  lty=c(1, 1, 1)
)

dev.off()