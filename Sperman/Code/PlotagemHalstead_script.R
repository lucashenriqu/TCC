# corMat <- read.csv("/Users/lucashenrique/rFolder/SweetHome/res.csv")
# head(corMat)
# library(reshape2)
# melted_cormat <- melt(corMat)
# head(melted_cormat)
# library(ggplot2)
# ggplot(data = melted_cormat, aes(X, variable, fill=value)) + 
#   geom_tile()


corMat <- read.csv("heatmap.csv")
head(corMat)
cormat <- round(cor(corMat),2)
head(cormat)
library(reshape2)
melted_cormat <- melt(cormat)
head(melted_cormat)
library(ggplot2)
ggplot(data = melted_cormat, aes(Nome.Do.Software,variable, fill = value))+
 geom_tile(color = "white")+
 scale_fill_gradient2(low = "red", high = "blue", mid = "white"
, 
   midpoint = 0, limit = c(-1,1), space = "Lab", 
   name="Spearman") +
  theme_minimal()+
 coord_fixed()



# head(corMat)
# library(reshape2)
# melted_cormat <- melt(corMat)
# # Heatmap
# library(ggplot2)
# ggplot(data = melted_cormat, aes(X, variable, fill = value))+
#  geom_tile(color = "white")+
#  scale_fill_gradient2(low = "red", high = "blue", mid = "white"
# , 
#    midpoint = 0, limit = c(-1,1), space = "Lab", 
#    name="Spearman") +
#   theme_minimal()+
#  coord_fixed()