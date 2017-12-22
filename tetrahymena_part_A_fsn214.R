library(tidyverse)
tetrahymena= read.csv('tetrahymena.tsv', sep='',header= T)
tetrahymena= as_tibble(tetrahymena)
tetrahymena= filter(tetrahymena, !(diameter <= 19.2))
tetrahymena= group_by(tetrahymena,culture,glucose) 
tetrahymena= summarise(tetrahymena, mean_conc= mean(conc),mean_dia= mean(diameter))
tetrahymena= mutate(tetrahymena, log_conc= log(mean_conc), log_diameter= log(mean_dia))

