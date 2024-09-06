#--------------------------
#Description: A test code for students
#Authour: Elaheh Javadi Arjmand
#Date modified: 05.09.2024
#-----------------------

#setup----
library(tidyverse)
install.packages("modeldata")
library(modeldata) #data set useful for modeling examples

#Read data---------
#loading a data frame for apartments?
data(ames)
dim(ames) #dimensions of an object
head(ames, 20)
tail(ames)
typeof(ames)
class(ames)

#Analyse-------
#creating variable w/ select garages/houses(?) prices 
some_prices <- ames[, c("Garage_Type", "Year_Built", "Sale_Price")]

#creating a variable with prices for 2006
price2006 <- some_prices$Sale_Price[some_prices$Year_Built == 2006]
mean_price2006 <- mean(price2006)
max_price2006 <- max(price2006)

cat("Max: ", max_price2006, "; mean: ", mean_price2006)
install.packages("lintr")
library(lintr)
lint("script2.R")

install.packages("styler")
library(styler)

lint("C:/Users/khi005/OneDrive - University of Bergen/2024-09-05_Rcourse-project1/data/script2.R")
?lintr
