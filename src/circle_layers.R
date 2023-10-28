library(tidyverse)

data <- tibble(x=8, y=8)
data2 <- tibble(x=9, y=9)
# principle of layering
main_plot <- ggplot(data = data, aes(x=x,y=y))

x_y_deg <- function(deg) {
  deg = deg %% 360
  rad = deg / 360 * 2 * pi
  c(cos(rad), sin(rad))
}

start <- tibble(x=-20, y=8)
for (deg in seq(1, 1000, 20)) {
  data_plot <- start + x_y_deg(deg)*3
  data_plot$x = data_plot$x + deg/40
  data_plot$y = data_plot$y + deg/40
  new_p <- geom_point(data=data_plot, aes(x,y),pch = 21 ,size=10, fill='white')
  main_plot <- main_plot + new_p
}

main_plot + coord_cartesian(xlim =c(-50, 150), ylim = c(-50, 150))

# gen x,y from circle and add constant move to coordinates
