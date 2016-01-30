#!/bin/bash
#this script is used to test on the multiple cores ??? 10/1
# Linhua Sun
# bwa mapping plus GATK+SAMtools SNP calling pipeline building
# 11.1.2016 start
# 21.1.2016 end
# change time: Fri Jan 22 00:49:38 CST 2016
# change time: Sat Jan 23 20:11:06 CST 2016

#Assign workspace

WORKSPACE="./"

#assign reference genome of rice
REF="./REFERENCE_GENOME/TAIR10_chr_all.fas"

#assign the location of softwares:

#GATK location
GATK="./SOFTWARE/GATK/GenomeAnalysisTK.jar"

#PICARD location
PICARD_LOC="./SOFTWARE/picard-tools-1.119"

#Assign input data variable (eg. ERR009626; `sh script.sh ERR009626`;$1)

SAMPLE="$WORKSPACE/RAW_DATA/$1"

OUTPUT="$WORKSPACE/GATKDIR/$1"

TEMP="$WORKSPACE/TEMP"

if [ ! -d $OUTPUT ]
		then mkdir -p $OUTPUT
fi

if [ ! -d $TEMP ]
		then mkdir -p $WORKSPACE/TEMP
fi

#==============ONLY for the 1st time: Creating the different kinds index files==============================

#1.GATK create .dict file from $REF 
#do not delete &

java -Xmx4G \
    -jar $PICARD_LOC/CreateSequenceDictionary.jar \
    R=$REF \
    O=./REFERENCE_GENOME/TAIR10_chr_all.dict &