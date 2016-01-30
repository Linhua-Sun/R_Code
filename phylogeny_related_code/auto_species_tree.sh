#install R packages in my own env
#methods adobted: http://www.r-bloggers.com/installing-r-packages/a
#R ctv :phylogenetics, genetics
#R ape, phybase(mannul)
ls *Cluster581.fas*

Cluster581.fas
RAxML_bestTree.Cluster581.fas_out1
RAxML_bipartitions.Cluster581.fas_out1
RAxML_bipartitionsBranchLabels.Cluster581.fas_out1
RAxML_bootstrap.Cluster581.fas_out1
RAxML_info.Cluster581.fas_out1

RAxML_bipartitions.Cluster581.fas_out1

RAxML_bipartitions.*

/sdd2/users/linhua/zhong/NT
/sdd2/users/linhua/zhong/output

WORKSPACE="/sdd2/users/linhua/zhong"
INPUT="${WORKSPACE}/NT/"
OUTPUT="${WORKSPACE}/NT_output/"
if [ ! -d $OUTPUT ]
		then mkdir -p $OUTPUT
fi

unrooted tree 
rooted tree