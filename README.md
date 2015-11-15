DESCRIÇÃO:
	Para a solução deste trabalho, foram feitos três executáveis:
		parallel
		sequetial
		testAndAnalyse

ORGANIZAÇÃO DOS ARQUIVOS:
	Pasta temposColetados:
		Pasta contendo os arquivos de saída dos tempos coletados ao executar "parallel" e sequential. Estes dados foram os utilizados para calculo das medias
	Pasta mediasCalculadas:
		Pasta contendo os arquivos de saida do programa "testAndAnalyse" a partir dos arquvos contidos na pasta temposColetados
	Pasta experimento2
		Pasta contendo entradas para o programa testAndAnalyse de modo a realizar experimento com 4, 6 e 8 blocos.
	Pasta experimento3
		Pasta contendo entradas para o programa testAndAnalyse de modo a realizar experimento com 14 blocos.
	Arquivos hostsComSlotsX
		Arquivos a serem usados de entrada para a execucao do OpenMPI. Cada arquivo indica uma quantidade diferente de hosts a serem utilizados, a saber: 4,6,8,14
	Arquivo Makefile
		Arquivo contendo as reguintes regras:
			compSeq -> linha de comando para compilar a versão sequencial do programa e gerar o executável "serial"
			compPar -> linha de comando para compilar a versão paralela do programa e gerar o executável "parallel"
			compTest -> linha de comando para compilar o programa "testAndAnalyse"
			


DOCUMENTAÇÃO DOS EXECUTÁVEIS:

 
Solução sequencial:
	DESCRIÇÃO
		Programa responsável por efetivamente realizar o processo de smoothing utilizando uma abordagem sequencial e calcular o tempo de execução
	SINTAXE
		serial <arquivo_imagem> <tipo_imagem>
			onde 
				<arquivo_imagem> -> nome do arquivo da imagem a ser processada
				<tipo_imagem> -> tipo a imagem a ser processada. Pode assumir dois valores: 1 - RGB, 2 - GrayScale			
	FORMATO DE SAÍDA GERADO:
		São gerados dois tipos de saída diferentes: o resultado do processamento da imagem, armazendaa no arquivo de nome <arquivo_imagem>.ppm; e o resultado da contagem de tempo, exibido na saída padrão.
		Formato impresso na saída padrão:
			<arquivo_imagem> <NUM_BLOCOS> <NUM_THREADS> <TEMPO>

			onde
				<NUM_BLOCOS> -> número de blocos em que a imagem foi dividida
				<NUM_THREADS> -> número de threads utilizadas pelo OpenMP para processar a imagem em cada nó
				<TEMPO> tempo de execução

Solução paralela:
	DESCRIÇÃO:
		Programa responsável por efetivamente realizar o processo de smoothing utilizando uma abordagem paralela. Fas uso de OpenMPI e OpenMP para a implementação do paralelismo.
	SINTAXE:
		parallel <arquivo_imagem> <tipo_magem> <NUM_THREADS>
			onde
				<arquivo_imagem> -> nome do arquivo da imagem a ser processada
				<tipo_imagem> -> tipo a imagem a ser processada. Pode assumir dois valores: 1 - RGB, 2 - GrayScale	
				<NUM_THREADS> -> número de threads utilizadas pelo OpenMP para processar a imagem em cada nó
	FORMATO DE SAÍDA GERADO:		
		Vide Solução Sequencial.

Programa testAndAnalyse:
	DESCRIÇÃO:
		Programa responsável por executar "parallel" e "serial" tantas vezes quanto necessárias e realizar o cálculo da média de tempo e seu desvio padrão. Permite o uso da flag -nE para indicar se somente o cálculo das estatísticas devem ser feitos, sem executar "parallel" e "serial". 
	SINTAXE:
		analyzer [-nE]
			onde 
			[-nE] -> Parâmetro opcional. Se presente, este parâmetro indica que não se deve executar os programas "parallel" e "serial". Apenas serão lidos os arquivos de tempo e calculados a média e desvio padrão.
	FORMATO DE ENTRADA ESPERADO:
		O programa lê da entrada padrão, porém o formato de entrada difere dependendo da presença do parâmetro -nE.
		Sem parâmetro -nE:
			<NUM_IMAGENS> <NUM_VEZES_EXEC>
			<N_THREADS> <THREADS[0]> <THREADS[1]> .... <THREADS[N_THREADS-1]>
			<N_BLOCOS> <BLOCOS[0]> <BLOCOS[1]> .... <BLOCOS[N_BLOCOS-1]>
			<arquivo_imagem>[0]
			<tipo_imagem>[0]
			<arquivo_imagem>[1]
			<tipo_imagem>[1]
			...
			<arquivo_imagem>[NUM_IMAGENS-1]
			<tipo_imagem>[NUM_IMAGENS-1]
			<arquivo_hosts>[0]
			<arquivo_hosts>[1]
			...
			<arquivo_hosts>[NUM_BLOCOS-1]
			<arquivo_saida_tempos>[0]
			<arquivo_saida_tempos>[1]
			...
			<arquivo_saida_tempos>[NUM_IMAGENS-1]

			onde
				<NUM_IMAGENS> -> número de imagens a serem processados
				<NUM_VEZES_EXEC> -> quantidade de vezes que os algoritmos devem ser executados para o sequencial e para cada combinação de valor de thread e bloco.
				<N_THREADS> -> quantidade de valores diferentes de threads que devem ser testadas.
				<THREADS[0]> ... <THREADS[N_THREADS-1]> -> lista de <N_THREADS> valores que representam a quantidade de threads utilizadas no algoritmo paralelo.
				<N_BLOCOS> -> quantidade de valores diferentes de quantidades de blocos que devem ser testadas.
				<BLOCOS[0]> ... <BLOCOS[N_BLOCOS-1]> -> lista de <N_BLOCOS> valores que representam a quantidade de blocos utilizadas no algoritmo paralelo.
				<arquivo_imagem>[i] -> arquivos que contêm a imagem para os executávies "parallel" e "serial".
				<tipo_imagem[i] -> flags indicando o tipo de imagem: 1 - RGB, 2 - GrayScale
				<arquivo_saida_tempos>[i] -> arquivos onde devem ser armazenados os tempos calculados nos executáveis "parallel" e "serial". Para detalhes na formatação do conteúdo, consultar seção "FORMATO DE SAIDA GERADO" das soluções paralelas e sequencial.
		Com parâmetro -nE:
			<NUM_ARQUIVOS> <LIXO>
			<N_THREADS> <LIXO[0]> <LIXO[1]> .... <LIXO[N_THREADS-1]>
			<N_BLOCOS> <LIXO[0]> <LIXO[1]> .... <LIXO[N_BLOCOS-1]>
			<arquivo_saida_tempos>[0]
			<arquivo_saida_tempos>[1]
			...
			<arquivo_saida_tempos>[NUM_ARQUIVOS-1]

			onde
				<NUM_ARQUIVOS> -> número de arquivos do tipo <arquivo_saida_tempos> a serem analisados
				<LIXO> -> parâmetros necessários, porém não utilizados. Devem ser números inteiros.
				<N_THREADS> -> parâmetro necessário, mas não utilizado. Deve ser um número inteiro
				<N_BLOCOS> -> parâmetro necessário, mas não utilizado. Deve ser um número inteiro
				<arquivo_saida_tempos>[i] -> arquivos onde já estão armazenados os tempos de execução obtidos por "parallel" e "serial". Tais arquivos serão utilizados como entrada para este programa. Para detalhes na formatação do conteúdo, consultar seção "FORMATO DE SAIDA GERADO" das soluções paralelas e sequencial. 

	FORMATO DE SAÍDA GERADO:
		Na saída padrão:
			<arquivo_imagem> <NUM_BLOCOS> <NUM_THREADS> <MEDIA> <DESVIO_PADRAO>
			onde
				<arquivo_imagem> -> imagem original
				<NUM_BLOCO> -> numero de blocos utlizado. No caso do algoritmo sequencial, <NUM_THREADS> sempre receberá um valor menor que 0.
				<NUM_THREADS> - > numero de threads utlizado. No caso do algoritmo sequencial, <NUM_THREADS> sempre receberá um valor menor que 0.
				<MEDIA> -> Média dos valores de tempo presentes no arquivo <arquivos_saida_tempos>
				<DESVIO_PADRAO> -> desvio padrão dos valores de tempo presentes no arquivo <arquivos_saida_tempos>
		No entanto, quando o parâmetro -nE não é passado, dois pontos devem ser observados quanto a saída:
			1) Os programas "parallel" e "serial" são executados mais tantas vezes quanto pedido. Portanto, consulte a documentação de cada um (acima) para a descrição das saídas geradas por cada um deles.
			2) Quando valores de threads e blocos são informados, "testAndAnalyse" chama "parallel" e "serial" de modo que, dado uma imagem de entrada, um valor de thread e um valor de bloco, um arquivo diferente de saída é informado. Portanto, arquivos extras são criados seguindo o seguinte padrão para seus nomes:
				<BLOCO[i]>_<THREAD[i]>_<arquivo_saida_tempos>
 

