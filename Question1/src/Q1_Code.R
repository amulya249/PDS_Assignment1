### This script is to read the raw data file and remove the unwanted data

### Reading the raw_people_data csv file from the location
raw_people_data <- read.csv("~/Desktop/AMULYA/MY ASSIGNMENTS/PDS/Ass1/question1/raw_data/raw_people_data.csv")

### Viewing the raw_people_data
raw_people_data

### I want to focus only on the people who are above 20 years. So, removing the rows where Age is less than 20 using the subset function
clean_people_data <- subset(raw_people_data,Age>20)

### Viewing clean_data
clean_people_data

### Writing clean data into a new csv file and not messing with the original file
write.csv(clean_people_data,"~/Desktop/AMULYA/MY ASSIGNMENTS/PDS/Ass1/question1/clean_data/clean_people_data.csv")


###Loading the clean data
clean_people_data <- read.csv("~/Desktop/AMULYA/MY ASSIGNMENTS/PDS/Ass1/question1/clean_data/clean_people_data.csv")

###performing a t test against age and frailty
t_test_result <- with(clean_people_data, t.test(Age~Frailty))
t_test_result

###saving the output to a file
capture.output(t_test_result, file="~/Desktop/AMULYA/MY ASSIGNMENTS/PDS/Ass1/question1/results/test_results.txt")
People_data<-clean_people_data
###visualizing the data
plot(People_data$Age, People_data$Weight.Pounds.,xlab="Age",ylab="Weight",main="Age vs Weight", col="blue")
