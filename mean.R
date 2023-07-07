setwd("/Users/yuxuanhu/Desktop/coursera_R/specdata")



pollutantmean <- function(pollutant,id=1:332){
  filelist <- list.files(full.names = TRUE)
  total <-c()
  for (i in id){
    the_file = read.csv(filelist[i])
    the_pollutant<-the_file[[pollutant]]
    
    total<- c(total,the_pollutant)
    the_mean<-mean(total, na.rm=TRUE)
  }
  
  the_mean
}