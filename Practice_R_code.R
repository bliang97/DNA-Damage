#initialize stuff, get all data, only files with .csv, store in list
alldata <- list.files(path = "C:/Users/blian/OneDrive/Documents/DNA Damage/Practice", pattern = "*.csv")
list_data <- list()
list_plots <- list()
library(ggplot2)

#read data into r, only "alexa.488.A" column
for (i in alldata){
  list_data[[i]] <- read.csv(i, colClasses = c(rep("NULL",7), rep("vector",1), rep("NULL",4)))
}

#list2env(list_data, envir = .GlobalEnv) #puts into global environment

#colnames(`4h_24h_BT549_H2aX_S2_HD.csv`) #check header in file
#summary(list_data) #check what is in my list
#head(list_data[[1]]) #check first few values in file

#p <- ggplot(list_data[[1]], aes(x=Alexa.488.A)) + geom_density()
#p # test density plot