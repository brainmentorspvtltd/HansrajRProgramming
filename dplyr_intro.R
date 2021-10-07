install.packages("dplyr")
library(dplyr)

# select
# filter
# arrange
# mutate
# summarise
# distinct

df <- read.csv('matches.csv')
dim(df)

View(df)

head(select(df, winner))
head(select(df, c(toss_winner, winner)))
head(select(df, 3))
head(select(df, c(1,2,3,4)))
head(select(df, c(1:4)))

head(filter(df, win_by_runs > 100))
head(filter(df, win_by_wickets == 10))
head(filter(df, win_by_wickets == 10 & winner == 'Mumbai Indians'))
head(filter(df, player_of_match == 'MS Dhoni'))
filter(df, player_of_match %in% c('MS Dhoni', 'V Kohli'))

# pipelining / Chaining
df %>% 
  select(winner, win_by_runs, season) %>% 
  filter(win_by_runs > 100)

df %>% 
  select(winner, win_by_runs, season) %>% 
  filter(win_by_runs > 100) %>% 
  arrange(win_by_runs)

df %>% 
  select(winner, win_by_runs, season) %>% 
  filter(win_by_runs > 100) %>% 
  arrange(desc(win_by_runs))


distinct(df, winner)
distinct(df, season)



df2 <- read.csv('deliveries.csv')
dim(df2)
View(df2)

temp_df <- df2 %>% 
  group_by(batsman) %>% 
  summarise(Score = sum(batsman_runs)) %>% 
  arrange(desc(Score))

temp_df <- df2 %>% 
  group_by(batsman, match_id) %>% 
  summarise(Score = sum(batsman_runs)) %>% 
  arrange(desc(Score))

head(temp_df)



