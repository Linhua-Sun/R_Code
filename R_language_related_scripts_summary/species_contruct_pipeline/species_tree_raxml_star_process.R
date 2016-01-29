## this script is used to construct a coalscent tree (based on bootstrap tree)
#!/usr/bin/Rscript
library(phybase)
for (j in 1:10) {
  listfiles<-paste("RAxML_bootstrap.",j,"ML_GTR_SIM_DATA",sep="")
  files<-list.files(pattern =listfiles)
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
  }
  filename<-paste("../",j,"_raxml_speciestrees.tre",sep="")
  write(test.startrees, file=filename)
}

