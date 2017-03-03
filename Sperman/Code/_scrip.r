setwd("/Users/lucashenrique/rFolder/analise_ant/")

file_nomes <- c("final1.txt","final2.txt","final3.txt","final4.txt")


# file <- read.csv("final1.txt", sep=";")


i <- 1

# for(i in 1:2){

	file <- read.csv(file_nomes[i], sep=";", header=F)
	file2 <- read.csv(file_nomes[i+1], sep=";", header=F)
	numero_linhas <- nrow(file2)

	file <- data.frame(lapply(file, trimws))
	file2 <- data.frame(lapply(file2, trimws))

	linha <- matrix(data=0,nrow=1,ncol=21)
	resultado <- matrix(data=0,nrow=0,ncol=21)
	for(j in 1:10){ #numero de linhas
		nome <- toString(file2[j,1])
		founded <- match(nome,file[,1])


		for(k in 2:21){ #numero de colunas
			linha[1] <- toString(file2[j,1])
			if (!is.na(founded)){
				if(founded > 0){
					linha[k] <- as.numeric(as.numeric(file2[j,k]) - as.numeric(file[founded,k]))
						# print("file2")

						# print((as.numeric(file2[j,k])))
						# print("file")
						# print(as.numeric(file[founded,k]))
						# print("resultado")
						# print(as.numeric(as.numeric(file2[j,k]) - as.numeric(file[founded,k])))
					if(k == 21){
						print("nome da classe")
						print(file2[j,1])
						print("file2")

						print(file2[j,])
						print("file")
						print(file[founded,])
						print("resultado")
						print(as.numeric(linha))
					}	
				}
				
				

			}
					
		}

		if(!is.na(founded)){
			# print(linha)
			 # resultado <- rbind(resultado,linha)	
			  
		}
		
	}
	 # print(resultado)
# }
