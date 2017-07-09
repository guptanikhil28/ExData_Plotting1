dataset= read.table("household_power_consumption.txt",head=TRUE,sep = ";", na.strings="?")
dataset$Date=as.Date(dataset$Date,"%d/%m/%Y")
dataset$Time=strptime(dataset$Time, "%H:%M:%S")
dataset$Time=format(dataset$Time, format="%H:%M:%S")
dataset=dataset[dataset$Date >= "2007-02-01" & dataset$Date <= "2007-02-02",]
hist(dataset$Global_active_power, main="Global Active Power", ylab = "Frequency",xlab="Global Active Power (kilowatts)",border="black", col="red")