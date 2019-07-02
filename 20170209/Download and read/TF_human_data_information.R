cstr_rt <- read.table("D:/Cistrome/TF_human_data_information.txt", head = TRUE, sep = "\t")
str(cstr_rt)    
head(cstr_rt)

write.csv(cstr_rt, "D:/Cistrome/TF_human_data_information.csv")   #write a new file to make a copy.

cstr_rt1 <- read.csv("D:/Cistrome/TF_human_data_information.csv", head = TRUE, sep = ",")
str(cstr_rt1)
head(cstr_rt1)