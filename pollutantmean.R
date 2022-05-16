pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  full_files <- list.files(directory, full.names = TRUE)
  full_tab <- data.frame()
  
  for(i in id){
    full_tab <- rbind(full_tab, read.csv(full_files[i]))
  }
  
  if(pollutant == "nitrate"){
    
    mean(full_tab$nitrate, na.rm = TRUE)
  }
  else {
    mean(full_tab$sulfate, na.rm = TRUE)
  }
}