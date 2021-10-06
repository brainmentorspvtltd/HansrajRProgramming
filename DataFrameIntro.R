# Data Frames
names <- c("John","Mac","Sam","Max")
sal <- c(45000,48000,32000,90000)
dept <- c("IT","HR","SALES","IT")

df <- data.frame(names=names,
                 salary=sal,
                 department=dept)
df
View(df)

df$names
df[1]
# df[col]
df[1:2]

# df[row,col]
df[1:2,1:3]

datasets::mtcars
datasets::iris
datasets::airquality

View(airquality)
edit(airquality)

dim(airquality)

nrow(airquality)
ncol(airquality)

head(airquality)
head(airquality,4)

tail(airquality,4)

summary(airquality)
str(airquality)



