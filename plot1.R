## Draws plot1.png
plot1 <- function()
{
        loadData()
        png(file="plot1.png")
        hist(powerData$Global_active_power, col="red", main="Global Active Power",
             xlab="Global active power (kilowatts)", ylab="Frequency")
        dev.off()
}