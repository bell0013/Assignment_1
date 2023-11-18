#Script area for building markdown functions


ai_data <- read.csv("ai_numbers.csv", check.names = FALSE)

head(ai_data)


install.packages("tidyverse")

install.packages("rtools")

chooseCRANmirror(ind=1) # Choose a different mirror index

chooseCRANmirror(ind=1, useHTTPS=TRUE, mirrors = "https://cran.rstudio.com/")

chooseCRANmirror(ind=1)


install.packages("gridExtra")


library(rmarkdown)
library(knitr)
library(tidyverse)
library(readr)
library(kableExtra)
library(ggplot2)
library(lubridate)
library(gridExtra)


# Count the number of non-NA entries per country
country_counts <- ai_data %>%
  group_by(Country) %>%
  summarise(
    entries = sum(!is.na(`2010`)) + sum(!is.na(`2015`)) + sum(!is.na(`2020`))
  ) %>%
  filter(entries %in% c(1, 2, 3))

# Plot the filtered data
ggplot(country_counts, aes(x = Country, y = entries)) +
  geom_bar(stat = "identity", fill = "skyblue", width = 0.7) +
  labs(title = "Number of Non-NA Entries per Country", x = "Country", y = "Count") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))