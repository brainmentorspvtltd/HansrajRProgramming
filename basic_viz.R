# Basic Data Visualization
# bar, hist, pie, scatter, line

install.packages('RColorBrewer')

library(RColorBrewer)

temp <- c(30.3,34.5,38.9,29.8,27.8,30.9,32.5)
days <- c("Sun","Mon","Tues","Wed","Thu","Fri","Sat")

colors <- brewer.pal(7,'Pastel2')

barplot(temp)
barplot(temp, names.arg = days,
        xlab = "Days of week",
        ylab = "Temp",
        main = "Temp of week",
        col = colors)

votes <- c(340,100,4,50)
labels <- c("BJP","CONG","AAP","BSP")
pie(votes, labels=labels, clockwise = T)

