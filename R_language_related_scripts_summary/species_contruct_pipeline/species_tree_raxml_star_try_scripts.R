#!/usr/bin/Rscript
library("phybase")
setwd("/Users/sunlinhua/Desktop/2015.11.26_zhong_try/comp_species_tree/")
files<-dir(pattern = "^ML")
test.boottrees<-matrix("",305,1000)
for(i in 1:length(files))
{
  x<-scan(files[i],what="character",sep="\n")
  x<-gsub("_","",x)
  test.boottrees[i,]<-x
}
test.taxaname<-c("Adiantum","Amborella","Cryptomeri","Cycas","Ginkgo","Gnetum","Nuphar","Piceaglau","Piceasitc","Pinuscont","Pinustaed","Selaginell","Welwitschi","Zamia")
species.structure<-matrix(0, 14, 14)
diag(species.structure)<-1
test.startrees<-rep("",1000)
for(i in 1:1000){
  test.startrees[i]<-star.sptree(test.boottrees[,i],speciesname=test.taxaname,taxaname=test.taxaname, species.structure=species.structure, outgroup="Selaginell", method="nj")
  print(i)
}
write(test.startrees, file="../test.startrees.tre")
