# Download the databases file from the internet
url = "https://4dgenome.research.chop.edu/Tables/4DGenome_full.txt"
datafolder = setwd("D:/4DGenome/")
zipfile = paste(datafolder, "_full.txt.zip", sep = "")
download.file(url, destfile = zipfile)
unzip(zipfile, exdir = datafolder)
file.remove(zipfile)

# because I cannot run the codes well, so I download the file in the Internet into a folder.
# And then I can read it.

rt <- read.table("D:/4DGenome/4DGenome_full.txt", head = TRUE, sep = "\t")
str(rt)    # there is a 'Cell.Tissue' existed.

write.csv(rt_fdg, "D:/4DGenome/4DGenome.csv")   #write a new file to make a copy.
rt_fdg$Cell.Tissue
head(rt_fdg)

rt_fdg <- read.csv("D:/4DGenome/4DGenome.csv", head = TRUE, sep = ",")
str(rt_fdg)
rt_fdg1 <- rt_fdg[, c(11, 12)]   # extract the 'Cell.Tissue' and 'Detection_Method' columns

# select the columns that we want by using 'subset'
rt_fdg2 <- subset(rt_fdg1, Detection_Method %in% c("4C", "5C", "Capture-C", "ChIA-PET", "Hi-C", "IM-PET"))
write.csv(rt_fdg2, "D:/4DGenome/4dgselect.csv")     # write out to check the results.

