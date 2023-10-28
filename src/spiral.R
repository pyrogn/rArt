library(tidyverse)

coef_vec <- 1:360 / 360

x_y_deg <- function(deg) {
  deg = deg %% 360
  rad = deg / 360 * 2 * pi
  c(cos(rad), sin(rad))
}

circle_coords <- map(1:360, x_y_deg)

circle_coords_m <- do.call(rbind, circle_coords)

one_round_spiral <- circle_coords_m * coef_vec

many_rounds_spiral <- rbind(
  one_round_spiral, one_round_spiral+circle_coords_m
)
for (i in 1:10) {
  many_rounds_spiral <- rbind(
    many_rounds_spiral, one_round_spiral+circle_coords_m*i
  )
}

pairs(one_round_spiral)
pairs(many_rounds_spiral)
