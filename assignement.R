activity<-read.csv2("activity.csv", sep=",")
head(activity)

hist(as.numeric(activity$steps))

mean(activity$steps, na.rm=T)

hist(tapply(activity$steps,activity$date,mean,na.rm=T))
hist(tapply(activity$steps,activity$date,sum,na.rm=T))

daily<-tapply(activity$steps,activity$date,sum,na.rm=T)
dailyd<-cbind(daily,date=row.names(daily))
intervals<-tapply(activity$steps,activity$interval,mean,na.rm=T)
intervalsd<-cbind(intervals,interval=as.numeric(row.names(intervals)))
mean(daily)
median(daily)

plot(intervalsd[,2:1],type="l")
intervals[intervals==max(intervals)]

nrow(activity[is.na(activity$steps),])
