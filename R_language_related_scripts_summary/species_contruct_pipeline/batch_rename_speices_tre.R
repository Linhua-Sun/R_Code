#!/usr/bin/Rscript
setwd("/Users/sunlinhua/Downloads/10-31/comsensus/")
dir()
oldstring<-readLines("/Users/sunlinhua/Downloads/10-31/oldname.txt")
newstring<-readLines("/Users/sunlinhua/Downloads/10-31/newname.txt")
filesname<-dir()
filesname
for (j in 1:length(filesname)) {
  shuju<-readLines(filesname[j])
  for (i in 1:length(oldstring)){
    newshuju<-sub(oldstring[i],newstring[i],shuju)
    shuju<-newshuju
  }
  name<-paste("../name_changed/name_changed_",filesname[j],sep = "")
  write(shuju,name)
  shuju<-NULL
}
