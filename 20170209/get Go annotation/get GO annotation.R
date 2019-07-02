library(org.Hs.eg.db)
# get the entrezgene ID from the gene 
mygene <- mget("SPOP", org.Hs.egSYMBOL2EG)
mygene

# GO.db

ls("package:org.Hs.eg.db")
# get the gene symbol from the entrezgene ID
mygene <- mget("8405", org.Hs.egENSEMBL)
mygene

library(biomaRt)
??biomart
# Selecting a BioMart database and dataset
mart <- useMart(biomart = "ensembl", dataset = "hsapiens_gene_ensembl")
mart

# Annotate a set of EntrezGene IDs with GO annotation
entrez=c("8405")
goids = getBM(attributes = c('entrezgene', 'go_id', 'hgnc_symbol'), 
              filters = 'entrezgene', 
              values = entrez, 
              mart = mart)
goids
goids$go_id

# get definition and other information 
Definition(goids$go_id)
Term(goids$go_id)
Ontology(goids$go_id)