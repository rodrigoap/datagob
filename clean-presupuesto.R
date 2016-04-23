library(dplyr)

setwd("/Library/WebServer/Documents/geo/datagob/test/")
download.file("http://datos.gob.ar/dataset/89f1a2dd-ad79-4211-87b4-44661d81ac0d/resource/84e23782-7d52-4724-a4ba-2f9621fa5f4e/download/presupuesto-2016.csv", "presupuesto-20160417.csv")

pre <- read.csv("presupuesto-20160417.csv", stringsAsFactors = FALSE, header = TRUE)

pre[,26] <- as.numeric(chartr(",", ".", pre[,26]))
pre[,27] <- as.numeric(chartr(",", ".", pre[,27]))
pre[,28] <- as.numeric(chartr(",", ".", pre[,28]))
pre[,29] <- as.numeric(chartr(",", ".", pre[,29]))

preXprograma <- aggregate(pre[,26:29], list(pre$servicio_id, pre$programa_id), sum)
colnames(preXprograma)[1] <- "servicio_id"
colnames(preXprograma)[2] <- "programa_id"
pre[pre$servicio_id==310 & pre$programa_id==19,]$programa_desc <- "Promocion y Articulacion de Relaciones Sanitarias Nacionales e Internacionales"

labelsPre <- unique(pre[,c(8:11)])

labelsPre <- arrange(labelsPre, servicio_id, programa_id)
preXprograma <- arrange(preXprograma,  servicio_id, programa_id)
preXprogramaLabel <- cbind(preXprograma, labelsPre$programa_desc)
preXprogramaLabel <- cbind(preXprogramaLabel, labelsPre$servicio_desc)

colnames(preXprogramaLabel)[7] <- "programa_desc"
colnames(preXprogramaLabel)[8] <- "servicio_desc"

preXprogramaLabel <- arrange(preXprogramaLabel, desc(monto_presupuestado))
write.csv(file="preXprogramaLabel-20160417.csv", x=preXprogramaLabel, row.names = FALSE)
