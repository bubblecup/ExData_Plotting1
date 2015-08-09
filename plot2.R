plot2 <- function()
{
        loadData()
        png(file="plot2.png")
        with(powerData,plot(Time,Global_active_power,type="l",
                            xlab="",ylab="Global active power (kilowatts)"))
        dev.off()
}