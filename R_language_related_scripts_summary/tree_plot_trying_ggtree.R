library("phybase")
library("gridExtra")
setwd("/Users/sunlinhua/Downloads/10-31/name_changed/")
tretry<-read.tree("name_changed_1_raxml_speciestrees.tre")
plot(tretry)
tretrytretry$tip.label<-gsub("_","\ ",tretry$tip.label)

nodelabels(tretry)

ggtree(tretry, color="black", branch.length='none',size=0.5)%>% add_legend()+geom_text(aes(label=label), size=2,hjust=-0.05)

grid.arrange(ggtree(tretry, color="black", size=0.5)%>% add_legend()+geom_text(aes(label=label), size=4,  hjust=-0.05),ggtree(tretry, color="black", size=0.5)%>% add_legend()+geom_text(aes(label=label), size=4,  hjust=-0.05),ncol=2)

#unrooted_tretry<-(unroot(tretry))
#rerooted_tretry<-root(unrooted_tretry,node = 16,resolve.root = TRUE )