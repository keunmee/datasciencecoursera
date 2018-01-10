
directory <- "specdata"
id <- 1:10
pollutant <- "nitrate"
pollutantmean(directory, pollutant, id){

a <- sprintf("%s/%03d.csv", directory, id)
specdatadf <- data.frame(a)
specdatadf$a <- as.character(specdatadf$a)

for(i in id) { 
  b <- read.csv(specdatadf$a[i], header = TRUE)
  if(i == min(id))
    accb <- b
  else 
    accb <- rbind(accb,b )
  
}
pollutant <- "nitrate"


if(pollutant == "nitrate") 
  mean(accb$nitrate, na.rm = TRUE)

else (pollutant == "sulfate")
  mean(accb$sulfate, na.rm = TRUE)

  
  
  
#pollutant4 <- paste0("accb","$",pollutant)
class(pollutant4)

pollutant4
accb$nitrate
pollutant4 == accb$nitrate
class(accb$nitrate)
pollutant3 <- as.symbol(pollutant4)
class(pollutant4)
pollutant3 <- (pollutant1)
pollutant3
str(pollutant3)
mean(accb$nitrate, na.rm = TRUE)
mean(pollutant3, na.rm = TRUE)
?mean
}
