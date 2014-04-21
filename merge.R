dfStore <- read.csv(file='stores.csv')
dfTrain <- read.csv(file='train.csv')
dfTest <- read.csv(file='test.csv')
dfFeatures <- read.csv(file='features.csv')

# Merge Type and Size
dfTrainTmp <- merge(x=dfTrain, y=dfStore, all.x=TRUE)
dfTestTmp <- merge(x=dfTest, y=dfStore, all.x=TRUE)

# Merge all the features
dfTrainMerged <- merge(x=dfTrainTmp, y=dfFeatures, all.x=TRUE)
dfTestMerged <- merge(x=dfTestTmp, y=dfFeatures, all.x=TRUE)

# Save datasets
write.table(x=dfTrainMerged,
            file='trainMerged.csv',
            sep=',', row.names=FALSE, quote=FALSE)
write.table(x=dfTestMerged,
            file='testMerged.csv',
            sep=',', row.names=FALSE, quote=FALSE)