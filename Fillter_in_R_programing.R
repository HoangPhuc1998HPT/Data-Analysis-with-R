# Filetr and Plots
library(ggplot2)
Asthetic_hotel_data <- read.csv(file.choose())
View(Asthetic_hotel_data)

head(Asthetic_hotel_data)
colnames(Asthetic_hotel_data)

ggplot(data = Asthetic_hotel_data) +
  geom_point(mapping = aes(x = lead_time, y = children))

ggplot(data = Asthetic_hotel_data) +
  geom_bar(mapping = aes(x = hotel, fill = market_segment))

ggplot(data = Asthetic_hotel_data) + geom_bar(mapping = aes(x = hotel)) + facet_wrap(~market_segment)

install.packages('tidyverse')
library(tidyverse)
install.packages('dplyr')
library(dplyr)

onlineta_city_hotels <- filter(Asthetic_hotel_data, 
                               hotel == "City Hotel" & market_segment == "Online TA")
View(onlineta_city_hotels)

onlineta_city_hotels_v2 <- Asthetic_hotel_data %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")

View(onlineta_city_hotels_v2)









