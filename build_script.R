#Script area for building markdown functions


ai_data <- read.csv("ai_numbers.csv", check.names = FALSE)

head(ai_data)


install.packages("tidyverse")

install.packages("Rtools")

chooseCRANmirror(ind=1) # Choose a different mirror index

chooseCRANmirror(ind=1, useHTTPS=TRUE, mirrors = "https://cran.rstudio.com/")

chooseCRANmirror(ind=1)


