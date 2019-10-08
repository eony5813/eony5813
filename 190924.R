getwd()
setwd( "C:/Users/Jaw/Desktop")
setwd( "C:/Users/Jaw/Documents")

air = read.csv("./air_data.csv", stringsAsFactors = F)
list(air)
head(air)

list.files("./")

str(air)

air$so2Value = as.numeric(air$so2Value)

class(air$so2Value)

for(i in 4:9) {
  air[,i] = as.numeric(air[,i])
}
class(air[,5])  

air[3,]

nrow(air)
ncol(air)

a=list()
for(i in 4:9){
  a[i] = mean(air[,i],na.rm=TRUE)
}
a

