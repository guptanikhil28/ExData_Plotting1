dataset= read.table("household_power_consumption.txt",head=TRUE,sep = ";", na.strings="?")
dataset$Date=as.Date(dataset$Date,"%d/%m/%Y")
dataset$Time=strptime(dataset$Time, "%H:%M:%S")
dataset$Time=format(dataset$Time, format="%H:%M:%S")
dataset=dataset[dataset$Date >= "2007-02-01" & dataset$Date <= "2007-02-02",]
dataset$Datetime <- with(dataset, as.POSIXct(paste(dataset$Date, dataset$Time)))
plot(dataset$Datetime, dataset$Global_active_power, type="l",ylab = "GLobal Active Power",xlab = "") 