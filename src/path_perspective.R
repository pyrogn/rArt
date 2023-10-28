library(tidyverse)

# TODO: create 2 points and make every step closer

start <- c(0, 0)
len <- 1
move <- c(0.1, 1)
n_dots <- 100
dots <- matrix(nrow = n_dots, ncol = 2)
dots[1, ] <- start
for (i in 2:n_dots) {
  dots[i, ] <- dots[i-1, ] + move*((n_dots-i)/n_dots)
}

dots

pairs(dots)

