# set the file path
setwd("C:\\Users\\LIANG ZHANG\\Desktop\\Institue for Intelligent System\\Fall Research 2017\\R code")  
#with the data Loaded into R (A method)
dat1<-read.delim("ds1465_tx_All_Data_64_2016_0720_222352short.txt")
set.seed(5)
dat2<-data.frame(Name=levels(dat1$Anon.Student.Id),Value=sample(1:100,17))
write.csv(dat2,file="NameValue.csv",row.names =FALSE)

