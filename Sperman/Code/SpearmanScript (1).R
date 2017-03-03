setwd("/Users/lucashenrique/rFolder/analise_sweethome")

file_nomes <- c("final1.txt","final2.txt","final3.txt","final4.txt","final5.txt","final6.txt","final7.txt","final8.txt","final9.txt","final10.txt","final11.txt","final12.txt","final13.txt","final14.txt","final15.txt","final16.txt","final17.txt","final18.txt","final19.txt","final20.txt")

resultado <- matrix(data=0,nrow=0,ncol=21)

 for(i in 1:19){
    print("processando arquivo....")
	print(file_nomes[i])
	# print(file_nomes[i])
	# print(file_nomes[i+1])
	file1 <- read.csv(file_nomes[i], sep=";", header=F)
	file2 <- read.csv(file_nomes[i+1], sep=";", header=F)
	numero_linhas <- nrow(file2)
	# print("numero de linhas")
	# print(numero_linhas) 
	file1[,1] <- trimws(file1[,1])
	file2[,1] <- trimws(file2[,1])
	
	linha <- data.frame(matrix(data=0,nrow=1,ncol=21))
	for(j in 1:numero_linhas){ #numero de linhas
		nome <- toString(file2[j,1])
		founded <- match(nome,file1[,1])

		if (!is.na(founded)){
			for(k in 2:21){ #numero de colunas
				linha[1] <- toString(file2[j,1])
				linha[k] <- as.numeric(file2[j,k] - file1[founded,k])
				if(is.na(linha[k])){
					linha[k] = 0
				}				
			}			
			if(linha[3] != 0){
				resultado <- rbind(resultado,linha)	
			}				
		}	
	}
 }

 cabecalho <- matrix(data=0,nrow=1,ncol=21)
cabecalho <- c("Nome Da CLasse",	"Possui Violacao",	"Numero de Violacoes", "WMC", "DIT", "NOC", "CBO", "RFC","LCOM","CA","CE","CPM","LCOM3","LOC","DAM","MOA","MFA","CAM","IC","CBM","AMC")
colnames(resultado) <- cabecalho

write.csv(resultado, file = "final.csv")





