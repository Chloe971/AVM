library(readr)

#ACP par thème 
#Thème Taille 
logdk <- read.table("logtsDK.csv",header = T)
logbrut <- data.frame(scale(logdk[,3:12])*sqrt(9/10))

PCA1Logdk <- PCA(logbrut, scale.unit = F)
fviz_pca_var(PCA1Logdk, col.var = "cos2", gradient.cols = c("red","pink","purple"), repel = T)

#Thème Situation
logSit <- logdk[,22:29]
library(ade4)
logSitInd <- acm.disjonctif(logSit)
logSitAcp <- data.frame(scale(logSitInd[,22:29])*sqrt(26/27))
                      
PCA2LogSit <- PCA(logSitAcp, scale.unit = F)
fviz_pca_var(PCA2LogSit, col.var = "cos2", gradient.cols = c("red","pink","purple"), repel = T)

#Thème Qualité
logQual <- logdk[,22:29]
library(ade4)
logSitInd <- acm.disjonctif(logSit)
logSitAcp <- data.frame(scale(logSitInd[,22:29])*sqrt(26/27))

PCA2LogSit <- PCA(logSitAcp, scale.unit = F)
fviz_pca_var(PCA2LogSit, col.var = "cos2", gradient.cols = c("red","pink","purple"), repel = T)
