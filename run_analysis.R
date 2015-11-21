# --------- LOAD DATASETS

xtest.df <- data.frame(read.delim('data\\x_test.txt', header=FALSE, sep=""))
ytest.df <- data.frame(read.delim('data\\y_test.txt', header=FALSE, sep=""))
test.df <- cbind(xtest.df, ytest.df)

xtrain.df <- data.frame(read.delim('data\\x_train.txt', header=FALSE, sep=""))
ytrain.df <- data.frame(read.delim('data\\y_train.txt', header=FALSE, sep=""))
train.df <- cbind(xtrain.df, ytrain.df)


# --------- COMBINED DATA & cleanup
all.df <- rbind(test.df, train.df)

rm(xtest.df)
rm(xtrain.df)
rm(test.df)
rm(train.df)
rm(ytest.df)
rm(ytrain.df)


# --------- ADD VARIABLE NAMES
dfnames <- read.table('data\\features.txt', header=FALSE)
new_name <- data.frame(V1=as.numeric(562), V2=c("Activity_Code"))

dfnames <- rbind(dfnames, new_name )
colnames(all.df) <- dfnames[,2]


# --------- MAKE A SMALLER DATASET : SUBSET THEN ADD ACTIVITY LABELS
colnames.ToKeep <-
  colnames(all.df)[grep(".*-mean\\(.*|.*-std\\(.*",colnames(all.df),ignore.case = T)]
colnames.ToKeep[length(colnames.ToKeep)+1] <- "Activity_Code"

# -- filter
all_final.df <- all.df[,colnames.ToKeep]
rm(all.df)
# -- labels
activity.labels <- data.frame(read.table('data\\activity_labels.txt', header=FALSE))
colnames(activity.labels) <-c ("Activity_Code", "Descriptive_Activity_Name")
# -- merge dataset and labels to assign the descriptive activity name
final.df <- merge(all_final.df, activity.labels, by.x="Activity_Code", by.y="Activity_Code")
rm(all_final.df)

# --------- SAVE RESULTS TO FILE
library(reshape2)
results.df <- 
  aggregate(final.df[,-c(68)], list(Descriptive_Activity_Name = final.df$"Descriptive_Activity_Name"), mean)
str(results.df)
tidy.df <- 
  melt(results.df, id=c("Descriptive_Activity_Name"),  #, "Activity_Code"
       measure.vars = colnames(results.df)[3:68]
         #c("tBodyAcc-mean()-X", "tBodyAcc-mean()-Y")
       ,variable.name="subject",value.name="average "
       ) 

#write.table(results.df, file = "analysis_results.txt", row.names = FALSE)
write.table(tidy.df, file = "analysis_results.txt", row.names = FALSE)

#write.table(names(results.df), file = "README.txt", row.names = FALSE)
