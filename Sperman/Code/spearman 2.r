setwd("/Users/lucashenrique/rFolder/")

# ant <- read.csv("/Users/lucashenrique/rFolder/analise_ant/final_ant.csv", sep=",", header=T)
# sweethome <- read.csv("/Users/lucashenrique/rFolder/analise_sweethome/final_sweethome.csv", sep=",", header=T)
# lucene <- read.csv("/Users/lucashenrique/rFolder/analise_lucene/final_lucene.csv", sep=",", header=T)

ant <- read.csv("/Users/lucashenrique/rFolder/final_all.csv", sep=",", header=F)

resultado <- matrix(data=0,nrow=1,ncol=19)
cabecalho <- matrix(data=0,nrow=1,ncol=19)
cabecalho <- c("Nome Do Software", "WMC", "DIT", "NOC", "CBO", "RFC","LCOM","CA","CE","CPM","LCOM3","LOC","DAM","MOA","MFA","CAM","IC","CBM","AMC")
colnames(resultado) <- cabecalho
resultado[1,1]="Overall"
# resultado[2,1]="SweetHome"
# resultado[3,1]="Lucene"

for (i in 2:19){

	resultado_medida <- cor(rank(ant[,4]),rank(ant[,i+3]),method="spearman")

	if(is.na(resultado_medida)){
		resultado_medida = 0 
	}

	resultado[1,i] = resultado_medida
}

# for (i in 2:19){

# 	resultado_medida <- cor(rank(sweethome[,4]),rank(sweethome[,i+3]),method="spearman")

# 	if(is.na(resultado_medida)){
# 		resultado_medida = 0 
# 	}

# 	resultado[2,i] = resultado_medida
# }
# for (i in 2:19){

# 	resultado_medida <- cor(rank(lucene[,4]),rank(lucene[,i+3]),method="spearman")

# 	if(is.na(resultado_medida)){
# 		resultado_medida = 0 
# 	}

# 	resultado[3,i] = resultado_medida
# }

write.csv(resultado, file = "final_overall.csv")






