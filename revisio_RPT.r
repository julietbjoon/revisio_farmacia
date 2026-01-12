library(readr)
dispensacio <- read_delim("PISCIS_06FARdisp_acces_investigadors.csv", 
                          delim = "|", escape_double = FALSE, trim_ws = TRUE)
head(dispensacio)
library(DescTools)
toupper(c("Emtricitabina/tenofovir disoproxilo"))
table(dispensacio$PRODUCTE2%like%paste0(c("%"), toupper(c("Emtricitabina/tenofovir disoproxilo")), c("%")))

library(tidyverse)
preps_rev <- dispensacio %>% filter(dispensacio$PRODUCTE2%like%paste0(c("%"), toupper(c("Emtricitabina/tenofovir disoproxilo")), c("%")))
a_rev <- dispensacio %>% filter(IdCas=="61509030")


prescripcio <- read_delim("PISCIS_06FARpresc_acces_investigadors.csv", 
                          delim = "|", escape_double = FALSE, trim_ws = TRUE)
head(prescripcio)

antiretro_pres <- prescripcio %>% filter(ATC1%like%"J05%") 
table(antiretro_pres$ATC2)
