library(weathercan)
library(ggplot2)

# Get Data
w <- weather(50821, start = "2017-09-01")

# Plot Data
ggplot(data = w, aes(x = time, y = temp, colour = station_name)) +
  theme_bw() +
  geom_line() +
  labs(x = "Date", y = "Temperature C", colour = "Station")
