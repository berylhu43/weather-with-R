setwd("/Users/yuxuanhu/Desktop/coursera_R/specdata")
filelist <- list.files(full.names = TRUE)
complete<- function(id= 1:332){
  
  id_name <- c()
  number<-c()
  for (i in id){
    filenew<-read.csv(filelist[i])
    id_name <- c(id_name,i)
    not_sulfate<-filenew[(!is.na(filenew$sulfate)), ]
    not_both<-not_sulfate[(!is.na(not_sulfate$nitrate)), ]
    
    number<-c(number,nrow(not_both))
    df <- data.frame(ID=id_name,
                     nobs=number)
    
  }
  df
}

