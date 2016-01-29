## this part is used to construct a coalscent tree (based on bootstrap tree)
#!/usr/bin/Rscript
Args <- commandArgs()
k<-as.numeric(Args[6])
library(phybase)
  proce<-paste("processing is ",k,sep="")
  print(proce)
  listfiles<-paste(k,".ali_sample.treelist_trans_rooted$",sep = "")
  files<-list.files(pattern =listfiles)
  test.boottrees<-matrix("",305,1000)
  for(i in 1:length(files))
  {
    x<-scan(files[i],what="character",sep="\n")
    test.boottrees[i,]<-x
  }
  test.taxaname<-c("Adiantum","Amborella","Cryptomeri","Cycas","Ginkgo","Gnetum","Nuphar","Piceaglau","Piceasitc","Pinuscont","Pinustaed","Selaginell","Welwitschi","Zamia")
  species.structure<-matrix(0, 14, 14)
  diag(species.structure)<-1
  test.startrees<-rep("",1000)
  for(i in 1:1000){
    test.startrees[i]<-star.sptree(test.boottrees[,i],speciesname=test.taxaname,taxaname=test.taxaname, species.structure=species.structure, outgroup="Selaginell", method="nj")
  }
  newfilename<-paste("../",k,"_","startree.tre",sep="")
  write(test.startrees, file=newfilename)


