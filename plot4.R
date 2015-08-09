## Draws plot4.png
plot4 <- function()
{
        loadData()
        png(file="plot4.png")
        # Set 2 rows, 2 columns
        par(mfrow=c(2,2))
        # Draw first graph
        with(powerData,plot(Time,Global_active_power,type="l",xlab="",
                            ylab="Global active power"))
        # Draw second graph
        with(powerData,plot(Time,Voltage,type="l",xlab=""))
        # Draw third graph
        with(powerData,plot(Time,Sub_metering_1,type="l",
                            xlab="",ylab="Energy sub metering"))
        # Add additional data points
        with(powerData,lines(Time,Sub_metering_2,col="red"))
        with(powerData,lines(Time,Sub_metering_3,col="blue"))
        # Add legend
        legend("topright",pch=NULL,lwd=1,lty=1,col=c("black","red","blue"),
               legend=names(powerData[7:9]),bty="n")
        # Draw fourth graph
        with(powerData,plot(Time,Global_reactive_power,type="l",xlab="",
                            ylab="Global reactive power"))
        dev.off()
}