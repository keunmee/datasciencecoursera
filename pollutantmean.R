
#id <- 2:10
#id
#min(id)
pollutantmean <- function(directory, pollutant, id) {
#id <- 7:9
#directory <- "specdata"
#pollutant <- "nitrate"
a <- sprintf("%s/%03d.csv", directory, id)

print(a[1])
print(a[length(id)])
#specdatadf <- data.frame(a)
#specdatadf$a <- as.character(specdatadf$a)

#i <- min(id)
#length(id)
#print(i)
for(i in 1:length(id)) {
  
  b <- read.csv(a[i], header = TRUE)
 
  if(i == 1)
    {accb <- b
  print(i)}
  else 
    
    {accb <- rbind(accb,b )
  print(i)}
} 

if(pollutant == "nitrate") 
  mean(accb$nitrate, na.rm = TRUE)

else
#elseif(pollutant == "sulfate") 
  mean(accb$sulfate, na.rm = TRUE)

  
}

#k <- read.csv("specdata/023.csv", header = TRUE)
#mean(k$nitrate, na.rm = TRUE)
#mean(k$sulfate, na.rm = TRUE)
