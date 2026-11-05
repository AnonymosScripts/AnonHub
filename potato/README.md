# Evolvy / Anonymous 0.13.0 — modos independentes e producao
Chave Anonymous. PlaceId 116701845804918.

Auto Cut isolado ignora as regras de limpeza/estoque da coleta e entra na mesa ou abastece com batatas ja carregadas. Nao ativa coleta por conta propria. Dinamite isolada pode localizar alvos sem ligar coleta. Auto Sell, melhorias e resfriamento mantem ativacoes proprias; Auto Progress combina as rotinas.

Comprar o automatico nao basta para interromper o corte com faca. A fase continua gerando renda ate confirmar dinamite, pa, automatico e sugador maximizados. So entao coleta em lotes de 500 por padrao para o automatico. A capacidade real pode exigir mais viagens; melhorias, propriedades e limites continuam sendo lidos do jogo. O automatico ocupado nao e reacionado sem intervalo; cargas parciais podem devolver o controle a coleta. Ao esgotar a montanha, o estoque da caixa segue para corte com faca em paralelo ao automatico. O jogo controla a quantidade efetivamente recebida por cada carga; o lote e um alvo de inicio, nao garantia de transferencia exata.

A selecao de ferramenta tenta primeiro os botoes reais da Hotbar, identificados por nome, ToolId, texto ou icone do proprio catalogo. Isso atualiza o controlador local. A compra/entrega nao deixa o cache preso em Hand. Se o botao nao for identificado, usa o protocolo ToolEquip conhecido. O sugador quente continua alternando com a pa. Alvos transparentes deixam de ser tratados como vivos, a fila de outros alvos e preservada apos falhas, e a espera de recuperacao da coleta fica limitada a 0,6 segundo.

Alinhar a camera ao entrar na mesa vem ligado, usando o mesmo mecanismo da valvula e restaurando a visao ao terminar. O helper do executor e o input nativo sao alternativas; a confirmacao real continua sendo a abertura da mesa.

A recuperacao e da barra do JOGO (mao, pa, dinamite e prompts). O botao flutuante RESTAURAR GUI foi removido. A opcao esta somente na tela Inicio; a recuperacao apos renascer pode permanecer ligada. O botao A continua abrindo/ocultando o painel. Visual reorganizado com grafite, indigo, cartao principal de acao, indicacao de aba ativa e navegacao por toque maior. Sem renderizacao real pelo agente no Delta.

Chave: Usar chave e procurar saida integra Auto Progress ou pode ser ligado sozinho. Reconhece HasKey e uma Tool de chave realmente existente; equipa a Tool quando disponivel e busca prompts habilitados de chave/caminhao/guindaste. Nao inventa KeyUsed nem cria chave. Prompts de loja/maquinas sao excluidos. Nao considera a partida terminada apenas por chegar ou acionar um prompt: aguarda Escaped do jogo. O trajeto real nao foi validado no capitulo 2 e pode exigir etapas que o cliente nao expos; o diagnostico registra candidatos e tentativa.

Pesquisa: pagina oficial da experiencia https://www.roblox.com/games/116701845804918/Peel-THE-Potato ; documentacao de prompts https://create.roblox.com/docs/reference/engine/classes/ProximityPrompt ; helper do executor https://docs.sunc.io/Instances/fireproximityprompt/ . A descricao oficial confirma chave e fuga, mas nao descreve um atalho por caminhao. Nenhuma fonte primaria consultada demonstrou dinheiro arbitrario, aura ilimitada ou cooldown zero; tais resultados nao sao prometidos nem implementados como estado falso.

Validacao: compilacao Luau 0.745; 13 suites locais, 73 verificacoes de coordenacao e 45 de layout. Inclui independencia do corte/bombas, requisitos da fase de 500 e exclusao de compras na rota da chave. Sem execucao pelo agente no Delta/iPhone ou garantia de tempo de conclusao.
