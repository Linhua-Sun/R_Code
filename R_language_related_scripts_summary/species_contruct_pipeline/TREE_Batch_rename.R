#!/usr/bin/Rscript
setwd("/Users/sunlinhua/Downloads/TREE/batch_manage")
oldstring<-readLines("/Users/sunlinhua/Downloads/TREE/old.txt")
newstring<-readLines("/Users/sunlinhua/Downloads/TREE/new.txt")
#shuju<-readLines("/Users/sunlinhua/Downloads/TREE/example/41taxa_third.tre")
directroy<-dir(pattern = "tre$")
for (j in 1:length(directroy)) {
  treefile<-readLines(directroy[j])
  for (i in 1:length(oldstring)){
    newtreefile<-sub(oldstring[i],newstring[i],treefile)
    treefile<-newtreefile
  }
  filename<-paste("name_changed_",directroy[j],sep = "")
  write(treefile,filename)
}
#directroy<-dir(pattern = "^name")
#for (j in 1:length(directroy)) {
#  treefile<-read.tree(directroy[j])
#  print(treefile$tip.label)
#}




treefile<-read.tree("name_changed_41aa_sorted_10080.phy1_sample.con.tre")
treefile
plot(treefile,use.edge.length = TRUE)
plot.phylo(treefile)

get.trees("name_changed_41aa_sorted_10080.phy1_sample.con.tre")



