install.packages(c("CarletonStats", "devtools", "epanetReader", "fmsb", "ggplot2", "ggthemes","latticeExtra", "MASS",
                  "PerformanceAnalytics", "psych", "plyr","prettyR", "plotrix","proto"))

install.packages(c("RCurl", "reshape", "reshape2"))

library("CarletonStats")
library("devtools") 
library("epanetReader") 
library("fmsb") 
library("ggplot2") 
library("ggthemes")
library("latticeExtra") 
library("MASS")
library("PerformanceAnalytics") 
library("psych") 
library("plyr")
library("prettyR") 
library("plotrix")
library("proto")
library("RCurl") 
library("reshape") 
library("reshape2")

#~*~*~*~*~*~*~*~*~*~*~*~

#Code
x <- 1967:1977
y <- c(0.5,1.8,4.6,5.3,5.3,5.7,5.4,5,5.5,6,5)
d <- data.frame(x, y)
ggplot(d, aes(x,y)) + geom_line() + geom_point(size=3) + theme_tufte(base_size = 15) +
  theme(axis.title=element_blank()) + geom_hline(yintercept = c(5,6), lty=2) + 
  scale_y_continuous(breaks=seq(1, 6, 1), label=sprintf("$%s",seq(300,400,20))) + 
  scale_x_continuous(breaks=x,label=x) +
  annotate("text", x = c(1977,1977.2), y = c(1.5,5.5), adj=1,  family="serif",
           label = c("Per capita\nbudget expandures\nin constant dollars", "5%"))






