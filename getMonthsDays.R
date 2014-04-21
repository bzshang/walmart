dfTrainData <- read.csv('trainMerged.csv')
dfTrainData.Date <- as.Date(dfTrainData$Date,"%Y-%m-%d")
months <- as.numeric(format(dfTrainData.Date,"%m"))
days <- as.numeric(format(dfTrainData.Date,"%d"))

dfTrainData["Month"] <- months
dfTrainData["Day"] <- days

dfTrainData$Date <- NULL

write.table(x=dfTrainData,
            file='trainMergedMonthDay.csv',
            sep=',', row.names=FALSE, quote=FALSE)
