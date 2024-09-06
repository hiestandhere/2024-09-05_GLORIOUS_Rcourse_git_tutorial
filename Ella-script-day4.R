# Day4 RMED901-----
# Working on git and merging conflicts
# loading lintr and styler packages


# setup----
library(tidyverse)
install.packages("modeldata")
library(modeldata) # data set useful for modeling examples

# Read data---------
# loading a data frame for apartments?
data(ames)
dim(ames) # dimensions of an object
head(ames, 20)
tail(ames)
typeof(ames)
class(ames)

# Analyse-------
# creating a variable with some factors of interest
some_prices <- ames[, c("Garage_Type", "Year_Built", "Sale_Price")]

# creating a variable with prices for 2006
price2006 <- some_prices$Sale_Price[some_prices$Year_Built == 2006]
mean_price2006 <- mean(price2006)
max_price2006 <- max(price2006)

cat("Max: ", max_price2006, "; mean: ", mean_price2006)


library(lintr)
lintr::Lint("C:/Users/eljav9682/OneDrive - University of Bergen/Desktop/Courses/R/RMED901_Day3/Scripts/script2.R")
lint("C:/Users/eljav9682/OneDrive - University of Bergen/Desktop/Courses/R/RMED901_Day3/Scripts/script2.R")

library(styler)
styler::style_file("C:/Users/eljav9682/OneDrive - University of Bergen/Desktop/Courses/R/RMED901_Day3/Scripts/script2.R")

#how to style