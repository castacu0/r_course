# Most common R commands to practice
# 19 examples

#---Ex1
help(mean) #documentation


#---Ex2
require(lattice)
example(histogram) #show me an example 


#---Ex3
vector = c(9,5,1,8,4,2) #enter data manually
vector

vector_str = c("Paul", "MuadDib", "Jessica", "Leto", "Ghanima")
vector_str


#---Ex4
repetition = c(rep(9, 4)) #repeat 9, 4 times
repetition


#---Ex5
arithmetic_progression = seq(7,50,4) #from number 7 till 50 using 4 intervals
arithmetic_progression


#---Ex6
data(iris) #Load built-in dataset to work with it
names(iris)

dim(iris) #See dimentions(num of rows and columns)


#---Ex7
str(iris) #Displays internal structure of an R object

View(iris) #View dataset in a spreadsheet-type format


#---Ex8
data(iris) #Brings the dataset
data(faithful)  #another dataset
data(Puromycin) #another dataset
data(LakeHuron) #another
ls() #Lists memory contents / Values shown in the Environment part -->

vector_2 = 1:7 #str from number 1 to 7
ls()


#---Ex9
View(faithful)
rm(LakeHuron) #Removes an item from memory (values section -->)


#---Ex10
data(faithful)
    #hist() Command for producing a histogram
hist(faithful$eruptions)
hist(faithful$eruptions, n=15)
hist(faithful$eruptions, breaks=seq(1.5,5.25,.25), col="red")
hist(faithful$eruptions, freq=F, n=15, main="Histogram of Old Faithful Eruption Times", xlab="Duration (mins)")


#---Ex11
library(abd) #Download abd first. ()&() Make available an R add-on package
require(lattice) #reticula


#---Ex12
require(lattice)
data(iris)
View(iris)
histogram(iris$Sepal.Length, breaks=seq(4,8,.10)) #from 4 to 8 / .10
histogram(~ Sepal.Length, data=iris, main="Iris Sepals", xlab="Length")
histogram(~ Sepal.Length | Species, data=iris, col="red")
histogram(~ Sepal.Length | Species, data=iris, n=15, layout=c(1,3))


#---Ex13
arsenic = read.csv("http://www.calvin.edu/~scofield/data/comma/arsenicInWater.csv")
View(arsenic)
senate = read.table("http://www.calvin.edu/~scofield/data/tab/rc/senate99.dat", sep="\t", header=T)
View(senate)


#---Ex14
example_1 = read.csv("http://www.calvin.edu/~scofield/data/tab/rc/senate99.dat", sep="\t", header=T)
names(example_1) #"ID.name.sex.party.state.years.elected"

var_1 = example_1$years
View(var_1)

mean(var_1, na.rm = T) #[1] 11.09
#Identify "center" of distribution

median(var_1, na.rm = T) #[1] 10
#Identify "center" of distribution

summary(var_1) # Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
               # 0.00    4.00   10.00   11.09   16.25   43.00 
               # Displays 5-number summary and mean

var(var_1, na.rm = T) # Finds variance    [1] 95.15343
sd(var_1, na.rm = T) # sd of values in vector   [1] 9.754662


#---Ex15
quantile(var_1, probs=seq(0, 1, .2), na.rm=T) #from 0 to 1 in .2
#Finds the position of a quantile in a dataset
#In this case, I used View() and showed me the ages  
     # 0%  20%  40%  60%  80% 100% 
     #  0    2    6   12   18   43 



