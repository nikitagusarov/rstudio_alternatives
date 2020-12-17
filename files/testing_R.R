# Running the setup first allows you to set the options of R code
# Note that if you want to load any other dependencies, you can load them here:

library(ggplot2)

# Getting Started with R

x <- 1 
print (x <- x + 1)

# Graphs with R

data <- cars
ggplot(data, aes(x = speed, y = dist)) +
  geom_point()

# Tables with R
## Using R Output

head(cars, n=10)

## Preview of the dataframe

View(cars) # This will not work inside Rmd file