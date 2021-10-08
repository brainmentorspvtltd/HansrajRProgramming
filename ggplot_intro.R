install.packages("ggplot2")
library(ggplot2)

options(scipen = 1)

df <- read.csv('housesData.csv')
View(df)

# histogram - continuous data
ggplot(df, aes(x=price)) + geom_histogram()
ggplot(df, aes(x=price)) + 
  geom_histogram(fill='green',col='red')

ggplot(df, aes(x=price)) + 
  geom_histogram(fill='green',col='red', 
                 bins = 30)

# barplot
ggplot(df, aes(x=waterfront)) + geom_bar()
ggplot(df, aes(x=rooms)) + geom_bar()

ggplot(df, aes(x=waterfront, fill=centralAir)) + 
  geom_bar(position="fill")

ggplot(df, aes(x=waterfront, fill=sewer)) + 
  geom_bar(position="fill")

# boxplot
ggplot(df, aes(x=price)) + geom_boxplot()

ggplot(df, aes(x=waterfront, y=price)) +
  geom_boxplot()

ggplot(df, aes(x=heating, y=price)) +
  geom_boxplot()

factor(df$rooms)

ggplot(df, aes(x=factor(df$rooms), y=price)) +
  geom_boxplot()

# scatter plot
ggplot(df, aes(x=price, y=livingArea)) + 
  geom_point()

ggplot(df, aes(x=price, y=livingArea)) +
  geom_point() + 
  geom_smooth(method='lm')

# facet grid - subplot
ggplot(df, aes(x=price, y=livingArea,
               col = centralAir)) + 
  geom_point() + geom_smooth(method = 'lm') +
  facet_grid(~centralAir)


ggplot(df, aes(x=price, y=livingArea,
               col = sewer)) + 
  geom_point() + geom_smooth(method = 'lm') +
  facet_grid(~sewer)

obj_1 <- ggplot(df, aes(x=factor(rooms), y=price,
               fill = factor(rooms))) + 
  geom_boxplot()

obj_2 <- obj_1 + labs(title = "Price W.r.t rooms")
obj_2

obj_2 + theme_dark()
obj_2 + theme_classic()
obj_2 + theme_gray()

obj_2 + theme(panel.background = element_rect(fill='palegreen'))

