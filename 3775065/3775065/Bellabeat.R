install.packages('tidyverse')

library(tidyverse)

daily_activity <- read.csv("dailyActivity_merged.csv")

head(daily_activity)

colnames(daily_activity)

n_distinct(daily_activity$Id)

nrow(daily_activity)

daily_activity  %>%   
  select(TotalDistance,
         Calories,
         TotalSteps)  %>% 
  summary()

daily_activity %>% 
  select(TotalMinutes,
         TotalSteps,
         Calories)  %>% 
  summary()

ggplot(data=daily_activity, aes(x = ActivityDate, y = Calories)) + geom_bar(stat = "identity")

ggplot(data=daily_activity, aes(x = ActivityDate, y = TotalSteps)) + geom_bar(stat = "identity")

ggplot(data=daily_activity, aes(x = Id, y = Calories)) + geom_bar(stat = 'Identity')
