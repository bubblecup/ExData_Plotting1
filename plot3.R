plot3 <- function()
{
        loadData()
        png(file="plot3.png")
        # Draw main plot
        with(powerData,plot(Time,Sub_metering_1,type="l",
                xlab="",ylab="Energy sub metering"))
        # Draw remaining two sets of data points
        with(powerData,lines(Time,Sub_metering_2,col="red"))
        with(powerData,lines(Time,Sub_metering_3,col="blue"))
        # Draw legend
        legend("topright",pch=NULL,lwd=1,lty=1,col=c("black","red","blue"),
               legend=names(powerData[7:9]))
        dev.off()
}