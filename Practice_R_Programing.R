install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")

library(tidyverse)
library(skimr)
library(janitor)

data_set_name <- read.csv(file.choose())

View(data_set_name)
head(data_set_name)

glimpse(data_set_name)

str(data_set_name)
colnames(data_set_name)
skim_without_charts(data_set_name)

trimmed_df <- data_set_name %>% 
  select( 'hotel','is_canceled' ,'lead_time' )  

trimmed_df %>% 
  select(hotel,is_canceled, lead_time) %>% 
  rename( hotel_type= hotel)

example_df <- data_set_name %>%
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")

# Kiểm tra số lượng hủy đặt phòng
total_canceled <- sum(data_set_name$is_canceled, na.rm = TRUE)

# Hiển thị kết quả
print(total_canceled)

# new command


install.packages("tidyr")
library(tidyr)
id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)

print(employee)


View(employee)

separate(employee,name,into = c('first_name','last_name'), sep =' ')


first_name <- c("John", "Rob", "Rachel", "Christy", "Johnson", "Candace", "Carlson", "Pansy", "Darius", "Claudia")

last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", "Miller", "Landy", "Jordan", "Berry", "Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, first_name, last_name, job_title)

print(employee)


unite(employee,'name',first_name, last_name)
View(employee)

install.packages("palmerpenguins")
library(palmerpenguins)
View(penguins)

library(dplyr)

penguins %>%
  mutate(body_mass_g=body_mass_g/1000)


pivot_longer(penguins)
pivot_wider(penguins)



install.packages('Tmisc')
library(Tmisc)
data(quartet)
View(quartet)


quartet %>%
  group_by(set) %>%
  summarise(mean(x), sd(x), mean(y), sd(y),cor(x,y))


install.packages('datasauRus') 

library('datasauRus') 

ggplot(datasaurus_dozen,aes(x=x,y=y,colour=dataset))+geom_point()+theme_void()+theme(legend.position = "none")+facet_wrap(~dataset,ncol=3) 

install.packages("SimDesign")
library(SimDesign)
