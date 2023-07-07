setwd("/Users/yuxuanhu/Desktop/coursera_R/specdata")
filelist <- list.files(full.names = TRUE)

corr<- function(threshold=0){
  
cor_list <- c()
  for (i in 1:332){
    fileread <- read.csv(filelist[i])
    with_data <-fileread[(!is.na(fileread$sulfate)),]
    with_data <- with_data[(!is.na(with_data$nitrate)),]
    new_sheet <-data.frame(sulfate = with_data$sulfate,
                           nitrate = with_data$nitrate)
    cor_list<- c(cor_list, cor(new_sheet$sulfate, new_sheet$nitrate))
  }
  
  cor_list
  
}