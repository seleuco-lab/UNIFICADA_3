library(psych)
library(openxlsx)
library(dplyr)

setwd("C:/proyectos r studio/ANALISTA USACH/git_hub_2/UNIFICADA_3")

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

MU_2020<-
  cbind(ANHO_MU=with(MU_2020, ifelse(N_DOC!=0, "2020", "OTRO")), MU_2020)


MU_2021<-
  read.xlsx("MU MAYO 2021.xlsx")

MU_2021<-
  cbind(ANHO_MU=with(MU_2021, ifelse(N_DOC!=0, "2021", "OTRO")), MU_2021)


MU_2022<-
  read.xlsx("MU ABRIL 2022.xlsx")

MU_2022<-
  cbind(ANHO_MU=with(MU_2022, ifelse(N_DOC!=0, "2022", "OTRO")), MU_2022)

MU_2023<-
  read.xlsx("MU ABRIL 2023.xlsx")

MU_2023<-
  cbind(ANHO_MU=with(MU_2023, ifelse(N_DOC!=0, "2023", "OTRO")), MU_2023)

####Agregacion postgrado 2021 - 2022#####

MAT_2021_POST<-
  cbind(ANHO_MU=with(MAT_2021_POST, ifelse(N_DOC!=0, "2021", "")), MAT_2021_POST)

MAT_2022_POST<-
  read.xlsx("MAT_2022_POST.xlsx")

MAT_2022_POST<-
  cbind(ANHO_MU=with(MAT_2022_POST, ifelse(N_DOC!=0, "2022", "")), MAT_2022_POST)


NROW(Reduce(intersect, list(names(MU_2018),
                            names(MU_2021),
                            names(MU_2022), 
                            names(MU_2020),
                            names(MU_2019),
                            names(MU_2023),
                            names(MAT_2021_POST),
                            names(MAT_2022_POST))))


