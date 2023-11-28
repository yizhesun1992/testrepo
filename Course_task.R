library(renv)
renv::init()
renv::install(c("ggplot2", "dplyr", "tidyr"))
library(ggplot2)
library(dplyr)
library(tidyr)


# Create a dataset with additional variables
set.seed(456)
data <- data.frame(
  x = rnorm(100),
  category = sample(c("A", "B", "C"), 100, replace = TRUE)
) %>% mutate(y = 2 * x + rnorm(100))


# Perform data manipulation using tidyverse
data_summary <- data %>%
  group_by(category) %>%
  summarise(
    mean_x = mean(x),
    sd_y = sd(y),
    n = n()
  )
renv::deactivate()
renv::activate()

renv::snapshot()

renv::view_libraries()
renv::lockfile_read()



library(ggplot2)
install.packages("janitor")
library(janitor)

set.seed(457)
data <- data.frame(
  x = rnorm(100),
  category = sample(c("A", "B", "C"), 100, replace = TRUE)
) %>% mutate(y = 2 * x + rnorm(100))



