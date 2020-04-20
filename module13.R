install.packages("gganimate")
library(gganimate)
library(ggplot2)

myCars <- mtcars

mycars_plot <- ggplot(myCars, aes(x = hp, y = wt)) + ggtitle("MT Cars", "Weight vs Horsepower") + xlab("Horsepower") + ylab("Weight") +
  geom_point(size = 5, color = "purple")
mycars_plot 

animated <- mycars_plot + transition_states(myCars$cyl, transition_length = 2, state_length = 1)

animated

