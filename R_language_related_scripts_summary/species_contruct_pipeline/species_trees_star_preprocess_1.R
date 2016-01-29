#!/usr/bin/Rscript
# PhyloBayes data post-processing
# removew edge length, _ and root trees at Selaginell 
library(phybase)
files<-dir()
for (i in 1:length(files)) {
  file1<-files[i]
  trees<-readLines(file1)
  process<-paste("Process is i =",i,sep="")
  print(process)
  for (j in 1:length(trees)) {
    treej<-trees[j]
    write.tree.string(treej,"mono.tre",format="phylip")
    monotree<-read.tree("mono.tre")
    monotree$edge.length<-NULL # remove edge length
    monotree$tip.label<-gsub("_","",monotree$tip.label) # remove _
    rootedtree<-root(monotree,"Selaginell",resolve.root = TRUE) # root trees at Selaginell 
    write.tree(rootedtree,append = TRUE,file="rooted.t")
    if (j==length(trees)) {
      emptyfile<-readLines("rooted.t")
      name<-paste(file1,"_trans_rooted",sep="")
      write.tree.string(emptyfile,file=name,format="phylip")
      file.remove("rooted.t")
    }
  }
}
file.remove("mono.tre")
print("1.Branch length is removed. 2._ is removed")

