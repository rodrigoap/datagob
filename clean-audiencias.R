library(data.table)
library(jsonlite)

options(stringsAsFactors = FALSE)
setwd("/datagob/audiencias/")

fileUrl <- "http://datos.gob.ar/dataset/2889b09e-31ca-4f90-912e-2a50db874e33/resource/dcc74a80-55fa-4e9c-b025-e0d321aa36ee/download/audiencias.csv"
download.file(fileUrl, destfile = "audiencias.csv", method = "curl")
allData <- read.csv("audiencias.csv", stringsAsFactors = FALSE)

dt <- data.table(allData)
dt[,obligado_comp:= paste(obligado_apellido, obligado_nombre)]
dt[,solic_comp:= paste(solic_apellido, solic_nombre)]
rst <- data.frame(dt[,obligado_comp], dt[,solic_comp], dt[, fecha_audiencia])

x <- " ,áéíóúñ"
Encoding(x) <- "UTF-8"
y <- "__aeioun"
Encoding(y) <- "UTF-8"
Encoding(rst$dt...obligado_comp.) <- "UTF-8"
Encoding(rst$dt...solic_comp.) <- "UTF-8"

rst$dt...obligado_comp. <- chartr(x, y, rst$dt...obligado_comp.)
rst$dt...solic_comp. <- chartr(x, y, rst$dt...solic_comp.)

write.csv(rst, "audiencias-clean.csv")
