	# L? os dados brutos de um arquivo e armazena em "d"
	d <- read.csv("/Users/lucashenrique/rFolder/LUCENE/WMC.csv")

	#Imprime os dados lidos guardados em "d"
	d
	#Imprime os dados da coluna 1 de d
	#d[,1]

	#Calcula o RANK (posicao) da coluna 1 de d
	#rank(d[,1])

	#Aplica correlacao de Spearman entre as colunas 1 e 2 de d
	#cor(rank(d[,1]),rank(d[,2]), method="spearman")
	 
	# guarda o nome das colunas no vetor metricas
	metricas = colnames(d)

	#cria matriz vazia chamada resultado com 3 colunas
	#numero de linhas ser? a quantidade de testes a se realizar (qtde_testes)
	# primeiras 2 colunas ser? o nome das metricas correlacionadas
	# a terceira coluna ser? o resultado da correla?ao
	qtde_testes=2  # 11(halstead)  X 27 (outras metricas)
	resultado <- matrix(data=0,nrow=qtde_testes,ncol=2)

	#contador para controlar a linha de resultado
	cont <- 1;
	x <- 1;
	y <- 2;
	i <- 1;

	# for(i in 1:9){ #rodar as metricas de halstead


	    resultado[cont,1] <- "Metrica_x_Medida_de_sw"


	    #guarda em Resultado a correlacao de Spearman passando o rank das colunas
	    resultado[cont,2] <- cor(rank(d[,x]),rank(d[,y]),method="spearman")
	    x <- x + 2
	    y <- y + 2
	    cont <- cont + 1

	# }


	#Define o nome das colunas da matriz RESULTADO
	colnames(resultado) <- c("WMC_V", "Coef. Spearman")
	print(resultado)
	write.csv(resultado, file = "/Users/lucashenrique/rFolder/LUCENE/WMC_r.csv")
