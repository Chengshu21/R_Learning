library(R.utils)
library(refGenome)
gunzip("E:/genecode/gencode.v27.annotation.gff3.gz", remove = FALSE)
setwd("E:/genecode")
getwd()

# cannot work  
# ens <- ensemblGenome()
# rt <- read.gtf(ens, "E:/genecode/gencode.v27.annotation.gtf")

require(data.table)
info <- fread("E:/genecode/gencode.v27.annotation.gtf")
head(info)
str(info)
info$V3
unique(info$V3)
info$V9
??grep
grep("lncRNA",info$V9)
info$V9[2536469]
grep("miRNA",info$V9)
info$V9[2609348]
