dir.create("raw_data")
dir.create("clean_data")
dir.create("scripts")
dir.create("results")

data<-read.csv(file.choose())
View(data)
str(data)
data$diagnosis_fac <- as.factor(data$diagnosis)
str(data)
data$diagnosis_fac <- factor(data$diagnosis_fac, 
                             levels = c("Cancer", "Normal"))
levels(data$diagnosis_fac)
data$diagnosis_num <- factor(data$diagnosis_fac,
                             levels = c("Normal", "Cancer"),
                             labels = c(0, 1)) 


data$diagnosis_num <- ifelse(data$diagnosis_fac == "Cancer", 1, 0)



data$smoker_fac <- as.factor(data$smoker)
str(data)
data$smoker_fac <- factor(data$smoker_fac, 
                          levels = c("No", "Yes"))
levels(data$smoker_fac)
data$smoker_num <- factor(data$smoker_fac,
                          levels = c("No", "Yes"),
                          labels = c(0, 1)) 

data$smoker_num <- ifelse(data$smoker_fac == "Yes", 1, 0)


str(data)

write.csv()


