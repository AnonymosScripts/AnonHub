# Evolvy / Anonymous Potato 0.6.0 — capitulo 2

PlaceId 116701845804918. Chave local: Anonymous.

Esta versao corrige a conversao de posicao da pilha para ID da batata. GetPotatoInSlot e GetPotatoSlot precisam concordar antes de usar o ID. Os filtros agora consultam o ID convertido, inclusive quando uma peca e reutilizada.

Auto Progress inclui resfriamento, coleta, entrega, corte, venda e compras. A valvula usa pressionamento continuo de cinco segundos, seguido da verificacao de agua fluindo ou calor diminuindo. Ha uma segunda tentativa pelo acionamento nativo quando a primeira nao e confirmada.

A entrega acompanha todas as unidades descarregadas e aguarda o prompt terminar. Falhas recebem espera e recuperacao por etapa, sem desligar todo o ciclo. Pausar continua encerrando as entradas ativas.

O corte tem meta inicial de 20 tentativas/s e multiplicador por ferramenta de ate 4x. Cada tentativa aguarda a transicao confirmada pelo jogo; nao ha garantia de 20 ou 80 recompensas/s. O painel mostra unidades adicionadas ao estoque por segundo, que podem diferir da quantidade de batatas processadas conforme as regras do jogo.

A coleta permite escolher Mao, Pa ou a melhor ferramenta adquirida. O lote configuravel nao concede melhorias nem altera a capacidade validada pelo servidor. Os especiais sem modelo visivel usam os IDs e as posicoes retornados pelo proprio jogo; recusas recebem pausa de 30 segundos. A rotina nao cria eventos, aboboras ou gemas inexistentes. Tentativas virtuais sao limitadas a uma a cada cinco segundos para nao bloquear a coleta comum.

As melhorias usam o protocolo direto identificado sem abrir/selecionar a aba de melhorias. O botao A continua acessivel e existe Restaurar controles do jogo em Ajustes.

Execute LOADSTRING.txt depois da publicacao. Ele aponta para o mesmo repositorio, com parametro de versao para evitar uma copia antiga no cache. Configuracoes salvas sao reaproveitadas; as rotinas sempre comecam pausadas.

Validacao: compilacao oficial Luau 0.745, 11 suites locais, 57 verificacoes de coordenacao e 45 de layout. Inclui regressao para permutacao entre posicao/ID, remocao de batatas e pressionamento/cancelamento da valvula. Nao foi executado no Delta/iPhone pelo agente. Nao foi medido FPS nem confirmado um tempo de conclusao do jogo.
