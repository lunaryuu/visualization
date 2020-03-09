library(ggplot2)

myCars <- data.frame(mtcars$mpg, mtcars$wt)
colnames(myCars) <- c("mpg", "wt")
rownames(myCars) <- rownames(mtcars)
myCars


#lm(formula = NumFawn ~ WinterRating, data = fawndata)
myCars_lm <-lm(forumla = mpg ~ wt, data = myCars)

summary(myCars_lm)

ggplot(myCars, aes(x = myCars$wt, y = myCars$mpg, col = factor(myCars$wt))) + geom_point(size = 6) + 
  labs(title = "Weight vs MPG", x = "Weight(tons)", y = "MPG") + geom_smooth(method = lm, color = "black", se = FALSE)

