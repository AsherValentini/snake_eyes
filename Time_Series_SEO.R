#SEO- time series code

#reading in the data set
coke<-read.table(pipe("pbpaste"),header=T)

#plotting the time series
plot.ts(coke)

#Applying log and second difference transformations i.o.t make the series stationary
coke_station_oine<-log(coke)

#Seeing how many ACfs are required
acf(coke_station_two)

#Building the ARIMA model
values<-arima(coke,order=c(1,2,0))

#Getting 3 forecasted values
forecasted<-predict(values,n.ahead=3)
forecasted