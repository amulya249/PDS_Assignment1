##VIS 1
StudentsPerformance <- read.csv('~/Downloads/cleaned_data.csv')
x <- sample(c(StudentsPerformance$`race/ethnicity`), 100, replace=TRUE)
barplot(table(x),col=c("pink","red","blue","green","gold"),ylim=c(0,30),main="Barplot of race/ethinicty")

##VIS 2
StudentsPerformance <- read.csv('~/Downloads/cleaned_data.csv')
boxplot(StudentsPerformance$math.score,StudentsPerformance$reading.score,StudentsPerformance$writing.score, main="Box plot for the scores", col=c("red","blue","darkgreen"))

##VIS 3
library(ggplot2)
StudentsPerformance <- read.csv('~/Downloads/cleaned_data.csv')
df<-data.frame(StudentsPerformance$race.ethnicity,StudentsPerformance$test.preparation.course)
ggplot(df,aes(StudentsPerformance$test.preparation.course))+ geom_bar(aes(fill = StudentsPerformance$race.ethnicity), position = "dodge")

##VIS 4
StudentsPerformance <- read.csv('~/Downloads/cleaned_data.csv')
totalscore <- StudentsPerformance$math.score + StudentsPerformance$reading.score + StudentsPerformance$writing.score
hist(totalscore, main="Histogram of Students combined score",col='red')

##VIS 5
StudentsPerformance <- read.csv('~/Downloads/cleaned_data.csv')
table(StudentsPerformance$gender )
n <- nrow(StudentsPerformance)
percent_gender <- table(StudentsPerformance$gender)/n * 100
percent_gender
pie(percent_gender, main = "Gender PieChart", col = c("magenta","red"),label=paste(c("female","male"),percent_gender, "%"))

