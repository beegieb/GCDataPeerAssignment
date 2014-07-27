source("settings.R")

if (!file.exists(data_dir)) {
  dir.create(data_dir)
}

fname <- paste0(data_dir, "/", input_data)
if (!file.exists(fname)) {
  download.file(data_url, fname, method="curl")
}

train.x <- read.table(unz(fname, "UCI HAR Dataset/train/X_train.txt"))
train.y <- read.table(unz(fname, "UCI HAR Dataset/train/y_train.txt"))
train.subject <- read.table(unz(fname, "UCI HAR Dataset/train/subject_train.txt"))

test.x <- read.table(unz(fname, "UCI HAR Dataset/test/X_test.txt"))
test.y <- read.table(unz(fname, "UCI HAR Dataset/test/y_test.txt"))
test.subject <- read.table(unz(fname, "UCI HAR Dataset/test/subject_test.txt"))

features <- read.table(unz(fname, "UCI HAR Dataset/features.txt"))

g1 <- grep("mean|std", features$V2)
g2 <- grep("meanFreq", features$V2[g1], invert = T)

feat.names <- features[g1[g2],2]
spl <- strsplit(as.character(feat.names), split="-")
feat.names <- sapply(spl, function(s) {
  if (s[2] == "mean()") {
    t <- "mean"
  } else {
    t <- "std"
  }
  paste(s[1], s[3], t, sep="_")
})

train.x <- train.x[,g1[g2]]
test.x <- test.x[,g1[g2]]

names(train.x) <- feat.names
names(test.x) <- feat.names

activityMap <- function(id) {
  switch(id, "1"="Walking", "2"="Walking Upstairs", "3"="Walking Downstairs",
         "4"="Sitting", "5"="Standing", "6"="Laying")
}

train.x$Subject <- train.subject[,1]
train.x$Activity <- sapply(train.y[,1], activityMap)
test.x$Subject <- test.subject[,1]
test.x$Activity <- sapply(test.y[,1], activityMap)

data <- rbind(train.x, test.x)

tidy.data <- aggregate(. ~ Subject + Activity, data=data, mean)

fname <- paste0(data_dir, "/", output_data)

write.csv(tidy.data, fname, row.names=FALSE)