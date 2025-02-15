# Title: Asthetics and Visualization
library(ggplot2)
Asthetic_hotel_data <- read.csv(file.choose())
View(Asthetic_hotel_data)

ggplot(data = Asthetic_hotel_data) +
  geom_bar(mapping = aes(x = distribution_channel))

ggplot(data = Asthetic_hotel_data) +
  geom_bar(mapping = aes(x = distribution_channel))

ggplot(data = Asthetic_hotel_data) +
  geom_bar(mapping = aes(x = distribution_channel))

ggplot(data = Asthetic_hotel_data) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~ market_segment) 

ggplot(data = Asthetic_hotel_data) +
  geom_bar(mapping = aes(x = lead_time)) +
  facet_wrap(~ distribution_channel) 

ggplot(data = Asthetic_hotel_data) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))

ggplot(data = Asthetic_hotel_data) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~market_segment) +
  theme(axis.text.x = element_text(angle = 0))

ggplot(data = Asthetic_hotel_data) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type~market_segment) +
  theme(axis.text.x = element_text(angle = 45))




