library(psych)
library(openxlsx)
library(dplyr)

MU_2018<-
  read.xlsx("MU 2018 ALT.xlsx")

MU_2018<-
  cbind(ANHO_MU=with(MU_2018, ifelse(N_DOC!=0, "2018", "OTRO")), MU_2018)

MU_2019<-
  read.xlsx("MU MAYO 2019.xlsx")


MU_2019<-
  cbind(ANHO_MU=with(MU_2019, ifelse(N_DOC!=0, "2019", "OTRO")), MU_2019)

MU_2020<-
  read.xlsx("MU MAYO 2020.xlsx")


