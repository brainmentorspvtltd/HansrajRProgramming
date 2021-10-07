library(dplyr)

df <- read.csv('covid_19_data.csv')
dim(df)
View(df)

temp_df <- df %>% 
            group_by(Country.Region) %>% 
            summarise(TotalDeath = sum(Deaths)) %>% 
            arrange(desc(TotalDeath))
head(temp_df)

temp_df <- df %>% 
  group_by(Country.Region) %>% 
  summarise(TotalDeath = sum(Confirmed)) %>% 
  arrange(desc(TotalDeath))
head(temp_df)

# df %>% 
#   filter(Deaths > 50000)

temp_df <- df %>% 
  group_by(Country.Region)
temp_df  
View(temp_df)


