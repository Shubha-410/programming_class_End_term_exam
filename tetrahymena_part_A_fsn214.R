library(tidyverse)
tetrahymena= read.csv('tetrahymena.tsv', sep='',header= T)
tetrahymena= as_tibble(tetrahymena)
tetrahymena= filter(tetrahymena, !(diameter <= 19.2))
tetrahymena= group_by(tetrahymena,culture,glucose) 

