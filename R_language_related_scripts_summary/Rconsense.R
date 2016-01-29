setwd("/Users/sunlinhua/Desktop/2015.11.14_comparative/de_novo/MrBayes_treelist/")
files<-dir()
for (i in files) {
  trs<-read.nexus(i)
  tree<-Rconsense(trs)
  name<-paste(i,"_consnesus",sep = "")
  write.tree(tree,file = name)
}

file<-dir(pattern = "_consnesus$")
for (i in file) {
  trs<-read.tree(i)
  print(is.binary.tree(trs))
}




trs<-read.tree("RAxML_bootstrap.1015")
#trs<-gsub("_","",trs)

tree<-Rconsense(trs)
name<-paste(i,"_consnesus",sep = "")
write.tree(tree,file = name)



trs<-read.tree("RAxML_bootstrap.1118")
tree<-Rconsense(trs)
plot(tree)
nodelabels(tree$node.label,adj = -0.1,frame="none",cex=0.6,font=2)
