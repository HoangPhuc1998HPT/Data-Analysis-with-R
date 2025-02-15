library(tidyverse)
library(skimr)
library(janitor)

hotel_booking <- read.csv(file.choose())

View(hotel_booking)
head(hotel_booking)
str(hotel_booking)



library(dplyr)

# Chuyển đổi arrival_date_month thành số nếu đang ở dạng chữ (ví dụ: "January" -> 1)
hotel_booking <- hotel_booking %>%
  mutate(
    arrival_date_month = match(arrival_date_month, month.name),  # Chuyển tháng từ chữ sang số
    DateArrive = as.Date(paste(arrival_date_year, arrival_date_month, arrival_date_day_of_month, sep = "-")),
    reservation_status_date = as.Date(reservation_status_date),  # Đảm bảo reservation_status_date là Date
    far_arrive = reservation_status_date - DateArrive  # Tính số ngày giữa hai ngày
  )


glimpse(hotel_booking)
colnames(hotel_booking)
arrange(hotel_booking, desc(far_arrive) )


hotel_booking_v2 <- arrange(hotel_booking,desc(far_arrive))
View(hotel_booking_v2)
max(hotel_booking$lead_time)
min(hotel_booking$lead_time)
mean(hotel_booking$lead_time)
mean(hotel_booking_v2$lead_time)


hotel_booking_city <- filter(hotel_booking, hotel == "City Hotel")
View(hotel_booking_city)

hotel_summary <- 
  hotel_booking %>%
  group_by(hotel) %>%
  summarise(average_lead_time=mean(lead_time),
            min_lead_time=min(lead_time),
            max_lead_time=max(lead_time))
View(hotel_summary)

data_hotel = hotel_booking
View(data_hotel)
head(data_hotel)
colnames(data_hotel)
library(ggplot2)
# Step 4 Begin creating a plot
#" They want to target people who boook early, and I have a hypothesis that people with children have to boook in advance"
ggplot(data = data_hotel) + geom_point(mapping = aes(x=lead_time, y = children))

# Try it on your own guess booking in the weekend night for maketing campain
ggplot(data = data_hotel) + geom_point(mapping = aes(x = stays_in_weekend_nights, y = children))
