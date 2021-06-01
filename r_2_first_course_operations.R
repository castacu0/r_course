#install.packages("mtcars")   / didn't work. I went to GitHub


#vs 0 means V-shaped    / 1 means straight
#am 0 means automatic    / 1 means manual

library(readr)
#mtcars <- read_csv("C:/Users/Cesar Castanon/courses/r_course/csv_datasets/mtcars.csv")
View(mtcars) #opens another tab
str(mtcars)


?mtcars   #This opens the Help --> menu

#with Class() we check the data type
class(mtcars$drat) # > numeric
class(mtcars$am) # > numeric, now logical
class(mtcars$vs) # > it showed numeric but it's "logical"

mtcars$vs = as.logical(mtcars$vs)
#I want this variable INT be transformed into a LOG var

mtcars$am = as.logical(mtcars$am) #try_1 also worked > class(try_1)


#CHALLENGE CLASS 6
View(orangeec) #[17 x 13] 17 observations(countries) and 13 vars
str(orangeec)
?orangeec
