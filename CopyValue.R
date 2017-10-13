# set the file path
setwd("C:\\Users\\LIANG ZHANG\\Desktop\\Institue for Intelligent System\\Fall Research 2017\\R code")  
#with the data Loaded into R (A method)
dat1<-read.delim("ds1465_tx_All_Data_64_2016_0720_222352short.txt")
#with the data Loaded into R (B method)
#dat1<-read.table("ds1465_tx_All_Data_64_2016_0720_222352short.txt",sep="\t", header=TRUE,na.strings="",quote="",comment.char = "")
dat2<-read.csv("NameValue.csv")

dat1$Value<-0
#Value<-0
#dat1<-cbind(dat1,Value)

for (i in levels(dat1$Anon.Student.Id)){
  if(i %in% dat2$Name){
    dat1$Value[dat1$Anon.Student.Id==i]<-dat2$Value[dat2$Name==i]
  }
}
write.csv(dat1,"CopyValue.csv",row.names =FALSE)



