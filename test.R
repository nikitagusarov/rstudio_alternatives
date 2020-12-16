x = 1 

test = data.frame(
    x = 1:5, 
    y = 1:5
)

View(test)

plot(test$x, test$y)

library(tidyverse)

test %>% ggplot(aes(x, y)) + geom_point()
