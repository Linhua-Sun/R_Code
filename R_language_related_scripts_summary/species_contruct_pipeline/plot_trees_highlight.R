library("ape")
setwd("/Users/sunlinhua/Downloads/10-31/name_changed/")
pdf(file = "2015_11_3_ML_highlight.pdf",height = 8,width = 20)
MLfiles<-dir(pattern = "raxml_speciestrees.tre$")
par(mfrow=c(2,5))
for (i in MLfiles)  {
  tree1<-read.tree(i)
  tree1$tip.label<-gsub("_","\ ",tree1$tip.label)
  tree1$node.label<-round(as.numeric(tree1$node.label))
  for (K in 1:length(tree1$tip.label)){
    if (tree1$tip.label[K]=="Gnetum gnemon") {
      j<-K
    }
  }
  plot(tree1,use.edge.length=FALSE,cex=0.8,font=3,main=i )
  nodelabels(tree1$node.label,adj = -0.1,frame="none",cex=0.5,font=2)
  tiplabels(tree1$tip.label[j],j,adj = 0,cex=0.8,font=3)
}
dev.off()
pdf(file = "2015_11_3_bayes_highlight.pdf",height = 8,width = 20)
bayesfiles<-dir(pattern = "^bayes_")
par(mfrow=c(2,5))
for (i in bayesfiles)  {
  tree1<-read.tree(i)
  tree1$tip.label<-gsub("_","\ ",tree1$tip.label)
  tree1$node.label<-round(as.numeric(tree1$node.label))
  for (K in 1:length(tree1$tip.label)){
    if (tree1$tip.label[K]=="Gnetum gnemon") {
      j<-K
    }
  }
  plot(tree1,use.edge.length=FALSE,cex=0.8,font=3,main=i )
  nodelabels(tree1$node.label,adj = -0.1,frame="none",cex=0.5,font=2)
  tiplabels(tree1$tip.label[j],j,adj = 0,cex=0.8,font=3)
}
dev.off()

