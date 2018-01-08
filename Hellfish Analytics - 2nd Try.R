library(tidyverse)
library(readxl)
Hellfish_Stats <- read_excel("~/Documents/R Projects/HellfishR/Hellfish Analytics/2017 Hellfish Stats.xls", 
                             sheet = "Career Batting", col_types = c("text", 
                                                                     "text", "numeric", "numeric", "numeric", 
                                                                     "numeric", "numeric", "numeric", 
                                                                     "numeric", "numeric", "numeric", 
                                                                     "numeric", "numeric", "numeric", 
                                                                     "numeric", "numeric", "numeric", 
                                                                     "numeric", "numeric", "text", "text"))
Hellfish_Stats$Year <- NULL
Hellfish_Stats_Clean <- filter(Hellfish_Stats,Hellfish_Stats$Status=="Active") 
Hellfish_Stats_Clean$`1B*` <- Hellfish_Stats_Clean$ 
View(Hellfish_Stats_Clean)

Hellfish_Stats_Clean$PA <- Hellfish_Stats_Clean$PA/Hellfish_Stats_Clean$Seasons
Hellfish_Stats_Clean$AB <- Hellfish_Stats_Clean$AB/Hellfish_Stats_Clean$Seasons       
Hellfish_Stats_Clean$R <- Hellfish_Stats_Clean$R/Hellfish_Stats_Clean$Seasons   
Hellfish_Stats_Clean$H <- Hellfish_Stats_Clean$H/Hellfish_Stats_Clean$Seasons   
Hellfish_Stats_Clean$`1B*` <- Hellfish_Stats_Clean$`1B*`/Hellfish_Stats_Clean$Seasons   
Hellfish_Stats_Clean$`2B*` <- Hellfish_Stats_Clean$`2B*`/Hellfish_Stats_Clean$Seasons   
Hellfish_Stats_Clean$`3B*` <- Hellfish_Stats_Clean$`3B*`/Hellfish_Stats_Clean$Seasons   
Hellfish_Stats_Clean$`HR*` <- Hellfish_Stats_Clean$`HR*`/Hellfish_Stats_Clean$Seasons   
Hellfish_Stats_Clean$RBI <- Hellfish_Stats_Clean$RBI/Hellfish_Stats_Clean$Seasons   
Hellfish_Stats_Clean$BB <- Hellfish_Stats_Clean$BB/Hellfish_Stats_Clean$Seasons   

radiant::radiant()
