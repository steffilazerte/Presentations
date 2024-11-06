library(bbsBayes2)
library(dplyr)
library(ggplot2)
library(sf)

fetch_bbs_data()

d <- load_bbs_data()$routes |>
  select(route, route_name, rpid, route_data_id, latitude, longitude, state, country)  |>
  distinct() |>
  st_as_sf(coords = c("longitude", "latitude"), crs = 4326)

m <- load_map(stratify_by = "bbs_cws") |>
  filter(country == "Canada") |>
  mutate(bcr = factor(bcr))

ggplot() +
  theme_minimal() +
  theme(legend.position = c(0.85, 0.9), legend.direction = "horizontal",
        legend.title.position = "top") +
  geom_sf(data = m, aes(fill = bcr)) +
  geom_sf(data = filter(d, country == "CA"), size = 0.5) +
  scale_fill_viridis_d(name = "Bird Conservation Region (BCR)")
