library("phybase")
setwd("/Users/sunlinhua/Downloads/10-31/name_changed/")
tree1<-read.tree("bayes_0_startree.tre")
tree1$tip.label<-gsub("_","\ ",tree1$tip.label)
for (i in 1:length(tree1$tip.label)){
  if (tree1$tip.label[i]=="Gnetum gnemon") {
    j<-i
  }
}
plot(tree1,use.edge.length=TRUE,cex=0.8,font=3);nodelabels(tree1$node.label,adj= -0.1,frame="none",cex=0.4,font=2)
tiplabels(tree1$tip.label[j],j,adj = 0,cex=0.8,font=3)
