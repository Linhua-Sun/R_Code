#!/usr/bin/Rscript
setwd("/Users/sunlinhua/Documents/QIAN_LAB/LIUYANLAN/2016.1.19")
oldstring<-readLines("28_oldname.txt")
newstring<-readLines("28_newname.txt")
filesname<-dir(pattern = "tre$")
filesname
for (j in 1:length(filesname)) {
  shuju<-readLines(filesname[j])
  for (i in 1:length(oldstring)){
    newshuju<-sub(oldstring[i],newstring[i],shuju)
    shuju<-newshuju
  }
  name<-paste("name_changed_",filesname[j],sep = "")
  write(shuju,name)
  shuju<-NULL
}