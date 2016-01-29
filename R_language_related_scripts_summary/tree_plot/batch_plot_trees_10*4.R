library("ape")
setwd("/Users/sunlinhua/Desktop/2015.11.13.Phylogeny/startrees/STAR_new/plot_tree/name_changed_trees")
pdf(file = "2015_11_17_1.pdf",height = 16,width = 40)
MLfiles<-dir(pattern = "^true_ML")
par(mfrow=c(4,10))
for (i in MLfiles)  {
  tree1<-read.tree(i)
  tree1$tip.label<-gsub("_","\ ",tree1$tip.label)
  tree1$node.label<-round(as.numeric(tree1$node.label))
  plot(tree1,use.edge.length=FALSE,cex=1,font=3,main=i)
  nodelabels(tree1$node.label,adj = -0.1,frame="none",cex=0.6,font=2)
}

MLfiles<-dir(pattern = "^sim_ML")
for (i in MLfiles)  {
  tree1<-read.tree(i)
  tree1$tip.label<-gsub("_","\ ",tree1$tip.label)
  tree1$node.label<-round(as.numeric(tree1$node.label))
  plot(tree1,use.edge.length=FALSE,cex=1,font=3,main=i)
  nodelabels(tree1$node.label,adj = -0.1,frame="none",cex=0.6,font=2)
}

MLfiles<-dir(pattern = "^true_PB")
for (i in MLfiles)  {
  tree1<-read.tree(i)
  tree1$tip.label<-gsub("_","\ ",tree1$tip.label)
  tree1$node.label<-round(as.numeric(tree1$node.label))
  plot(tree1,use.edge.length=FALSE,cex=1,font=3,main=i)
  nodelabels(tree1$node.label,adj = -0.1,frame="none",cex=0.6,font=2)
}

MLfiles<-dir(pattern = "^sim_PB")
for (i in MLfiles)  {
  tree1<-read.tree(i)
  tree1$tip.label<-gsub("_","\ ",tree1$tip.label)
  tree1$node.label<-round(as.numeric(tree1$node.label))
  plot(tree1,use.edge.length=FALSE,cex=1,font=3,main=i)
  nodelabels(tree1$node.label,adj = -0.1,frame="none",cex=0.6,font=2)
}
dev.off()





