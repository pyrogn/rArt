library(tidyverse)

data <- tibble(x=8, y=8)
data2 <- tibble(x=9, y=9)
# principle of layering
p1 <- ggplot(data = data, aes(x=x,y=y)) +
  geom_point(pch = 21, size = 50, fill='white')

p2 <- geom_point(data=data2, aes(x,y), pch = 21, size = 50, fill='white')

p1+p2 + coord_cartesian(xlim =c(5, 15), ylim = c(5, 15))

# gen x,y from circle and add constant move to coordinates
