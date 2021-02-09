source("getdata.R")

data <- getdata()

png("plot4.png", width=480, height=480, unit="px")

par(mfrow=c(2,2))

plot(
  data$DateTime,
  as.numeric(as.character(data$Global_active_power)),
  type='l',
  xlab='',
  ylab="Global Active Power (kilowatts)"
)

plot(
  data$DateTime, as.numeric(as.character(data$Voltage)),
  type='l',
  xlab="datetime",
  ylab="Voltage"
)

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

plot(
  data$DateTime,
  as.numeric(as.character(data$Global_reactive_power)),
  type='l',
  ylab="Global_reactive_power",
  xlab="datetime"
)

dev.off()