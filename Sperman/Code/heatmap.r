corMat <- read.csv("heatmap.csv", header = T, sep = ",")
head(corMat)


corMat <- round(cor(corMat),2)
head(corMat)



library(reshape2)
melted_cormat <- melt(corMat)
head(melted_cormat)

# # Heatmap
library(ggplot2)
ggplot(data = melted_cormat, aes(Nome.Do.Software, variable, fill = value))+
 geom_tile(color = "white")+
 scale_fill_gradient2(low = "blue", high = "red", mid = "white", 
   midpoint = 0, limit = c(-1,1), space = "Lab", 
   name="Pearson") +
  theme_minimal()+ 
 coord_fixed()

