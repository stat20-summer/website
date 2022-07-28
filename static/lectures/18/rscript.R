library(tidyverse)
fun_range <- c(-6, 18)
Fun_Range_Df <- tibble(fun_range)

ggplot(Fun_Range_Df) + geom_area(mapping = aes(x = fun_range),
                                 stat = "function",
                                 fun = dnorm, 
                                 args = list(6, 4),
                                 fill = "magenta",
                                 color = "pink",
                                 alpha = 0.1) +
  scale_x_continuous(breaks = seq(-6, 18, by = 2)) + 
  theme_light() + xlab("x") + ylab("P(X = x)")



ggplot(Fun_Range_Df) + geom_area(mapping = aes(x = fun_range),
                                 stat = "function",
                                 fun = dnorm, 
                                 args = list(6, 2),
                                 fill = "navyblue",
                                 color = "aquamarine",
                                 alpha = 0.1) +
  scale_x_continuous(breaks = seq(-6, 18, by = 2)) + 
  theme_light() + xlab("x") + ylab("P(X = x)")
