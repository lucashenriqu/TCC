
linhas = []
w, h = len(linhas), 21;
tabela1 = [[0 for x in range(h)] for y in range(w)] 
tabela2 = [[0 for x in range(h)] for y in range(w)] 

with open('final1.txt') as fp:
	

    for line in fp:

    	l2 = ((line.replace(" ", "").replace("#", "")).split(';'))
    	l2.pop()
    	tabela1.append(l2)

        	
with open('final2.txt') as fp:
	

    for line in fp:

    	l2 = ((line.replace(" ", "").replace("#", "")).split(';'))
    	l2.pop()
    	tabela2.append(l2)


# for i in tabela2:
# 	print (where(tabela == str(tabela2[i][0])))


val = tabela2[6][0]
count = 0 
found = -1 

for find in tabela2:

	if(len(find)> 1):
		for row in tabela1:
			if(len(row)>1):
				if (row[0] == find[0]):
					found = count
			count = count + 1
		if(found != -1):
			print find[0]
			print found	
		count = 0



	found = -1
		



			



	














# print len(linha)
# c = 0 
# for i in linha:
# 	# print i
# 	c = c +1
# print c

# arquivo = arquivo.splitlines(True) 
# arquivo2 = arquivo2.splitlines(True) 
# for l in file.readline():
# 	print l


# numero = arquivo2.size()
# print numero














# l2= ((arquivo2[1].replace(" ", "").replace("#", "")).split(';'))
# l2.pop()
# tabela1 = l2

# r = 0
# c = 0
# row = []
# for linha in arquivo:
# 	linha = linha.replace(" ", "")
# 	linha = linha.replace("#", "")
# 	linha = linha.split(';')
# 	for l in linha:
		
# 		row.append(l)
# 		r = r + 1

# 	row.pop()
# 	tabela1[r].append(row)
# 	c = c + 1



# print tabela 

