# Filetr and Plots
library(ggplot2)
Asthetic_hotel_data <- read.csv(file.choose())
View(Asthetic_hotel_data)

head(Asthetic_hotel_data)
colnames(Asthetic_hotel_data)
library(tidyverse)

ggplot(data = Asthetic_hotel_data) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel)

ggsave(city_hotel.png)

ggplot(data = Asthetic_hotel_data) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  labs(title="")

min(Asthetic_hotel_data$arrival_date_year)

max(Asthetic_hotel_data$arrival_date_year)

mindate <- min(Asthetic_hotel_data$arrival_date_year)
maxdate <- max(Asthetic_hotel_data$arrival_date_year)

ggplot(data = Asthetic_hotel_data) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       subtitle=paste0("Data from: ", mindate, " to ", maxdate))


ggplot(data = Asthetic_hotel_data) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       caption=paste0("Data from: ", mindate, " to ", maxdate))

ggplot(data = Asthetic_hotel_data) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       caption=paste0("Data from: ", mindate, " to ", maxdate),
       x="Market Segment",
       y="Number of Bookings")
ggsave('hotel_booking_chart.png')







