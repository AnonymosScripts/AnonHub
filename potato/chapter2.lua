-- Luau · Anonymous_Potato_Hub.luau · Peel THE Potato 116701845804918 · Roblox / Delta · Luau 0.745
-- AnonHub 0.36.0 · Chapter 2 and lobby

local hub=...
if type(hub)~="table" or type(hub.access)~="table" then return end
local strings={
    ["Inicio"]="Home",
    ["Coleta"]="Collect",
    ["Corte"]="Cut",
    ["Vendas"]="Sales",
    ["Resfriar"]="Cooling",
    ["Compras"]="Shop",
    ["Missoes"]="Quests",
    ["Ajustes"]="Settings",
    ["Visao geral"]="Overview",
    ["Coleta e alvos"]="Collection and targets",
    ["Mesa de corte"]="Cutting table",
    ["Controle de calor"]="Heat control",
    ["Equipamentos"]="Equipment",
    ["Preferencias"]="Preferences",
    ["Missoes e passe"]="Quests and pass",
    ["INICIO"]="HOME",
    ["COLETA"]="COLLECT",
    ["CORTE"]="CUT",
    ["VENDER"]="SELL",
    ["AGUA"]="COOL",
    ["LOJA"]="SHOP",
    ["MISSOES"]="QUESTS",
    ["AJUSTE"]="SETTINGS",
    ["IDIOMA"]="LANGUAGE",
    ["Conta"]="Account",
    ["PAUSAR TUDO"]="PAUSE ALL",
    ["OCULTAR"]="HIDE",
    ["RECUPERAR"]="RESTORE",
    ["CAPÍTULO II / ANONHUB"]="CHAPTER II / ANONHUB",
    ["≡   ARRASTE PARA MOVER"]="≡   DRAG TO MOVE",
    ["ENCERRAR HUB"]="CLOSE HUB",
    ["SALVAR"]="SAVE",
    ["PAUSAR"]="PAUSE",
    ["Salvar"]="Save",
    ["Pausar"]="Pause",
    ["Inicializando..."]="Starting…",
    ["Pronto."]="Ready.",
    ["≡   ANONHUB / POTATO   ·   ARRASTE"]="≡   ANONHUB / POTATO   ·   DRAG",
    ["BARRA DE FERRAMENTAS DO JOGO"]="GAME TOOLBAR",
    ["Use somente se sumirem a mao, a pa, a dinamite ou os prompts do jogo."]="Use if the game's tools or interaction prompts disappear.",
    ["RECUPERAR MAO, PA E FERRAMENTAS"]="RESTORE TOOLS",
    ["Recuperar ao iniciar e renascer"]="Restore on launch and respawn",
    ["A interface e restaurada; as rotinas continuam pausadas depois de morrer."]="Restores the interface and keeps routines paused after a respawn.",
    ["Nenhuma recuperacao solicitada nesta sessao."]="No restoration requested in this session.",
    ["Alguns controles ainda não estão disponíveis."]="Some controls are still unavailable.",
    ["Controles restaurados."]="Controls restored.",
    ["MODOS / CAPITULO II"]="MODES / CHAPTER II",
    ["OP: sugador MAX, coleta total, corte e saida. Auto Progress: ciclo normal."]="OP uses a maxed vacuum to clear the pile, cut and exit. Auto Progress runs the standard cycle.",
    ["PAUSAR PROGRESS"]="PAUSE AUTO PROGRESS",
    ["ATIVAR OP"]="START OP",
    ["PAUSAR OP"]="PAUSE OP",
    ["MODO  •  PAUSADO"]="MODE  •  PAUSED",
    ["MODO  •  CONCLUIDO"]="MODE  •  COMPLETE",
    ["MODO  •  OP ATIVO  /  "]="MODE  •  OP ACTIVE  /  ",
    ["MODO  •  AUTO PROGRESS"]="MODE  •  AUTO PROGRESS",
    ["MODO  •  PAUSADO / ROTINAS MANUAIS"]="MODE  •  PAUSED / MANUAL ROUTINES",
    ["PERFIL DA PARTIDA"]="MATCH PROFILE",
    ["Tipo de grupo"]="Group type",
    ["Com o hub"]="Hub team",
    ["Grupo misto"]="Mixed group",
    ["Contas com o hub"]="Accounts using the hub",
    ["2 contas"]="2 accounts",
    ["3 contas"]="3 accounts",
    ["4 contas"]="4 accounts",
    ["Seu papel"]="Your role",
    ["Lider OP"]="OP leader",
    ["Coletar"]="Collect",
    ["Cortar e vender"]="Cut and sell",
    ["Sua mesa"]="Your table",
    ["Mesa"]="Table",
    ["Mesa 1"]="Table 1",
    ["Mesa 2"]="Table 2",
    ["Mesa 3"]="Table 3",
    ["Mesa 4"]="Table 4",
    ["INICIAR PERFIL"]="START PROFILE",
    ["1 lider OP e 1 no corte/venda."]="1 OP leader and 1 player cutting and selling.",
    ["1 lider OP, 1 na coleta e 1 no corte/venda."]="1 OP leader, 1 collector and 1 player cutting and selling.",
    ["1 lider OP, 1 na coleta e 2 no corte/venda."]="1 OP leader, 1 collector and 2 players cutting and selling.",
    [" Usem mesas diferentes. Venda paga a equipe. Corte e equipamentos sao individuais."]=" Use different tables. The team shares sales. Cutting and equipment are individual.",
    ["Apoio com corte nativo, vendas e caminhada. Compra facas e ate dois niveis do upgrade de velocidade do jogo."]="Supports the team by cutting, selling and walking. Buys knives and up to two speed upgrades.",
    ["Recomendado: OP. Uma conta financia as ferramentas, limpa a montanha, corta o estoque e usa a chave."]="Recommended: OP. One account funds tools, clears the pile, cuts the stock and uses the key.",
    ["SEU EQUIPAMENTO"]="YOUR EQUIPMENT",
    ["Niveis lidos do jogo. MAX aparece somente com todos os niveis confirmados."]="Equipment levels come from the game. MAX appears once all levels are confirmed.",
    ["Aguardando dados"]="Waiting for data",
    ["RENDA"]="FUND",
    ["EQUIPAR"]="EQUIP",
    ["LIMPAR"]="CLEAR",
    ["SAIR"]="EXIT",
    ["00:00  /  SORTE 0"]="00:00  /  LUCK 0",
    ["VER MELHORIAS"]="VIEW UPGRADES",
    ["ESTADO DA PARTIDA"]="MATCH STATUS",
    ["Dinheiro: —\nBolsa: —\nCalor: —\nEstado: aguardando"]="Cash: —\nBag: —\nHeat: —\nStatus: waiting",
    ["Filtro e selecao"]="Filters and selection",
    ["Coletar automaticamente"]="Auto collect",
    ["Entregar automaticamente"]="Auto deliver",
    ["Batatas"]="Potatoes",
    ["Qualquer"]="Any",
    ["Diamante"]="Diamond",
    ["Dourada"]="Golden",
    ["Escolha"]="Selection",
    ["Mais perto"]="Nearest",
    ["Aleatoria"]="Random",
    ["Coletar aboboras"]="Collect pumpkins",
    ["Incluir gemas da pilha"]="Collect gems from the pile",
    ["Priorizar gemas"]="Prioritize gems",
    ["Priorizar aboboras"]="Prioritize pumpkins",
    ["Priorizar maior valor"]="Prioritize higher value",
    ["Na selecao por proximidade, procura variantes valiosas quando sua identidade estiver disponivel."]="With Nearest selected, looks for valuable variants when the game identifies them.",
    ["Entregar por"]="Deliver by",
    ["Quantidade"]="Amount",
    ["Porcentagem"]="Percentage",
    ["Destino"]="Destination",
    ["Caixa"]="Crate",
    ["Automatica"]="Automatic",
    ["Entregar com a bolsa em"]="Deliver at bag capacity",
    ["Quantidade por entrega"]="Amount per delivery",
    ["Tenho bolsa infinita"]="I have an unlimited bag",
    ["Usa o lote configurado no planejamento. Esta opcao nao concede a mochila no jogo."]="Uses your configured delivery amount for planning.",
    ["Alcance de busca"]="Search range",
    ["Mesa e ferramentas"]="Table and tools",
    ["Alinhar a camera ao entrar na mesa"]="Align camera when entering the table",
    ["Modo de corte"]="Cutting mode",
    ["Rapido"]="Fast",
    ["Nativo"]="Native",
    ["Meta de tentativas por segundo"]="Target attempts per second",
    ["Multiplicador com ferramentas"]="Tool multiplier",
    ["Comprar no Auto Cut"]="Buy during Auto Cut",
    ["Compra ferramentas de corte usando o orcamento configurado."]="Buys cutting tools within your budget.",
    ["Girar cortador manual"]="Crank the manual cutter",
    ["Aciona a maquina quando estiver carregada e liberada pelo jogo."]="Runs the machine when it is loaded and ready.",
    ["Venda e retorno"]="Sell and return",
    ["Vende o estoque cortado e retoma a rotina. A proxima ferramenta tem prioridade apos a venda."]="Sells cut stock and resumes. Prioritizes the next tool after a sale.",
    ["Vender a partir de"]="Sell when stock reaches",
    [" batatas"]=" potatoes",
    ["Comprar ferramenta apos vender"]="Buy a tool after selling",
    ["Voltar para a mesa"]="Return to the table",
    ["Vender o restante no fim"]="Sell remaining stock at the end",
    ["Valvula de agua"]="Water valve",
    ["Confirma o resfriamento pela agua fluindo ou pela queda do calor."]="Confirms cooling when water flows or heat drops.",
    ["Tempo segurando a valvula"]="Valve hold time",
    ["Repetir duracao original se necessario"]="Retry with the original hold time if needed",
    ["Se o toque curto nao resfriar, permite uma tentativa com o tempo original do jogo."]="Retries with the default game duration if a short hold fails.",
    ["Comecar a resfriar em"]="Start cooling at",
    ["Considerar frio em"]="Stop cooling at",
    ["Espera entre tentativas"]="Retry delay",
    ["Voltar ao ponto anterior"]="Return to the previous position",
    ["MELHORIAS EM TEMPO REAL"]="LIVE UPGRADES",
    ["Niveis confirmados pelo jogo. Consultar esta lista mantem a rotina em execucao."]="The game confirms these levels. Routines continue while you view this list.",
    ["Aguardando niveis..."]="Waiting for upgrade levels…",
    ["Velocidade"]="Speed",
    ["Coleta continua"]="Continuous collection",
    ["Carga"]="Charge",
    ["Resfriamento"]="Cooling",
    ["Valor da batata"]="Potato value",
    ["Velocidade a pe"]="Walk speed",
    ["Sorte"]="Luck",
    ["Capacidade"]="Capacity",
    ["Garra"]="Grip",
    ["Voo"]="Flight",
    ["MELHORAR"]="UPGRADE",
    ["Orcamento"]="Budget",
    ["Compras automaticas usam somente dinheiro comum do jogo. Reserva e limite por compra sao aplicados antes de cada acao."]="Automatic purchases use regular game cash and respect your reserve and spending cap.",
    ["Ferramentas"]="Tools",
    ["Melhorias"]="Upgrades",
    ["Bolsas e capacidade"]="Bags and capacity",
    ["Tenho mochila infinita"]="I have an unlimited bag",
    ["Impede compras de mochilas e usa o limite de entrega por quantidade."]="Skips bag purchases and uses the delivery amount.",
    ["Comprar cortadores manual e automatico"]="Buy manual and automatic cutters",
    ["Depois de maximizar as duas melhorias de dinamite. O manual nao recebe melhorias."]="Buys after both dynamite upgrades are maxed. Upgrades apply to the automatic cutter.",
    ["Lote para o automatico no maximo"]="Batch size for the maxed automatic cutter",
    ["Corrigir desfoque ao fechar menus"]="Fix blur after closing menus",
    ["Guardar para a proxima arma"]="Save for the next tool",
    ["Oferecer compra do drone a cada partida"]="Offer a drone purchase each match",
    ["Solicita confirmacao de 80 gemas; a oferta real tambem precisa confirmar esse valor."]="Asks you to confirm when the game offers the drone for 80 gems.",
    ["Melhorar drone comprado"]="Upgrade an owned drone",
    ["Limpar antes de cortar"]="Clear the pile before cutting",
    ["Somente com dinamite, pa, automatico e sugador no maximo. Antes disso, continua usando a faca para gerar renda."]="Requires maxed dynamite, shovel, automatic cutter and vacuum. Cuts with a knife for income until then.",
    ["Melhorar maquinas compradas"]="Upgrade owned machines",
    ["Melhorias gerais do capitulo 2"]="General Chapter II upgrades",
    ["Reserva de dinheiro"]="Cash reserve",
    ["Limite por compra (0 = livre)"]="Spending cap per purchase (0 = unlimited)",
    ["Escolha uma missao com progresso do jogo. O Auto Progress prioriza a tarefa e volta ao ciclo normal apos a confirmacao."]="Select a quest with game progress. Auto Progress prioritizes it and returns to the usual cycle after completion.",
    ["Abra a tela de missoes ou do passe do jogo para carregar a lista."]="Open the game's quests or pass screen to load the list.",
    ["Tela e toque"]="Display and touch",
    ["Arraste o topo para mover o painel. O botao A tambem pode ser arrastado. Use o canto inferior para redimensionar."]="Drag the top to move the panel or drag the A button. Use the bottom corner to resize.",
    ["Escala da interface"]="Interface scale",
    ["Largura do painel"]="Panel width",
    ["Altura do painel"]="Panel height",
    ["Tamanho do botao A"]="A button size",
    ["CENTRALIZAR E RESTAURAR TAMANHO"]="CENTER AND RESET SIZE",
    ["Camera"]="Camera",
    ["Forcar terceira pessoa"]="Force third person",
    ["Distancia maxima da camera"]="Maximum camera distance",
    ["Apontar automaticamente para a valvula"]="Aim at the valve automatically",
    ["Alinha a camera durante a interacao e restaura a visao ao terminar."]="Aligns the camera during interaction and restores the view afterward.",
    ["Execucao"]="Routines",
    ["Atua por evento de inatividade enquanto alguma rotina estiver ativa; pausa junto das rotinas."]="Responds to idle events while a routine is running.",
    ["Saida automatica manual"]="Auto exit",
    ["Usa a chave real para procurar a saida. O OP e o Auto Progress ja coordenam sua propria saida."]="Uses the key to find the exit. OP and Auto Progress handle the exit automatically.",
    ["Pular cena final"]="Skip ending scene",
    ["Usa o botao Pular quando disponivel. Apos a fuga confirmada, tambem tenta a funcao Cancel da cena."]="Uses the Skip button if available and attempts to end the scene after escape is confirmed.",
    ["Liberar camera apos vitoria"]="Restore camera after winning",
    ["Se a cena nao oferecer um botao, tenta devolver a visao ao personagem depois da confirmacao da fuga."]="Returns the view to your character after escape when the scene has no skip button.",
    ["Ritmo de limpeza"]="Pile clearing pace",
    ["Com equipamentos no maximo, prefere alvos proximos e evita desvios por raridades."]="With maxed equipment, favors nearby targets and avoids detours for rare ones.",
    ["Reduzir intervalo local da entrega"]="Reduce delivery interval",
    ["Acelera entregas e restaura o intervalo normal se a entrega falhar."]="Speeds up deliveries when supported and restores normal timing if delivery fails.",
    ["Intervalo local por colocacao"]="Interval per placement",
    ["Deslocamento"]="Movement",
    ["Teleporte"]="Teleport",
    ["Caminhar"]="Walk",
    ["Ritmo"]="Pace",
    ["Coletas por rodada"]="Picks per cycle",
    ["Coletar ao redor sem mirar"]="Collect nearby without aiming",
    ["Usa IDs dos alvos proximos; teleporta quando necessario. O servidor ainda valida o alcance."]="Collects nearby targets within the game's reach.",
    ["Raio local da coleta"]="Collection radius",
    ["Ferramenta de coleta"]="Collection tool",
    ["Melhor adquirida"]="Best owned tool",
    ["Mao"]="Hand",
    ["Pa"]="Shovel",
    ["Especiais sem modelo visivel"]="Special targets outside view",
    ["Usa os IDs e as posicoes atuais do jogo. Tentativas recusadas recebem uma pausa; recompensas dependem do servidor."]="Uses current game positions and waits before retrying a rejected target.",
    ["Recuperar etapas automaticamente"]="Recover routines automatically",
    ["Falhas de coleta e entrega adiam somente a etapa afetada."]="Delays only the step that failed to collect or deliver.",
    ["RESTAURAR CONTROLES DO JOGO"]="RESTORE GAME CONTROLS",
    ["Intervalo entre acoes"]="Action interval",
    ["Tempo limite de acao"]="Action timeout",
    ["Tempo limite de trajeto"]="Travel timeout",
    ["Dinamite automatica"]="Auto dynamite",
    ["Atua quando a ferramenta foi adquirida e o protocolo de lancamento foi identificado."]="Runs when the tool is owned and ready to throw.",
    ["Intervalo acelerado"]="Faster interval",
    ["Reduz a espera local; tentativas sem confirmacao recebem um intervalo maior."]="Shortens the local wait and backs off when a throw is unconfirmed.",
    ["Intervalo da dinamite"]="Dynamite interval",
    ["Pausar com movimento manual"]="Pause on manual movement",
    ["Notificacoes"]="Notifications",
    ["Atalhos"]="Shortcuts",
    ["Entregar"]="Deliver",
    ["Aboboras"]="Pumpkins",
    ["Bolsas"]="Bags",
    ["Cortador manual"]="Manual cutter",
    ["Vender"]="Sell",
    ["Dinamite"]="Dynamite",
    ["Painel"]="Panel",
    ["OP Alto Zerar"]="OP Fast Finish",
    ["Giro %d confirmado: %s"]="Roll %d confirmed: %s",
    ["Conexão perdida (%s). Tentando voltar ao lobby…"]="Connection lost (%s). Rejoining the lobby…",
    ["Essa tecla ja esta em uso por %s."]="That key is already assigned to %s.",
    ["Rotinas pausadas apos tres falhas em %s."]="Routines paused after three failures while %s.",
    ["Ciclo completo com prioridade para limpar a montanha."]="Complete run that prioritizes clearing the pile.",
    ["Sugador MAX inicia coleta continua ate acabar a montanha. Entrega ao encher se a bolsa for finita. O OP coordena seus servicos sem ligar os interruptores das rotinas manuais."]="A maxed vacuum collects continuously until the pile is clear. Finite bags are delivered when full.",
    ["Vender lotes maiores no OP"]="Sell larger OP batches",
    ["Usa lotes de 50, 90 ou 150 conforme o saldo que falta para a proxima compra, respeitando o limite de venda."]="Uses batches of 50, 90 or 150 based on the cash needed for the next purchase.",
    ["Retentar mesa e venda mais cedo"]="Retry tables and sales sooner",
    ["Quando o prompt e instantaneo, tenta outra forma de interacao mais cedo. O resultado ainda depende da confirmacao do jogo."]="Retries an instant interaction sooner if the game has yet to confirm it.",
    ["Deseja mesmo comprar o drone?\nPreco: 80 gemas"]="Buy the drone?\nPrice: 80 gems",
    ["COMPRAR: 80 GEMAS"]="BUY: 80 GEMS",
    ["AGORA NAO"]="NOT NOW",
    ["NAO ADQUIRIDO"]="NOT OWNED",
    ["MAX  /  PRONTO"]="MAX  /  READY",
    ["CONCLUIDA"]="DONE",
    ["PRIORIZANDO"]="PRIORITIZED",
    ["SELECIONAR"]="SELECT",
    ["Validade nao informada"]="Expiry unknown",
    ["Expirada"]="Expired",
    ["CENTRAL DO LOBBY"]="LOBBY CENTER",
    ["Pronto para configurar a fila."]="Ready to configure the queue.",
    ["Configurar"]="Setup",
    ["Configurar capítulo"]="Set up a chapter",
    ["Escolha um capítulo para ver as opções da fila."]="Choose a chapter to view its queue settings.",
    ["Capítulos"]="Chapters",
    ["Capítulo I"]="Chapter I",
    ["Capítulo II"]="Chapter II",
    ["Capítulo III"]="Chapter III",
    ["EM BREVE"]="COMING SOON",
    ["Fila do Capítulo II"]="Chapter II queue",
    ["As escolhas são reaplicadas na próxima rodada."]="Settings carry over to the next round.",
    ["ENTRAR + OP"]="JOIN + OP",
    ["CICLO COMPLETO"]="FULL LOOP",
    ["JOGADORES"]="PLAYERS",
    ["AMIGOS"]="FRIENDS",
    ["INTRODUÇÃO"]="INTRO",
    ["CENA FINAL"]="ENDING",
    ["REPETIR"]="REPEAT",
    ["AUTO MELHORIA"]="AUTO UPGRADE",
    ["PARAR"]="STOP",
    ["Recursos do lobby"]="Lobby resources",
    ["Lendo o saldo do jogo…"]="Reading your game balance…",
    ["Caixas"]="Crates",
    ["Caixa do evento"]="Event crate",
    ["O custo é de 80 abóboras por caixa. Escolha o tamanho do lote."]="Each crate costs 80 pumpkins. Choose your batch size.",
    ["Saldo de abóboras"]="Pumpkin balance",
    ["Aguardando o jogo…"]="Waiting for the game…",
    ["AUTO CAIXAS"]="AUTO CRATES",
    ["ABRIR LOTE"]="OPEN BATCH",
    ["Alvo de classe"]="Class target",
    ["Selecione um cartão. A rolagem para quando o jogo confirma a classe."]="Select a card. Rolls stop when the game confirms that class.",
    ["Abra Classes no jogo para carregar o catálogo."]="Open Classes in the game to load the catalog.",
    ["Classe atual"]="Current class",
    ["□   USAR GEMAS PARA GIRAR"]="□   USE GEMS TO ROLL",
    ["✓   USAR GEMAS PARA GIRAR"]="✓   USE GEMS TO ROLL",
    ["GIRAR ATÉ O ALVO"]="ROLL UNTIL TARGET",
    ["SELECIONAR MAIS RARA"]="SELECT RAREST",
    ["JOGADORES  ·  "]="PLAYERS  ·  ",
    ["SÓ AMIGOS  ·  SIM"]="FRIENDS ONLY  ·  YES",
    ["SÓ AMIGOS  ·  NÃO"]="FRIENDS ONLY  ·  NO",
    ["INTRO  ·  PULAR"]="INTRO  ·  SKIP",
    ["INTRO  ·  VER"]="INTRO  ·  WATCH",
    ["FINAL  ·  PULAR"]="ENDING  ·  SKIP",
    ["FINAL  ·  VER"]="ENDING  ·  WATCH",
    ["REPETIR  ·  SIM"]="REPEAT  ·  YES",
    ["REPETIR  ·  NÃO"]="REPEAT  ·  NO",
    ["MELHORIAS  ·  ON"]="UPGRADES  ·  ON",
    ["MELHORIAS  ·  OFF"]="UPGRADES  ·  OFF",
    ["AUTO CAIXAS  ·  ON"]="AUTO CRATES  ·  ON",
    ["AUTO CAIXAS  ·  OFF"]="AUTO CRATES  ·  OFF",
    ["AGUARDANDO O JOGO"]="WAITING FOR THE GAME",
    ["PARAR GIROS"]="STOP ROLLING",
    ["Abóboras  %s   ·   Gemas  %s"]="Pumpkins  %s   ·   Gems  %s",
    ["%s no saldo   ·   %d caixa(s) = %d abóboras"]="%s available   ·   %d crate(s) = %d pumpkins",
    ["%s   ·   Giros grátis: %s"]="%s   ·   Free rolls: %s",
    ["%02d:%02d  /  SORTE %d%s"]="%02d:%02d  /  LUCK %d%s",
    ["  /  CONCLUIDO"]="  /  COMPLETE",
    ["indisponivel"]="unavailable",
    ["somente aviso do jogo"]="game alert only",
    ["coletar e cortar"]="collect and cut",
    ["limpeza"]="clearing",
    ["Aguardando rotina ou recurso disponivel"]="Waiting for a routine or resource",
    ["EQUIPE  /  LIDER OP"]="TEAM  /  OP LEADER",
    ["EQUIPE  /  COLETA E ENTREGA"]="TEAM  /  COLLECT AND DELIVER",
    ["EQUIPE  /  CORTE E VENDA"]="TEAM  /  CUT AND SELL",
    ["GRUPO MISTO  /  APOIO"]="MIXED GROUP  /  SUPPORT",
    ["CAPITULO II CONCLUIDO  /  ROTINAS PAUSADAS"]="CHAPTER II COMPLETE  /  ROUTINES PAUSED",
    ["LICENCA EXPIRADA  /  ROTINAS PAUSADAS"]="ACCESS EXPIRED  /  ROUTINES PAUSED",
    ["VITORIA CONFIRMADA / AGUARDANDO RESULTADO PARA VOLTAR"]="VICTORY CONFIRMED / WAITING FOR RESULTS",
    ["VITORIA CONFIRMADA / VOLTANDO AO LOBBY"]="VICTORY CONFIRMED / RETURNING TO LOBBY",
    ["%s  |  Bolsa: %s\nEntrega: %s  |  Cortadas: %s/%d\nMeta: %s\nCalor: %s  |  Gemas: %d\n%.1f cortadas/s | %s | vendas: %d"]="%s  |  Bag: %s\nDelivery: %s  |  Cut: %s/%d\nGoal: %s\nHeat: %s  |  Gems: %d\n%.1f cut/s | %s | sales: %d",
    ["Resfriando"]="Cooling",
    ["Coletando"]="Collecting",
    ["Entregando"]="Delivering",
    ["Cortando"]="Cutting",
    ["Indo para a mesa"]="Heading to the table",
    ["Comprando"]="Buying",
    ["Girando cortador"]="Cranking cutter",
    ["Indexando e selecionando"]="Finding targets",
    ["Abastecendo a mesa"]="Restocking the table",
    ["Vendendo"]="Selling",
    ["Retornando a mesa"]="Returning to the table",
    ["Lancando dinamite"]="Throwing dynamite",
    ["Indo para a saida com a chave"]="Heading to the exit with the key",
    ["Comprando drone"]="Buying drone",
    ["Rotina pausada."]="Routine paused.",
    ["Rotinas pausadas."]="Routines paused.",
    ["Já há uma rotina de lobby em andamento."]="A lobby routine is already running.",
    ["O jogo interrompeu a rotina do lobby."]="The game interrupted the lobby routine.",
    ["Ciclo do lobby parado."]="Lobby loop stopped.",
    ["Retomada cancelada. O jogo já solicitou o teleporte."]="Resume canceled. The game has already requested teleport.",
    ["As chances ainda não foram carregadas pelo jogo."]="The game has not loaded the odds yet.",
    ["Escolha uma classe na barra."]="Choose a class from the list.",
    ["O Roblox recusou o teleporte. Saia da fila atual e tente novamente."]="Roblox declined teleport. Leave the current queue and try again.",
    ["Pare a rotina de lobby antes de entrar na fila."]="Stop the lobby routine before joining a queue.",
    ["Abrindo o lote antes de entrar na fila…"]="Opening the batch before joining the queue…",
    ["Juntando abóboras para o lote: %d/%d."]="Saving pumpkins for the batch: %d/%d.",
    ["Localizando a fila do Capítulo II…"]="Finding the Chapter II queue…",
    ["Nenhuma área de fila livre. Entre em uma área vazia manualmente."]="No open queue area. Enter an empty area manually.",
    ["DEPLOY acionado. Aguardando o jogo…"]="Deploy requested. Waiting for the game…",
    ["Falha no lobby. Tente novamente."]="The lobby routine failed. Try again.",
    ["O Roblox não confirmou a reconexão."]="Roblox did not confirm the reconnect.",
    ["O estado dos giros ainda não está disponível."]="Roll state is not available yet.",
    ["Rolagem pausada."]="Rolling paused.",
    ["O giro com preço em gemas não foi identificado. Abra Classes no jogo."]="The gem roll offer is unavailable. Open Classes in the game.",
    ["O giro gratuito não foi identificado. Abra Classes no jogo."]="The free roll is unavailable. Open Classes in the game.",
    ["Aguardando o saldo de gemas do jogo."]="Waiting for the game to report your gem balance.",
    ["Sem giros gratuitos."]="No free rolls left.",
    ["Gemas insuficientes para o próximo giro."]="You do not have enough gems for the next roll.",
    ["O giro foi debitado, mas o próximo ainda não foi liberado."]="The last roll was charged. Waiting for the next roll to become available.",
    ["O jogo não confirmou o débito. Rolagem parada."]="The game did not confirm the charge. Rolling stopped.",
    ["Abra as melhorias do lobby uma vez para carregar precos e gemas."]="Open lobby upgrades once to load prices and your gem balance.",
    ["Sem melhoria acessivel com as gemas atuais."]="No upgrades are affordable with your current gems.",
    ["O jogo nao confirmou a melhoria de lobby."]="The game did not confirm the lobby upgrade.",
    ["Abertura cancelada."]="Opening canceled.",
    ["Falha ao enviar a abertura de evento."]="Could not request the event crate opening.",
    ["A oferta de 80 abóboras não pôde ser confirmada."]="The offer for 80 pumpkins could not be confirmed.",
    ["Lote inválido."]="Invalid batch.",
    ["O jogo ainda não informou o saldo de abóboras."]="The game has yet to report your pumpkin balance.",
    ["Saldo insuficiente para o lote. %d de %d abóboras."]="Not enough pumpkins for the batch. %d of %d pumpkins.",
    ["Lote pausado."]="Batch paused.",
    ["A caixa anterior ainda está aberta."]="The previous crate is still open.",
    ["Saldo mudou durante o lote."]="Your balance changed during the batch.",
    ["Abrindo caixa %d/%d…"]="Opening crate %d/%d…",
    ["O jogo não mostrou a abertura da caixa. Lote interrompido."]="The game did not show the crate opening. Batch stopped.",
    ["O jogo não confirmou o débito e o resultado. Lote interrompido."]="The game did not confirm the charge and result. Batch stopped.",
    ["Caixa registrada, mas a tela da abertura ainda está ativa."]="The crate was confirmed, but its opening screen is still visible.",
    ["%d caixa(s) confirmada(s)."]="%d crate(s) confirmed.",
    ["Saia da fila atual para selecionar o Capitulo II."]="Leave the current queue to select Chapter II.",
    ["O jogo nao abriu o seletor do capitulo."]="The game did not open the chapter selector.",
    ["O jogo nao abriu a configuracao da fila."]="The game did not open queue settings.",
    ["O botao DEPLOY nao esta disponivel."]="The Deploy button is unavailable.",
    ["DEPLOY acionado. O jogo nao confirmou o teleporte."]="Deploy requested. The game did not confirm teleport.",
    ["Transferencia confirmada. Carregando OP no destino."]="Transfer confirmed. OP will start on arrival.",
    ["Transferencia confirmada. Abra o hub ao chegar. "]="Transfer confirmed. Open the hub on arrival. ",
    ["Cancelado."]="Canceled.",
    ["A licenca expirou."]="Your access expired.",
    ["Licenca expirada. Valide uma key ativa para continuar."]="Access expired. Enter a valid key to continue.",
    ["Licenca expirada; rotinas pausadas."]="Access expired. Routines paused.",
    ["Capitulo 2 concluido; rotinas pausadas."]="Chapter II complete. Routines paused.",
    ["Rotina pausada. Reative para tentar novamente."]="Routine paused. Turn it back on to retry.",
    ["Atalho cancelado."]="Shortcut canceled.",
    ["Atalho atualizado."]="Shortcut updated.",
    ["Pressione uma tecla para o atalho; Esc cancela e Backspace remove."]="Press a key to bind. Esc cancels and Backspace clears.",
    ["Use os controles por toque; atalhos sao opcionais para teclado."]="Use touch controls. Keyboard shortcuts are optional.",
    ["Edicao de atalho cancelada."]="Shortcut editing canceled.",
    ["Pausado pelo painel."]="Paused from the panel.",
    ["Pausado pelo atalho."]="Paused by shortcut.",
    ["Pausado por entrada manual de movimento."]="Paused by manual movement.",
    ["Personagem recarregado; rotinas pausadas."]="Character respawned. Routines paused.",
    ["O resfriamento faz parte do Auto Progress. Pause o ciclo para desliga-lo."]="Cooling is part of Auto Progress. Pause the cycle to turn it off.",
    ["Uma melhoria ja esta na fila."]="An upgrade is already queued.",
    ["Prioridade de missao removida."]="Quest priority cleared.",
    ["O jogo ja confirmou essa missao."]="The game has already confirmed this quest.",
    ["Objetivo sem rota automatica confirmada."]="This objective requires manual play.",
    ["Missao concluida. Voltando ao Auto Progress normal."]="Quest complete. Resuming normal Auto Progress.",
    ["Melhoria confirmada."]="Upgrade confirmed.",
    ["Melhoria nao confirmada."]="Upgrade unconfirmed.",
    ["O Roblox recusou a volta ao lobby. Retorne manualmente."]="Roblox declined the return to the lobby. Return manually.",
    ["O relatorio final nao chegou. Volte ao lobby manualmente."]="The game did not show the results. Return to the lobby manually.",
    ["A volta automatica falhou. Retorne ao lobby pelo jogo."]="The automatic return failed. Use the game's controls to return.",
    ["O Roblox nao confirmou a volta ao lobby."]="Roblox did not confirm the return to the lobby.",
    ["O Roblox nao confirmou a reconexao."]="Roblox did not confirm the reconnect.",
    ["O hub nao encontrou o lobby nem a area de partida. Aguarde o mapa e execute novamente."]="The hub could not find the lobby or match. Wait for the map and launch it again.",
    ["Falha de execucao; controles restaurados."]="The routine failed. Controls restored.",
    ["Alvo selecionado: "]="Target selected: ",
    ["Classe encontrada: "]="Class found: ",
    ["Sem giros gratuitos. Última classe: "]="No free rolls left. Last class: ",
    ["Melhoria de lobby confirmada: "]="Lobby upgrade confirmed: ",
    ["Prioridade: "]="Priority: ",
    ["Solicitada melhoria "]="Upgrade requested for ",
    ["O Roblox recusou a reconexao."]="Roblox declined the reconnect.",
    ["Limite de reconexoes atingido. Abra o jogo novamente."]="Reconnect limit reached. Reopen the game.",
}
local function T(value)
    return hub.language=="en" and type(value)=="string" and strings[value] or value
end

local Lobby = (function()
-- Luau · potato_lobby.luau · Chapter II native lobby entry
local Lobby={}

local function get(root,...)
    for index=1,select("#",...) do
        if not root then return nil end
        local name=select(index,...)
        root=root:FindFirstChild(name)
    end
    return root
end

function Lobby.stage(world)
    local zones=get(world,"Map","Zones","MatchmakingZones")
    local stations=get(world,"Map","PeelingMachines")
    if stations or not zones and world:FindFirstChild("PotatoPile") then return "chapter" end
    if zones then return "lobby" end
    return nil
end

function Lobby.deploy(io,options)
    if not io.waitFor("chapter",1) then
        if io.ready("setup") then return false,"Saia da fila atual para selecionar o Capitulo II." end
        local moved,reason=io.approach()
        if not moved then return false,reason end
        if not io.waitFor("chapter",5) then return false,"O jogo nao abriu o seletor do capitulo." end
    end
    local clicked,reason=io.click("chapter")
    if not clicked then return false,reason end
    if not io.waitFor("setup",5) then return false,"O jogo nao abriu a configuracao da fila." end
    clicked,reason=io.click("size")
    if not clicked then return false,reason end
    for _,entry in ipairs({{"friends",options.friends},{"skip",options.skip}}) do
        local id,desired=entry[1],entry[2]
        local current=io.flag(id)
        if current==nil then return false,"O estado da opcao "..id.." nao foi encontrado." end
        if current~=desired then
            clicked,reason=io.click(id)
            if not clicked then return false,reason end
            if not io.waitFor(id,2,desired) then return false,"O jogo nao confirmou a opcao "..id.."." end
        end
    end
    if not io.ready("deploy") then return false,"O botao DEPLOY nao esta disponivel." end
    local resumable,resumeReason=io.arm(options)
    clicked,reason=io.click("deploy")
    if not clicked then return false,reason end
    if not io.waitFor("transfer",25) then return false,"DEPLOY acionado. O jogo nao confirmou o teleporte." end
    return true,resumable and "Transferencia confirmada. Carregando OP no destino."
        or ("Transferencia confirmada. Abra o hub ao chegar. "..tostring(resumeReason or ""))
end

local function freePad(services,player)
    local world=services.Workspace
    local folder=get(world,"Map","Zones","MatchmakingZones")
    local root=get(player.Character,"HumanoidRootPart")
    if not folder or not root then return nil end
    local best,distance=nil,math.huge
    for _,zone in ipairs(folder:GetChildren()) do
        local cube=zone:FindFirstChild("Cube")
        if not cube or not cube:IsA("BasePart") then continue end
        local pad=get(zone,"Model","Part")
        local status=zone:GetAttribute("QueueState") or pad and pad:GetAttribute("QueueState") or cube:GetAttribute("QueueState")
        local clear=status==nil or status=="Empty"
        if clear then
            for _,other in ipairs(services.Players:GetPlayers()) do
                local otherRoot=other~=player and get(other.Character,"HumanoidRootPart")
                if otherRoot then
                    local offset=cube.CFrame:PointToObjectSpace(otherRoot.Position)
                    local half=cube.Size/2
                    if math.abs(offset.X)<=half.X and math.abs(offset.Y)<=half.Y+4 and math.abs(offset.Z)<=half.Z then
                        clear=false
                        break
                    end
                end
            end
        end
        local delta=(cube.Position-root.Position).Magnitude
        if clear and delta<distance then best,distance=cube,delta end
    end
    return best
end

function Lobby.cratePlan(options,balance)
    if not options.autoCrates then return "disabled",0 end
    local cost=options.crateCount*80
    if type(balance)~="number" then return "unknown",cost end
    return balance>=cost and "ready" or "saving",cost
end

function Lobby.open(services,lifecycle,gate,bridge,nav,handoff,normalize,resume,autoStart,runtime)
    local player=services.Players.LocalPlayer
    local playerGui=player:WaitForChild("PlayerGui")
    local options=normalize(resume or runtime.settings.settings)
    local transferred,busy=false,false
    local token,featureToken=0,0
    local feature=nil
    local old=playerGui:FindFirstChild("EvolvyChapter2Lobby")
    if old then old:Destroy() end
    local gui=Instance.new("ScreenGui")
    gui.Name="EvolvyChapter2Lobby" gui.ResetOnSpawn=false gui.DisplayOrder=10001 gui.Parent=playerGui
    lifecycle.add(function() gui:Destroy() end)
    local callbacks={decorateLauncher=hub.decorateLauncher}
    local view=runtime.view(services,lifecycle,gui,callbacks)
    local function refresh() view.options(options,busy,feature=="upgrade",feature=="roll") end
    local function persist() runtime.settings.save(normalize(options)) end
    local function stopFeature()
        featureToken+=1 feature=nil refresh()
    end
    local function startFeature(kind,fn)
        if busy or gate.expired() then return end
        if feature then
            if feature==kind then stopFeature() view.status("Rotina pausada.")
            else view.status("Já há uma rotina de lobby em andamento.") end
            return
        end
        featureToken+=1 feature=kind refresh()

        local current=featureToken
        task.spawn(function()
            local function valid() return lifecycle.alive() and current==featureToken and not gate.expired() and not busy end
            local ok,success,message=pcall(fn,valid)
            if not valid() then return end

            stopFeature()
            view.status(ok and tostring(message or success) or "O jogo interrompeu a rotina do lobby.")
        end)
    end
    local function stop()
        stopFeature()
        token+=1 busy=false nav.stop() handoff.clear()

        refresh()
        view.status(transferred and "Retomada cancelada. O jogo já solicitou o teleporte." or "Ciclo do lobby parado.")
    end
    callbacks.stop=stop
    callbacks.language=runtime.language
    callbacks.size=function()
        if not busy then options.size=options.size%4+1 persist() refresh() end
    end
    for _,key in ipairs({"friends","skip","skipOutro","repeatRun","autoCrates"}) do
        callbacks[key]=function()
            if not busy then options[key]=not options[key] persist() refresh() end
        end
    end
    callbacks.crateCount=function(count,save)
        if busy or feature=="crate" then return end
        options.crateCount=count
        if save then persist() end
        refresh()
        view.resources(runtime.features.pumpkins(),count,runtime.features.gems())
    end
    callbacks.launcher=function(x,y)
        options.launcherX,options.launcherY=x,y
        persist()
    end
    callbacks.openBatch=function()
        local count=options.crateCount
        startFeature("crate",function(valid)
            return runtime.features.openBatch(valid,count,view.status)
        end)
    end
    callbacks.autoImprove=function()
        startFeature("upgrade",function(valid)
            while valid() do
                local ok,message=runtime.features.upgrade(valid)
                view.status(message)
                task.wait(ok and 1 or 4)
            end
        end)
    end
    local function chooseTarget(id)
        if busy or feature=="roll" then return end
        for _,entry in ipairs(runtime.features.catalog()) do
            if tostring(entry.id)==id then
                options.classTarget=id
                persist()
                view.status(T("Alvo selecionado: ")..entry.name..".")
                return entry
            end
        end
    end
    callbacks.target=chooseTarget
    callbacks.rarest=function()
        local entry=runtime.rarest(runtime.features.catalog())
        if entry then chooseTarget(tostring(entry.id))
        else view.status("As chances ainda não foram carregadas pelo jogo.") end
    end
    callbacks.roll=function(useGems)
        startFeature("roll",function(valid)
            local selected=nil
            for _,entry in ipairs(runtime.features.catalog()) do
                if tostring(entry.id)==options.classTarget then selected=entry break end
            end
            if not selected then return false,"Escolha uma classe na barra." end
            return runtime.features.roll(valid,selected,useGems,view.status)
        end)
    end
    local transferConnection=player.OnTeleport:Connect(function(state,place)
        if place==game.PlaceId and (state.Name=="RequestedFromServer" or state.Name=="Started" or state.Name=="InProgress") then
            transferred=true

        end
    end)
    lifecycle.add(function() transferConnection:Disconnect() end)
    local failedConnection=services.TeleportService.TeleportInitFailed:Connect(function(who,_,_,place)
        if who~=player or place~=game.PlaceId or not busy then return end
        transferred=false
        stop()
        view.status("O Roblox recusou o teleporte. Saia da fila atual e tente novamente.")
    end)
    lifecycle.add(function() failedConnection:Disconnect() end)

    local function start()
        if busy or transferred or gate.expired() then return end
        if feature then view.status("Pare a rotina de lobby antes de entrar na fila.") return end
        busy=true token+=1 refresh()
        local run=token
        local selected=normalize(options)

        local function valid() return lifecycle.alive() and token==run and not gate.expired() end
        local function control(id)
            local queue=playerGui:FindFirstChild("Queue")
            if id=="chapter" then return get(queue,"ChapterSelect","Content","Chapters","CHAPTER 2") end
            local content=get(queue,"Setup","Content")
            if id=="size" then return get(content,"Sizes",tostring(selected.size)) end
            if id=="friends" then return get(content,"Options","FriendsOnly") end
            if id=="skip" then return get(content,"Options","SkipIntro") end
            if id=="deploy" or id=="setup" then return get(content,"CreateHolder","Create") end
        end
        local function flag(id)
            local button=control(id)
            local check=button and button:FindFirstChild("Check",true)
            if check and check:IsA("GuiObject") then return check.Visible end
        end
        local function ready(id)
            if id=="transfer" then return transferred end
            local button=control(id)
            return button and button:IsA("GuiButton") and button.Active and bridge.visible(button)
        end
        local function waitFor(id,timeout,expected)
            local deadline=os.clock()+timeout
            while valid() and os.clock()<deadline do
                if expected~=nil then
                    if flag(id)==expected then return true end
                elseif ready(id) then return true end
                task.wait(0.1)
            end
            return false
        end
        task.spawn(function()
            local ran,success,message=pcall(function()
                if selected.autoCrates then
                    local balance=runtime.features.pumpkins()
                    local deadline=os.clock()+3
                    while balance==nil and valid() and os.clock()<deadline do
                        task.wait(0.25)
                        balance=runtime.features.pumpkins()
                    end
                    local plan,cost=Lobby.cratePlan(selected,balance)

                    if plan=="ready" then
                        view.status("Abrindo o lote antes de entrar na fila…")
                        local ok,why=runtime.features.openBatch(valid,selected.crateCount,view.status)
                        if not ok then return false,why end
                    elseif plan=="saving" then
                        view.status(string.format(T("Juntando abóboras para o lote: %d/%d."),balance,cost))
                    end
                end
                if not valid() then return false,"Cancelado." end
                view.status("Localizando a fila do Capítulo II…")
                return Lobby.deploy({
                    ready=ready,flag=flag,waitFor=waitFor,
                    approach=function()
                        local pad=freePad(services,player)
                        if not pad then return false,"Nenhuma área de fila livre. Entre em uma área vazia manualmente." end

                        local floor=pad.Position-Vector3.new(0,pad.Size.Y/2,0)
                        local moved,why=nav.goTo(floor,function() return valid() and not ready("chapter") end)
                        if ready("chapter") then return true end
                        return moved,why
                    end,
                    click=function(id)
                        if not valid() then return false,"Cancelado." end
                        if id=="deploy" then view.status("DEPLOY acionado. Aguardando o jogo…") end
                        local ok,why=bridge.activate(control(id))

                        return ok,why
                    end,
                    arm=function(settings)
                        if not valid() then return false,"Cancelado." end
                        local ok,why=handoff.arm("chapter",settings)

                        return ok,why
                    end,
                },selected)
            end)
            if not valid() then return end
            if not ran or not success then

                handoff.clear()
                busy=false refresh()
            end
            view.status(ran and tostring(message) or "Falha no lobby. Tente novamente.")
        end)
    end
    callbacks.launch=start
    callbacks.cycle=function()
        if busy or transferred then return end
        options.repeatRun=true
        options.reconnectCount=0
        persist()
        refresh()
        start()
    end
    runtime.watch(function() return busy and options.repeatRun and not transferred end,function(code)
        token+=1

        nav.stop()
        view.status(string.format(T("Conexão perdida (%s). Tentando voltar ao lobby…"),code))
        local ok,why=runtime.reconnect(options)
        if not ok then busy=false refresh() view.status(why) return end
        local pending=token
        task.delay(25,function()
            if lifecycle.alive() and token==pending and busy and not transferred then
                stop()
                view.status("O Roblox não confirmou a reconexão.")
            end
        end)
    end)
    runtime.idle(function() return busy or feature~=nil end)
    refresh()
    task.spawn(function()
        while lifecycle.alive() do
            view.resources(runtime.features.pumpkins(),options.crateCount,runtime.features.gems())
            if view.showingClasses() then
                local current,free=runtime.features.classState()
                view.classes(runtime.features.catalog(),options.classTarget,current,free)
            end
            task.wait(1.2)
        end
    end)
    if autoStart then task.defer(start) end
end
return Lobby

end)()

local LobbyExtras = (function()
-- Luau · potato_lobby_extras.luau · native lobby offers and confirmed class rolls
local Extras={}
Extras.CRATE_COST=80

local function get(root,...)
    for index=1,select("#",...) do
        if not root then return nil end
        local name=select(index,...)
        root=root:FindFirstChild(name)
    end
    return root
end

function Extras.uniqueButton(root,...)
    local matches=root and {root} or {}
    for index=1,select("#",...) do
        local name=select(index,...)
        local nextMatches={}
        for _,parent in ipairs(matches) do
            for _,child in ipairs(parent:GetChildren()) do
                if child.Name==name then table.insert(nextMatches,child) end
            end
        end
        matches=nextMatches
        if #matches==0 then return nil end
    end
    if #matches==1 and matches[1]:IsA("GuiButton") and matches[1].Active then return matches[1] end
end

local function norm(value)
    return type(value)=="string" and value:lower():gsub("[^%w]","") or ""
end
local nonClasses={
    ["2xluck"]=true,["luck2x"]=true,["x2luck"]=true,doubleluck=true,["2xclassluck"]=true,
    fastclassspin=true,fastclassspins=true,stopat=true,classstopat=true,stopatclass=true,
}
function Extras.isClass(value)
    return not nonClasses[norm(value)]
end
function Extras.matchesTarget(target,current)
    local key=norm(current)
    return key~="" and (key==norm(target.name) or key==norm(target.id))
end

function Extras.rarest(catalog)
    local best=nil
    for _,class in ipairs(catalog) do
        if type(class.chance)=="number" and class.chance>0
            and (not best or class.chance<best.chance) then best=class end
    end
    return best
end

function Extras.confirmCrate(before,after,rewardSeen)
    return type(before)=="number" and after==before-Extras.CRATE_COST and rewardSeen==true
end

function Extras.offerAmount(text)
    local plain=text:gsub("<.->","")
    local raw=plain:match("^%s*([%d][%d,.]*)%s*$") or plain:match("%f[%d]([%d][%d,.]*)%f[^%d]")
    if not raw then return nil end
    local tail=plain:gsub(raw:gsub("([^%w])","%%%1"),"",1)
    if tail:find("%d") or tail:find("%%") then return nil end
    if raw:find("[,.]") and not raw:match("^%d%d?%d?[,.]%d%d%d$") then return nil end
    local value=tonumber((raw:gsub("[,.]","")))
    return value and value>0 and value or nil
end

function Extras.crateAmount(text)
    local plain=text:gsub("<.->",""):upper()
    local quoted=plain:match("^%s*(%d+)%s+FREE%s+0%s*[X×]%s*$")
    return tonumber(quoted) or Extras.offerAmount(plain)
end

function Extras.singleSpinPrice(text)
    local plain=text:gsub("<.->",""):upper()
    if plain:match("%f[%d][2-9]%s+CLASS%s+SPINS?") or plain:match("%f[%d]%d%d+%s+CLASS%s+SPINS?") then return nil end
    return Extras.offerAmount((plain:gsub("%f[%d]1%s+CLASS%s+SPINS?","",1)))
end

function Extras.isGemOffer(label,price,nativeRow,gemMarker)
    return type(price)=="number" and price>0
        and (gemMarker==true or nativeRow==true and price==40 and label:match("^%s*40%s*$")~=nil)
end

function Extras.nativeRollPrice(text)
    local plain=text:gsub("<.->","")
    if not plain:match("^%s*[%d][%d,.]*%s*$") then return nil end
    return Extras.offerAmount(plain)
end

function Extras.confirmRoll(before,after,cost,spentGems,resultSeen)
    return type(before)=="number" and type(after)=="number" and resultSeen==true
        and (spentGems and type(cost)=="number" and cost>0 and after==before-cost
            or not spentGems and after==before-1)
end

function Extras.create(services,bridge,nav,lifecycle)
    local player=services.Players.LocalPlayer
    local gui=player:WaitForChild("PlayerGui")
    local storage=services.ReplicatedStorage
    local stateModule=nil
    local nativePackets=nil
    local classSignal=0
    local crateSignal=0
    local moduleCatalog={}
    local lastCrateRoute=nil
    local lastClassRoute=nil
    local function imageId(value)
        if type(value)=="number" and value>0 then return "rbxassetid://"..string.format("%.0f",value) end
        if type(value)~="string" or value=="" then return nil end
        if value:match("^%d+$") then return "rbxassetid://"..value end
        if value:match("^rbxasset") or value:match("^https?://") then return value end
    end
    local function imageObject(item)
        return item:IsA("ImageLabel") or item:IsA("ImageButton") or item:IsA("Decal")
    end
    local function load(module)
        if not module or not module:IsA("ModuleScript") then return nil end
        local ok,value=pcall(require,module)
        return ok and type(value)=="table" and value or nil
    end
    task.spawn(function()
        stateModule=load(get(storage,"Shared","PlayerStateShared"))
        local packets=load(get(storage,"Modules","Resources","Packets"))
        nativePackets=packets
        local event=packets and packets.ClassRolled and packets.ClassRolled.OnClientEvent
        if event and type(event.Connect)=="function" then
            local ok,connection=pcall(event.Connect,event,function() classSignal+=1 end)
            if ok and connection then lifecycle.add(function() connection:Disconnect() end) end
        end
        local opened=packets and packets.CrateOpened and packets.CrateOpened.OnClientEvent
        if opened and type(opened.Connect)=="function" then
            local ok,connection=pcall(opened.Connect,opened,function() crateSignal+=1 end)
            if ok and connection then lifecycle.add(function() connection:Disconnect() end) end
        end
        local definition=load(get(storage,"Shared","ClassShared"))
            or load(get(storage,"Shared","ClassesShared")) or load(get(storage,"Modules","Resources","Classes"))
            or load(get(storage,"Modules","Resources","ClassConfig"))
        local list=definition and (definition.Classes or definition.Definitions or definition.List or definition)
        for id,row in pairs(list or {}) do
            if type(row)=="table" then
                local title=row.Name or row.DisplayName or (type(id)=="string" and id)
                local chance=row.Chance or row.Weight or row.Probability
                if type(title)=="string" and (type(chance)=="number" or row.Id~=nil) then
                    local icon=imageId(row.Icon or row.IconId or row.Image or row.ImageId or row.Thumbnail or row.Texture)
                    table.insert(moduleCatalog,{name=title,id=row.Id or title,chance=chance,
                        icon=icon})
                end
            end
        end
    end)
    local function state()
        if not stateModule or type(stateModule.TryGetPlayerState)~="function" then return nil end
        local ok,value=pcall(stateModule.TryGetPlayerState,player)
        if ok and type(value)=="table" then return value end
        ok,value=pcall(stateModule.TryGetPlayerState,player.UserId)
        if ok and type(value)=="table" then return value end
    end
    local function number(value)
        return type(value)=="number" and value>=0 and value or nil
    end
    local function gems()
        local data=state()
        local save=data and data.SaveData
        local label=get(gui,"Diamonds","Counter","Value") or get(gui,"Gems","Counter","Value")
        local written=label and label:IsA("TextLabel") and label.Text:match("^%s*([%d,%.]+)%s*$")
        return number(data and (data.Diamonds or data.Gems)) or number(save and (save.Diamonds or save.Gems))
            or written and tonumber((written:gsub("[,.]",""))) or nil
    end
    local function pumpkins()
        local data=state()
        local save=data and data.SaveData
        local label=get(gui,"Pumpkins","Counter","Value") or get(gui,"Pumpkins","Value")
        local written=label and label:IsA("TextLabel") and label.Text:match("^%s*([%d,%.]+)%s*$")
        return number(save and save.Pumpkins) or number(data and data.Pumpkins)
            or written and tonumber((written:gsub("[,.]",""))) or nil
    end
    local function classState()
        local data=state()
        local save=data and data.SaveData
        if type(save)~="table" then return nil,nil end
        local active=save.ActiveClassSlot==2 and save.ClassSlot2 or save.Class
        return type(active)=="string" and active or nil,number(save.FreeRolls)
    end
    local function paid(text)
        local upper=tostring(text):upper()
        return upper:find("ROBUX",1,true) or upper:find("R$",1,true) or upper:find("PREMIUM",1,true)
            or upper:find("PRODUCT",1,true) or upper:find("GAMEPASS",1,true)
    end
    local function shownText(control)
        local result,seen={},{}
        local function add(text)
            if text~="" and not seen[text] then
                seen[text]=true
                table.insert(result,text)
            end
        end
        if control:IsA("TextButton") then add(control.Text) end
        for _,item in ipairs(control:GetDescendants()) do
            if item:IsA("TextLabel") and bridge.visible(item) then add(item.Text) end
        end
        return table.concat(result," "):gsub("<.->","")
    end
    local function buttons(root,filter,visibleOnly)
        local result={}
        for _,item in ipairs(root and root:GetDescendants() or {}) do
            if item:IsA("GuiButton") and item.Active and (not visibleOnly or bridge.visible(item)) then
                local label=bridge.texts(item)
                if not paid(label.." "..item.Name) and filter(item,label) then table.insert(result,item) end
            end
        end
        return result
    end
    local function waitFor(valid,seconds,predicate)
        local deadline=os.clock()+seconds
        repeat
            if not valid() then return false end
            if predicate() then return true end
            task.wait(0.13)
        until os.clock()>=deadline
        return false
    end
    local function readIcon(item)
        if item:IsA("ImageLabel") or item:IsA("ImageButton") then
            return imageId(item.Image),item.ImageRectOffset,item.ImageRectSize
        end
        if item:IsA("Decal") then return imageId(item.Texture) end
    end
    local function catalog()
        local result,byName={},{}
        local function register(entry)
            local key=norm(entry.name)
            if key=="" or byName[key] or not Extras.isClass(entry.name) or not Extras.isClass(entry.id) then return end
            byName[key]=entry
            table.insert(result,entry)
        end
        for _,entry in ipairs(moduleCatalog) do register(table.clone(entry)) end
        local screen=gui:FindFirstChild("Classes")
        for _,label in ipairs(screen and screen:GetDescendants() or {}) do
            if not (label:IsA("TextLabel") or label:IsA("TextButton")) then continue end
            local title=label.Text:gsub("<.->","")
            if not Extras.isClass(title) then continue end
            local ancestor=label
            while ancestor and ancestor~=screen and Extras.isClass(ancestor.Name) do ancestor=ancestor.Parent end
            if ancestor~=screen then continue end
            local entry=byName[norm(title)]
            local row=label.Parent
            local labelName=norm(label.Name)
            local isTitle=labelName=="classname" or labelName=="title" or labelName=="name"
            for _=1,2 do
                if not row or row==screen then break end
                local chance,icon,offset,size=nil,nil,nil,nil
                local images=0
                for _,item in ipairs(row:GetDescendants()) do
                    if item:IsA("TextLabel") and not chance then
                        local value=item.Text:match("([%d.,]+)%s*%%")
                        chance=value and tonumber((value:gsub(",",".")))
                    elseif imageObject(item) then
                        local key=norm(item.Name)
                        if key=="classicon" or key=="portrait" or key=="icon" or key=="image" or key=="classimage" then
                            local candidate,crop,extent=readIcon(item)
                            if candidate then icon,offset,size=candidate,crop,extent images+=1 end
                        end
                    end
                end
                if not entry and chance and isTitle then
                    entry={name=title,id=title,chance=chance}
                    register(entry)
                end
                if entry and icon and images==1 then
                    entry.icon,entry.iconOffset,entry.iconSize=icon,offset,size
                    break
                end
                row=row.Parent
            end
        end
        local assets=get(storage,"Assets","Classes") or get(storage,"Assets","ClassIcons")
        if assets then
            for _,item in ipairs(assets:GetChildren()) do
                local entry=byName[norm(item.Name)]
                if entry and not entry.icon then
                    local visual=imageObject(item) and item or item:FindFirstChildWhichIsA("ImageLabel",true)
                        or item:FindFirstChildWhichIsA("Decal",true)
                    if visual then entry.icon,entry.iconOffset,entry.iconSize=readIcon(visual) end
                end
            end
        end
        table.sort(result,function(a,b)
            if a.chance==b.chance then return a.name<b.name end
            return (a.chance or 0)>(b.chance or 0)
        end)
        return result
    end
    local function currency(root,expected,sourceScreen)
        local own=norm(root.Name.." "..bridge.texts(root))
        for _,word in ipairs(expected) do
            if own:find(word,1,true) then return true end
        end
        local hud=get(gui,sourceScreen,"Counter","Icon") or get(gui,sourceScreen,"Icon")
        local icon=hud and readIcon(hud)
        if not icon then return false end
        for _,item in ipairs(root:GetDescendants()) do
            if readIcon(item)==icon then return true end
        end
        return false
    end
    local function controlPrice(button,label,parse)
        parse=parse or Extras.offerAmount
        local price=nil
        for _,item in ipairs(button:GetDescendants()) do
            local key=norm(item.Name)
            if item:IsA("TextLabel") and bridge.visible(item)
                and (key=="price" or key=="cost" or key=="amount") then
                local value=parse(item.Text)
                if price and value and value~=price then return nil end
                price=value or price
            end
        end
        return price or parse(label)
    end
    local function rollOffer(screen,useGems)
        local exact=Extras.uniqueButton(screen,"Content","Buttons","Roll")
        if exact then
            local label=bridge.visible(exact) and shownText(exact) or bridge.texts(exact)
            if label=="" then label=bridge.texts(exact) end
            if not paid(label) then
                local price=Extras.nativeRollPrice(label)
                local key=norm(label)
                if useGems and price or not useGems and (key:find("free",1,true) or key:find("grati",1,true)) then
                    return {button=exact,price=price,headless=not bridge.visible(exact)}
                end
            end
        end
        local choices,nativeChoices={},{}
        local single=get(screen,"Choice","Single")
        local native=get(screen,"Content","Buttons")
        for _,button in ipairs(screen and screen:GetDescendants() or {}) do
            if not button:IsA("GuiButton") or not button.Active or useGems and not bridge.visible(button) then continue end
            local label=useGems and shownText(button) or bridge.texts(button)
            if paid(label.." "..button.Name) then continue end
            local key=norm(button.Name.." "..label)
            local inNative=native and button:IsDescendantOf(native)
            local action=key:find("roll",1,true) or key:find("spin",1,true)
                or key:find("girar",1,true) or key:find("rolar",1,true)
            local multiple=button.Name=="Bundle" or key:find("rollx",1,true) or key:find("spinbundle",1,true)
            local withGems=currency(button,{"gem","diamond","gema","diamante"},"Diamonds")
                or currency(button,{},"Gems")
            local free=key:find("free",1,true) or key:find("grati",1,true)
            local price=controlPrice(button,label,button==single and Extras.singleSpinPrice or nil)
            if not multiple and (action or inNative or button==single)
                and (useGems and not free and Extras.isGemOffer(label,price,inNative,withGems)
                    or not useGems and not withGems and (free or inNative and action and not price)) then
                local offers=inNative and nativeChoices or choices
                table.insert(offers,{button=button,price=price,free=free})
            end
        end
        if #nativeChoices>0 then choices=nativeChoices end
        if not useGems and #choices>1 then
            local freeChoices={}
            for _,choice in ipairs(choices) do if choice.free then table.insert(freeChoices,choice) end end
            choices=freeChoices
        end
        if #choices==1 then return choices[1] end
    end
    local function roll(valid,target,useGems,report)
        lastClassRoute=nil
        if type(target)~="table" or norm(target.name)=="" then return false,"Escolha uma classe na barra." end
        local index=0
        while valid() do
            local current,free=classState()
            if not current or not useGems and free==nil then return false,"O estado dos giros ainda não está disponível." end
            if Extras.matchesTarget(target,current) then return true,T("Classe encontrada: ")..current.."." end
            if not useGems and free<=0 then return true,T("Sem giros gratuitos. Última classe: ")..current.."." end
            local offer
            if not waitFor(valid,18,function()
                offer=rollOffer(gui:FindFirstChild("Classes"),useGems)
                return offer~=nil
            end) then
                if not valid() then return true,"Rolagem pausada." end
                return false,useGems and "O giro com preço em gemas não foi identificado. Abra Classes no jogo."
                    or "O giro gratuito não foi identificado. Abra Classes no jogo."
            end
            current,free=classState()
            if current and Extras.matchesTarget(target,current) then return true,T("Classe encontrada: ")..current.."." end
            local before=free
            if useGems then before=gems() end
            if before==nil then return false,"Aguardando o saldo de gemas do jogo." end
            if not useGems and before<=0 then return true,"Sem giros gratuitos." end
            if useGems and before<offer.price then return true,"Gemas insuficientes para o próximo giro." end
            local seen=classSignal
            lastClassRoute=offer.button:GetFullName()
            local ok,why=bridge.activate(offer.button,offer.headless or not useGems)
            if not ok then return false,why end
            local nextClass=nil
            local chargedAt=nil
            if not waitFor(valid,12,function()
                local class,remaining=classState()
                local after=remaining
                if useGems then after=gems() end
                if not Extras.confirmRoll(before,after,offer.price,useGems,true) then return false end
                local now=os.clock()
                chargedAt=chargedAt or now
                if class and (classSignal>seen or class~=current or now-chargedAt>=3
                    and rollOffer(gui:FindFirstChild("Classes"),useGems)) then
                    nextClass=class
                    return true
                end
                return false
            end) then
                if not valid() then return true,"Rolagem pausada." end
                return false,chargedAt and "O giro foi debitado, mas o próximo ainda não foi liberado."
                    or "O jogo não confirmou o débito. Rolagem parada."
            end
            index+=1
            report(string.format(T("Giro %d confirmado: %s"),index,tostring(nextClass)))
            if Extras.matchesTarget(target,nextClass) then return true,T("Classe encontrada: ")..nextClass.."." end
            task.wait(0.7)
        end
        return true,"Rolagem pausada."
    end
    local function upgrade(valid)
        local root=get(gui,"LobbyUpgrades","Panel","Content","Upgrades")
        local balance=gems()
        if not root or balance==nil then return false,"Abra as melhorias do lobby uma vez para carregar precos e gemas." end
        local best=nil
        for _,row in ipairs(root:GetChildren()) do
            local button=row:FindFirstChild("Upgrade")
            if button and button:IsA("GuiButton") and button.Active then
                local text=bridge.texts(button)
                local price=nil
                if not paid(text) and text:match("^%s*[%d,%.%s]+$") then
                    for amount in text:gmatch("[%d,%.]+") do
                        local value=tonumber((amount:gsub("[,.]","")))
                        if not value or price and value~=price then price=nil break end
                        price=value
                    end
                end
                if price and price>0 and price<=balance and (not best or price<best.price) then
                    best={button=button,price=price,name=row.Name,text=text}
                end
            end
        end
        if not best then return false,"Sem melhoria acessivel com as gemas atuais." end
        local ok,why=bridge.activate(best.button,true)
        if not ok then return false,why end
        if not waitFor(valid,3,function()
            local after=gems()
            return after and after<balance or best.button.Parent and bridge.texts(best.button)~=best.text
        end) then return false,"O jogo nao confirmou a melhoria de lobby." end
        return true,T("Melhoria de lobby confirmada: ")..best.name..".",best.name
    end
    local function eventContext(text)
        local key=norm(text)
        return key:find("pumpkin",1,true) or key:find("halloween",1,true) or key:find("abobora",1,true)
            or key:find("eventcrate",1,true) or key:find("caixadoevento",1,true)
    end
    local function eventButtons()
        local screen=gui:FindFirstChild("Crates")
        return buttons(screen,function(item,label)
            local name=norm(item.Name)
            local key=norm(label)
            local parent=item.Parent
            local action=name:find("open",1,true) or name:find("buy",1,true) or name:find("purchase",1,true)
                or key:find("open",1,true) or key:find("abrir",1,true) or key:find("comprar",1,true)
            local quoted=controlPrice(item,label)
            local pumpkin=currency(item,{"pumpkin","abobora"},"Pumpkins")
            if parent and parent~=screen then
                for _,child in ipairs(parent:GetChildren()) do
                    if child:IsA("TextLabel") and bridge.visible(child) then
                        local childName=norm(child.Name)
                        if not quoted and (childName:find("price",1,true) or childName:find("cost",1,true)) then
                            quoted=Extras.offerAmount(child.Text)
                        end
                        pumpkin=pumpkin or eventContext(child.Text)
                    end
                end
                pumpkin=pumpkin or eventContext(parent.Name)
            end
            local multiple=name:match("^open%d+$") or key:match("openx%d") or key:match("abrirx%d") or key:match("x%d+open")
            return not multiple and quoted==Extras.CRATE_COST and (action or pumpkin)
                and (pumpkin or eventContext(item.Name))
        end,true)
    end
    local function eventZone()
        return get(services.Workspace,"Map","Zones","HalloweenZone")
    end
    local function exactCrate()
        local buy=Extras.uniqueButton(gui:FindFirstChild("Crates"),"Menu","Panel","Content","Frame","Frame","Pumpkins","Buy")
        if not buy then return nil end
        local label=bridge.texts(buy)
        if paid(label) then return nil end
        local price=Extras.crateAmount(label)
        if not price and bridge.visible(buy) then price=controlPrice(buy,shownText(buy)) end
        return price==Extras.CRATE_COST and buy or nil
    end
    local function eventPrompt(zone)
        local matches,fallback={},{}
        for _,item in ipairs(zone and zone:GetDescendants() or {}) do
            if item:IsA("ProximityPrompt") and item.Enabled and not paid(item.ActionText.." "..item.ObjectText) then
                local description=item.Name.." "..item.ActionText.." "..item.ObjectText
                local key=norm(description)
                if eventContext(description) or key:find("crate",1,true) or key:find("caixa",1,true) then
                    table.insert(matches,item)
                elseif key:find("open",1,true) or key:find("abrir",1,true) or key:find("interact",1,true) then
                    table.insert(fallback,item)
                end
            end
        end
        if #matches==1 then return matches[1] end
        if #matches==0 and #fallback==1 then return fallback[1] end
    end
    local function eventDetector(zone)
        local match=nil
        for _,item in ipairs(zone and zone:GetDescendants() or {}) do
            if item:IsA("ClickDetector") and item.MaxActivationDistance>0 then
                if match then return nil end
                match=item
            end
        end
        return match
    end
    local function fireEventPacket(valid)
        local packet=nativePackets and nativePackets.CrateOpenPumpkins
        if type(packet)~="table" or type(packet.Fire)~="function"
            or type(packet.Writes)~="table" or #packet.Writes~=0
            or type(packet.Reads)~="table" or #packet.Reads~=0 then return nil end
        if not valid() then return false,"Abertura cancelada." end
        lastCrateRoute="CrateOpenPumpkins"
        local ok=pcall(packet.Fire,packet)
        return ok,ok and nil or "Falha ao enviar a abertura de evento."
    end
    local function requestEvent(valid)
        lastCrateRoute=nil
        local exact=exactCrate()
        if exact then
            if not valid() then return false,"Abertura cancelada." end
            lastCrateRoute=exact:GetFullName()
            return bridge.activate(exact,not bridge.visible(exact))
        end
        local choices=eventButtons()
        if #choices==0 then
            local zone=eventZone()
            local prompt=eventPrompt(zone)
            local detector=not prompt and eventDetector(zone) or nil
            local startBalance,startSignal=pumpkins(),crateSignal
            if prompt then
                lastCrateRoute=prompt:GetFullName()
                local ok,why=nav.trigger(prompt,valid)
                if not ok then return false,why end
            else
                local anchor=zone and zone:FindFirstChild("stylematchstone",true)
                if anchor and anchor:IsA("BasePart") then
                    local floor=anchor.Position-Vector3.new(0,anchor.Size.Y/2,0)
                    lastCrateRoute=anchor:GetFullName()
                    nav.goTo(floor,valid)
                end
                if detector and type(fireclickdetector)=="function" and valid() then
                    local host=detector.Parent
                    local root=nav.actor()
                    local position=host and (host:IsA("BasePart") and host.Position
                        or host:IsA("Model") and host:GetPivot().Position)
                    if root and position and (root.Position-position).Magnitude<=detector.MaxActivationDistance then
                        local ok=pcall(fireclickdetector,detector)
                        if ok then lastCrateRoute=detector:GetFullName() end
                    end
                end
            end
            if prompt or lastCrateRoute then
                waitFor(valid,2.5,function()
                    choices=eventButtons()
                    return #choices>0 or crateSignal>startSignal or pumpkins()~=startBalance
                end)
                if crateSignal>startSignal or pumpkins()~=startBalance then return true end
            end
            if #choices==0 and not prompt and not detector then
                local ok,why=fireEventPacket(valid)
                if ok~=nil then return ok,why end
            end
        end
        if #choices~=1 then return false,"A oferta de 80 abóboras não pôde ser confirmada." end
        if not valid() then return false,"Abertura cancelada." end
        lastCrateRoute=choices[1]:GetFullName()
        return bridge.activate(choices[1])
    end
    local function settleRoll(valid)
        local roll=get(gui,"Crates","Roll")
        if not roll or not bridge.visible(roll) then return true end
        local lastAttempt=0
        local attempts=0
        return waitFor(valid,12,function()
            if not bridge.visible(roll) then return true end
            local now=os.clock()
            if attempts<8 and now-lastAttempt>=0.6 then
                for _,name in ipairs({"Skip","Continue","Close"}) do
                    local button=roll:FindFirstChild(name,true)
                    if button and button:IsA("GuiButton") and button.Active and bridge.visible(button) then
                        lastAttempt=now
                        attempts+=1
                        bridge.activate(button)
                        break
                    end
                end
            end
            return false
        end)
    end
    local function openBatch(valid,count,onProgress)
        if type(count)~="number" or count%1~=0 or count<1 or count>10 then return false,"Lote inválido.",0 end
        local balance=pumpkins()
        if balance==nil then return false,"O jogo ainda não informou o saldo de abóboras.",0 end
        if balance<count*Extras.CRATE_COST then
            return false,string.format(T("Saldo insuficiente para o lote. %d de %d abóboras."),balance,count*Extras.CRATE_COST),0
        end
        local opened=0
        for index=1,count do
            if not valid() then return false,"Lote pausado.",opened end
            if not settleRoll(valid) then return false,"A caixa anterior ainda está aberta.",opened end
            local before=pumpkins()
            if before==nil or before<Extras.CRATE_COST then return false,"Saldo mudou durante o lote.",opened end
            local serial=crateSignal
            if onProgress then onProgress(string.format(T("Abrindo caixa %d/%d…"),index,count)) end
            local ok,why=requestEvent(valid)
            if not ok then return false,why,opened end
            local sawRoll=false
            local closedRoll=false
            local rewardAt=nil
            if not waitFor(valid,10,function()
                local roll=get(gui,"Crates","Roll")
                sawRoll=roll~=nil and bridge.visible(roll)
                if sawRoll then return true end
                if crateSignal>serial then
                    local now=os.clock()
                    rewardAt=rewardAt or now
                    return now-rewardAt>=2
                end
                return false
            end) then return false,"O jogo não mostrou a abertura da caixa. Lote interrompido.",opened end
            if sawRoll then closedRoll=settleRoll(valid) end
            if not waitFor(valid,8,function()
                return Extras.confirmCrate(before,pumpkins(),crateSignal>serial or closedRoll)
            end) then return false,"O jogo não confirmou o débito e o resultado. Lote interrompido.",opened end
            opened+=1
            if sawRoll and not closedRoll then return false,"Caixa registrada, mas a tela da abertura ainda está ativa.",opened end
            if index<count then task.wait(0.45) end
        end
        return true,string.format(T("%d caixa(s) confirmada(s)."),opened),opened
    end
    local function diagnostic()
        local info={buttons={}}
        info.class,info.freeRolls=classState()
        info.gems=gems()
        info.pumpkins=pumpkins()
        local packet=nativePackets and nativePackets.CrateOpenPumpkins
        info.eventCrateFields=type(packet)=="table" and type(packet.Writes)=="table" and #packet.Writes or nil
        info.crateRoute=lastCrateRoute
        info.classRoute=lastClassRoute
        info.eventOffers=exactCrate() and 1 or #eventButtons()
        info.eventPrompts={}
        local zone=eventZone()
        for _,item in ipairs(zone and zone:GetDescendants() or {}) do
            if item:IsA("ProximityPrompt") and #info.eventPrompts<18 then
                table.insert(info.eventPrompts,{path=item:GetFullName(),action=item.ActionText,object=item.ObjectText,enabled=item.Enabled})
            elseif item:IsA("ClickDetector") and #info.eventPrompts<18 then
                table.insert(info.eventPrompts,{path=item:GetFullName(),distance=item.MaxActivationDistance})
            end
        end
        for _,name in ipairs({"Classes","Crates","LobbyUpgrades"}) do
            local screen=gui:FindFirstChild(name)
            local count=0
            for _,control in ipairs(screen and screen:GetDescendants() or {}) do
                if control:IsA("GuiButton") then
                    table.insert(info.buttons,{screen=name,path=control:GetFullName(),name=control.Name,
                        label=bridge.texts(control):sub(1,140),shown=shownText(control):sub(1,140),
                        active=control.Active,visible=bridge.visible(control)})
                    count+=1
                    if count>=28 then break end
                end
            end
        end
        return info
    end
    return {upgrade=upgrade,openBatch=openBatch,roll=roll,catalog=catalog,classState=classState,
        pumpkins=pumpkins,gems=gems,diagnostic=diagnostic}
end

return Extras

end)()

local LobbyView = (function()
-- Luau · potato_lobby_view.luau · mobile lobby control panel
local View={}

function View.create(services,lifecycle,gui,callbacks)
    local input=services.UserInputService
    local tween=services.TweenService
    local base=Color3.fromRGB(35,31,25)
    local surface=Color3.fromRGB(65,54,39)
    local border=Color3.fromRGB(25,21,16)
    local bright=Color3.fromRGB(252,246,226)
    local dim=Color3.fromRGB(213,195,163)
    local green=Color3.fromRGB(128,205,55)
    local blue=Color3.fromRGB(46,141,236)
    local gold=Color3.fromRGB(255,202,66)
    local red=Color3.fromRGB(187,47,39)
    local tabs,buttons,pages={}, {}, {}
    local function make(class,props,parent)
        local item=Instance.new(class)
        for key,value in pairs(props) do item[key]=key=="Text" and T(value) or value end
        if props.Text~=nil then item.AutoLocalize=false end
        item.Parent=parent
        return item
    end
    local function round(item,radius)
        make("UICorner",{CornerRadius=UDim.new(0,radius or 5)},item)
    end
    local function stroke(item,color)
        return make("UIStroke",{Color=color or border,Thickness=2,ApplyStrokeMode=Enum.ApplyStrokeMode.Border},item)
    end
    local function gradient(item,left,right,angle)
        return make("UIGradient",{Color=ColorSequence.new(left,right),Rotation=angle or 0},item)
    end
    local function label(parent,content,size,color,bold)
        return make("TextLabel",{Text=content,TextSize=size,TextColor3=color or bright,
            BackgroundTransparency=1,Font=bold and Enum.Font.GothamBlack or Enum.Font.Gotham,
            TextXAlignment=Enum.TextXAlignment.Left,TextWrapped=true},parent)
    end
    local function call(name,...)
        if callbacks[name] then callbacks[name](...) end
    end
    local function button(parent,key,title,primary)
        local b=make("TextButton",{Text=title,TextSize=15,TextColor3=bright,
            TextStrokeColor3=border,TextStrokeTransparency=0.2,
            BackgroundColor3=primary and green or surface,BorderSizePixel=0,
            Font=Enum.Font.GothamBlack,TextWrapped=true},parent)
        round(b) stroke(b)
        gradient(b,Color3.new(1,1,1),Color3.fromRGB(183,169,145),90)
        if key then buttons[key]=b b.Activated:Connect(function() call(key) end) end
        return b
    end
    local canvas=make("Frame",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1},gui)
    local panel=make("Frame",{AnchorPoint=Vector2.new(0.5,0),Size=UDim2.fromOffset(760,570),
        Position=UDim2.new(0.5,0,0,8),BackgroundColor3=base,BorderSizePixel=0,ClipsDescendants=true},canvas)
    round(panel,8) stroke(panel,Color3.fromRGB(116,88,49))
    local scaler=make("UIScale",{Scale=0.65},panel)
    local header=make("Frame",{Size=UDim2.new(1,0,0,74),BackgroundColor3=Color3.fromRGB(111,77,44),
        BorderSizePixel=0,ClipsDescendants=true,Active=true},panel)
    gradient(header,Color3.new(1,1,1),Color3.fromRGB(137,107,78),90)
    make("Frame",{Position=UDim2.new(0,0,1,-3),Size=UDim2.new(1,0,0,3),BackgroundColor3=border,BorderSizePixel=0},header)
    make("ImageLabel",{Position=UDim2.fromOffset(13,11),Size=UDim2.fromOffset(49,49),BackgroundTransparency=1,
        Image="rbxassetid://103225914639722",ScaleType=Enum.ScaleType.Fit},header)
    local brand=label(header,"ANONHUB",28,bright,true)
    brand.TextStrokeColor3,brand.TextStrokeTransparency=border,0
    brand.Position,brand.Size=UDim2.fromOffset(73,6),UDim2.new(1,-146,0,34)
    local tagline=label(header,"CENTRAL DO LOBBY",13,gold,true)
    tagline.Position,tagline.Size=UDim2.fromOffset(74,40),UDim2.new(1,-147,0,22)
    local hide=button(header,nil,"X")
    hide.Position,hide.Size=UDim2.new(1,-54,0,15),UDim2.fromOffset(40,41)
    hide.BackgroundColor3,hide.TextSize=red,22
    local launcher=button(canvas,nil,"A")
    launcher.Position,launcher.Size=UDim2.new(0,10,1,-64),UDim2.fromOffset(47,47)
    launcher.TextSize=26 launcher.ZIndex=6 launcher.BackgroundColor3=surface
    if callbacks.decorateLauncher then callbacks.decorateLauncher(launcher) end

    local nav=make("ScrollingFrame",{Position=UDim2.fromOffset(9,83),Size=UDim2.new(0,129,1,-139),
        BackgroundTransparency=1,BorderSizePixel=0,CanvasSize=UDim2.fromOffset(0,0),
        AutomaticCanvasSize=Enum.AutomaticSize.Y,ScrollBarThickness=2},panel)
    make("UIListLayout",{Padding=UDim.new(0,6),SortOrder=Enum.SortOrder.LayoutOrder},nav)
    local body=make("Frame",{Position=UDim2.fromOffset(146,83),Size=UDim2.new(1,-155,1,-139),
        BackgroundTransparency=1,ClipsDescendants=true},panel)
    local footer=label(panel,"Pronto para configurar a fila.",14,dim,false)
    footer.Position,footer.Size=UDim2.new(0,13,1,-47),UDim2.new(1,-26,0,40)
    local activePage="config"
    local function showPage(key)
        activePage=key
        for name,page in pairs(pages) do page.Visible=name==key end
        for name,b in pairs(tabs) do
            b.BackgroundColor3=name==key and gold or surface
            b.TextColor3=name==key and border or bright
            b.TextStrokeTransparency=name==key and 1 or 0.2
        end
        local page=pages[key]
        if page then
            page.Position=UDim2.fromOffset(7,0)
            tween:Create(page,TweenInfo.new(0.18,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                {Position=UDim2.fromOffset(0,0)}):Play()
        end
    end
    local function page(key,title,index)
        local buttonItem=button(nav,nil,title)
        buttonItem.Size=UDim2.new(1,-3,0,45)
        buttonItem.LayoutOrder=index
        buttonItem.TextSize=14
        buttonItem.Activated:Connect(function() showPage(key) end)
        tabs[key]=buttonItem
        local target=make("ScrollingFrame",{Size=UDim2.fromScale(1,1),Visible=false,BackgroundTransparency=1,
            BorderSizePixel=0,CanvasSize=UDim2.fromOffset(0,0),AutomaticCanvasSize=Enum.AutomaticSize.Y,
            ScrollingDirection=Enum.ScrollingDirection.Y,ScrollBarThickness=3,ScrollBarImageColor3=gold},body)
        make("UIPadding",{PaddingTop=UDim.new(0,1),PaddingBottom=UDim.new(0,6),PaddingRight=UDim.new(0,5)},target)
        make("UIListLayout",{Padding=UDim.new(0,8),SortOrder=Enum.SortOrder.LayoutOrder},target)
        pages[key]=target
        return target
    end
    local function block(parent,title,description,height)
        local frame=make("Frame",{Size=UDim2.new(1,0,0,height or 82),
            BackgroundColor3=surface,BorderSizePixel=0},parent)
        round(frame) stroke(frame)
        local h=label(frame,title,19,bright,true)
        h.Position,h.Size=UDim2.fromOffset(11,7),UDim2.new(1,-22,0,25)
        local d=label(frame,description,14,dim,false)
        d.Position,d.Size=UDim2.fromOffset(11,33),UDim2.new(1,-22,1,-38)
        return frame,d
    end
    local function row(parent)
        return make("Frame",{Size=UDim2.new(1,0,0,46),BackgroundTransparency=1},parent)
    end
    local function rowButton(parent,key,title,x,width,primary)
        local item=button(parent,key,title,primary)
        item.Position,item.Size=UDim2.new(x,0,0,0),UDim2.new(width,-5,1,0)
        return item
    end
    local settings=page("config","Configurar",1)
    block(settings,"Configurar capítulo","Escolha um capítulo para ver as opções da fila.",73)
    local chapterNames={"Capítulo I","Capítulo II","Capítulo III"}
    local expanded,selectedChapter=false,nil
    local function chapterRow(parent,text)
        local item=button(parent,nil,"")
        item.Size=UDim2.new(1,0,0,43)
        local title=label(item,text,15,bright,true)
        title.Position,title.Size=UDim2.fromOffset(12,0),UDim2.new(1,-130,1,0)
        return item
    end
    local selector=chapterRow(settings,"Capítulos")
    local caret=label(selector,"⌄",17,dim,true)
    caret.Position,caret.Size=UDim2.new(1,-23,0,0),UDim2.fromOffset(18,43)
    local choices=make("Frame",{BackgroundTransparency=1,Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y,Visible=false},settings)
    make("UIListLayout",{Padding=UDim.new(0,5),SortOrder=Enum.SortOrder.LayoutOrder},choices)
    local chapterOptions=make("Frame",{BackgroundTransparency=1,Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y,Visible=false},settings)
    make("UIListLayout",{Padding=UDim.new(0,8),SortOrder=Enum.SortOrder.LayoutOrder},chapterOptions)
    local function showChapter()
        caret.Text=expanded and "⌃" or "⌄"
        choices.Visible=expanded
        chapterOptions.Visible=selectedChapter==2
    end
    selector.Activated:Connect(function() expanded=not expanded showChapter() end)
    for index,name in ipairs(chapterNames) do
        local item=chapterRow(choices,name)
        item.LayoutOrder=index
        local online=index==2
        local color=online and green or dim
        local dot=make("Frame",{Size=UDim2.fromOffset(7,7),Position=UDim2.new(1,-108,0.5,-3),
            BackgroundColor3=color,BorderSizePixel=0},item)
        round(dot,5)
        local badge=label(item,online and "ONLINE" or "EM BREVE",11,color,true)
        badge.Position,badge.Size=UDim2.new(1,-94,0,0),UDim2.fromOffset(73,43)
        item.Activated:Connect(function() selectedChapter=index expanded=false showChapter() end)
    end
    block(chapterOptions,"Fila do Capítulo II","As escolhas são reaplicadas na próxima rodada.",69)
    local launch=row(chapterOptions)
    rowButton(launch,"launch","ENTRAR + OP",0,0.42,true)
    rowButton(launch,"cycle","CICLO COMPLETO",0.43,0.57)
    local first=row(chapterOptions)
    rowButton(first,"size","JOGADORES",0,0.47)
    rowButton(first,"friends","AMIGOS",0.48,0.52)
    local scenes=row(chapterOptions)
    rowButton(scenes,"skip","INTRODUÇÃO",0,0.47)
    rowButton(scenes,"skipOutro","CENA FINAL",0.48,0.52)
    local actions=row(chapterOptions)
    rowButton(actions,"repeatRun","REPETIR",0,0.47)
    rowButton(actions,"autoImprove","AUTO MELHORIA",0.48,0.52)
    local queueRow=row(settings)
    rowButton(queueRow,"stop","PARAR",0,0.34).BackgroundColor3=red
    rowButton(queueRow,"language","IDIOMA",0.35,0.65)
    local _,balance=block(settings,"Recursos do lobby","Lendo o saldo do jogo…",69)

    local event=page("event","Caixas",2)
    block(event,"Caixa do evento","O custo é de 80 abóboras por caixa. Escolha o tamanho do lote.",78)
    local _,eventBalance=block(event,"Saldo de abóboras","Aguardando o jogo…",69)
    local countBox=row(event)
    local track=make("Frame",{Position=UDim2.new(0,11,0.5,-5),Size=UDim2.new(1,-116,0,10),
        BackgroundColor3=border,BorderSizePixel=0},countBox)
    round(track)
    local fill=make("Frame",{Size=UDim2.fromScale(0,1),BackgroundColor3=gold,BorderSizePixel=0},track)
    round(fill)
    local knob=make("Frame",{AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0,0.5),
        Size=UDim2.fromOffset(26,26),BackgroundColor3=gold,BorderSizePixel=0},track)
    round(knob,13)
    local hit=make("Frame",{Position=UDim2.fromOffset(0,0),Size=UDim2.new(1,-95,1,0),
        BackgroundTransparency=1,Active=true,ZIndex=5},countBox)
    local amount=label(countBox,"10",19,gold,true)
    amount.Position,amount.Size=UDim2.new(1,-91,0,0),UDim2.fromOffset(86,46)
    amount.TextXAlignment=Enum.TextXAlignment.Center
    local eventButtons=row(event)
    rowButton(eventButtons,"autoCrates","AUTO CAIXAS",0,0.54)
    local openBatch= rowButton(eventButtons,"openBatch","ABRIR LOTE",0.55,0.45,true)
    openBatch.BackgroundColor3,openBatch.TextColor3,openBatch.TextStrokeTransparency=gold,border,1

    local classes=page("classes","Classes",3)
    block(classes,"Alvo de classe","Selecione um cartão. A rolagem para quando o jogo confirma a classe.",79)
    local strip=make("ScrollingFrame",{Size=UDim2.new(1,0,0,112),CanvasSize=UDim2.fromOffset(0,0),
        AutomaticCanvasSize=Enum.AutomaticSize.X,ScrollingDirection=Enum.ScrollingDirection.X,
        ScrollBarThickness=4,ScrollBarImageColor3=gold,BorderSizePixel=0,BackgroundTransparency=1},classes)
    make("UIListLayout",{FillDirection=Enum.FillDirection.Horizontal,Padding=UDim.new(0,8),
        SortOrder=Enum.SortOrder.LayoutOrder},strip)
    local empty=label(strip,"Abra Classes no jogo para carregar o catálogo.",14,dim,false)
    empty.Size=UDim2.fromOffset(260,90)
    local _,classStatus=block(classes,"Classe atual","Aguardando o jogo…",70)
    local useGems,rollingNow=false,false
    local gemCheck=button(classes,nil,"□   USAR GEMAS PARA GIRAR")
    gemCheck.Size=UDim2.new(1,-5,0,42)
    gemCheck.Activated:Connect(function()
        if rollingNow then return end
        useGems=not useGems
        gemCheck.Text=T(useGems and "✓   USAR GEMAS PARA GIRAR" or "□   USAR GEMAS PARA GIRAR")
        gemCheck.TextColor3=useGems and green or bright
    end)
    local rollRow=row(classes)
    local rollButton=rowButton(rollRow,nil,"GIRAR ATÉ O ALVO",0,0.60,true)
    rollButton.BackgroundColor3=blue
    rollButton.Activated:Connect(function() call("roll",useGems) end)
    rowButton(rollRow,"rarest","SELECIONAR MAIS RARA",0.61,0.39)
    local classItems={}
    local classKey=""

    local open=true
    local offset=Vector2.zero
    local launcherFraction=Vector2.new(0,1)
    local currentTween=nil
    local function launcherRange()
        local size=canvas.AbsoluteSize
        return Vector2.new(math.max(1,size.X-63),math.max(1,size.Y-63))
    end
    local function placeLauncher()
        local range=launcherRange()
        launcher.Position=UDim2.fromOffset(8+launcherFraction.X*range.X,8+launcherFraction.Y*range.Y)
    end
    local function position()
        local size=canvas.AbsoluteSize
        if size.X<80 or size.Y<80 then return end
        local unit=math.min(0.65,(size.Y-14)/280)
        scaler.Scale=unit
        local w=math.min(760,(size.X-16)/unit)
        local h=math.min(570,(size.Y-14)/unit)
        panel.Size=UDim2.fromOffset(w,h)
        local range=math.max(0,(size.X-w*unit)/2-5)
        offset=Vector2.new(math.clamp(offset.X,-range,range),math.clamp(offset.Y,0,math.max(0,size.Y-h*unit-14)))
        panel.Position=UDim2.new(0.5,offset.X,0,7+offset.Y)
        placeLauncher()
    end
    local function toggle()
        open=not open
        if currentTween then currentTween:Cancel() currentTween=nil end
        panel.Visible=open
        launcher.BackgroundColor3=open and surface or Color3.fromRGB(154,101,34)
        if open then
            position()
            local target=panel.Position
            panel.Position=UDim2.new(0.5,offset.X,0,1+offset.Y)
            currentTween=tween:Create(panel,TweenInfo.new(0.18),{Position=target})
            currentTween:Play()
        end
    end
    hide.Activated:Connect(toggle)
    local pointer,dragStart,offsetStart,slider=nil,nil,nil,nil
    local launcherPointer,launcherStart,launcherOrigin=nil,nil,nil
    local launcherMoved=false
    local function pointerType(eventInput)
        return eventInput.UserInputType==Enum.UserInputType.Touch or eventInput.UserInputType==Enum.UserInputType.MouseButton1
    end
    local function matching(origin,changed)
        return origin and (origin.UserInputType==Enum.UserInputType.Touch and changed==origin
            or origin.UserInputType==Enum.UserInputType.MouseButton1 and changed.UserInputType==Enum.UserInputType.MouseMovement)
    end
    local function slide(x,save)
        local ratio=math.clamp((x-track.AbsolutePosition.X)/math.max(1,track.AbsoluteSize.X),0,1)
        call("crateCount",1+math.floor(ratio*9+0.5),save)
    end
    header.InputBegan:Connect(function(eventInput)
        if pointerType(eventInput) then
            pointer=eventInput dragStart=Vector2.new(eventInput.Position.X,eventInput.Position.Y) offsetStart=offset
        end
    end)
    hit.InputBegan:Connect(function(eventInput)
        if pointerType(eventInput) then slider=eventInput slide(eventInput.Position.X,false) end
    end)
    launcher.InputBegan:Connect(function(eventInput)
        if not pointerType(eventInput) or launcherPointer then return end
        launcherPointer=eventInput
        launcherStart=Vector2.new(eventInput.Position.X,eventInput.Position.Y)
        launcherOrigin=launcherFraction
        launcherMoved=false
    end)
    local moved=input.InputChanged:Connect(function(eventInput)
        if matching(launcherPointer,eventInput) then
            local delta=Vector2.new(eventInput.Position.X,eventInput.Position.Y)-launcherStart
            if delta.Magnitude>=7 then launcherMoved=true end
            if launcherMoved then
                local range=launcherRange()
                launcherFraction=Vector2.new(math.clamp(launcherOrigin.X+delta.X/range.X,0,1),
                    math.clamp(launcherOrigin.Y+delta.Y/range.Y,0,1))
                placeLauncher()
            end
        elseif matching(slider,eventInput) then slide(eventInput.Position.X,false)
        elseif matching(pointer,eventInput) then
            offset=offsetStart+Vector2.new(eventInput.Position.X,eventInput.Position.Y)-dragStart
            position()
        end
    end)
    local ended=input.InputEnded:Connect(function(eventInput)
        if eventInput==launcherPointer then
            launcherPointer=nil
            if launcherMoved then call("launcher",launcherFraction.X,launcherFraction.Y)
            elseif eventInput.UserInputState==Enum.UserInputState.End then toggle() end
        end
        if eventInput==pointer then pointer=nil end
        if eventInput==slider then slider=nil slide(eventInput.Position.X,true) end
    end)
    local resized=canvas:GetPropertyChangedSignal("AbsoluteSize"):Connect(position)
    lifecycle.add(function() moved:Disconnect() ended:Disconnect() resized:Disconnect() end)
    task.defer(position)
    showPage("config")

    return {
        status=function(message) footer.Text=T(tostring(message)) end,
        showingClasses=function() return open and activePage=="classes" end,
        options=function(value,busy,improving,rolling)
            rollingNow=rolling
            if not launcherPointer then
                launcherFraction=Vector2.new(value.launcherX,value.launcherY)
                placeLauncher()
            end
            buttons.size.Text=T("JOGADORES  ·  ")..value.size
            buttons.friends.Text=T(value.friends and "SÓ AMIGOS  ·  SIM" or "SÓ AMIGOS  ·  NÃO")
            buttons.skip.Text=T(value.skip and "INTRO  ·  PULAR" or "INTRO  ·  VER")
            buttons.skipOutro.Text=T(value.skipOutro and "FINAL  ·  PULAR" or "FINAL  ·  VER")
            buttons.repeatRun.Text=T(value.repeatRun and "REPETIR  ·  SIM" or "REPETIR  ·  NÃO")
            buttons.autoImprove.Text=T(improving and "MELHORIAS  ·  ON" or "MELHORIAS  ·  OFF")
            buttons.autoCrates.Text=T(value.autoCrates and "AUTO CAIXAS  ·  ON" or "AUTO CAIXAS  ·  OFF")
            buttons.cycle.Text=T(busy and "AGUARDANDO O JOGO" or "CICLO COMPLETO")
            rollButton.Text=T(rolling and "PARAR GIROS" or "GIRAR ATÉ O ALVO")
            rollButton.BackgroundColor3=rolling and red or blue
            amount.Text=tostring(value.crateCount)
            local ratio=(value.crateCount-1)/9
            fill.Size=UDim2.fromScale(ratio,1)
            knob.Position=UDim2.fromScale(ratio,0.5)
        end,
        resources=function(value,count,gems)
            balance.Text=string.format(T("Abóboras  %s   ·   Gemas  %s"),tostring(value or "—"),tostring(gems or "—"))
            eventBalance.Text=string.format(T("%s no saldo   ·   %d caixa(s) = %d abóboras"),tostring(value or "—"),count,count*80)
        end,
        classes=function(list,selected,current,free)
            classStatus.Text=string.format(T("%s   ·   Giros grátis: %s"),current or "—",tostring(free or "—"))
            if activePage~="classes" or not open then return end
            local signature={}
            for index=1,math.min(#list,30) do
                local item=list[index]
                signature[index]=tostring(item.id)..":"..tostring(item.name)..":"..tostring(item.icon)
                    ..":"..tostring(item.iconOffset)..":"..tostring(item.iconSize)
            end
            local key=table.concat(signature,"|")
            if key~=classKey then
                classKey=key
                for _,item in pairs(classItems) do item.button:Destroy() end
                table.clear(classItems)
                empty.Visible=#list==0
                for index=1,math.min(#list,30) do
                    local entry=list[index]
                    local id=tostring(entry.id)
                    local tile=button(strip,nil,"")
                    tile.Size,tile.LayoutOrder=UDim2.fromOffset(105,101),index
                    local line=tile:FindFirstChildOfClass("UIStroke")
                    if type(entry.icon)=="string" and entry.icon~="" then
                        make("ImageLabel",{Position=UDim2.fromOffset(29,6),Size=UDim2.fromOffset(47,47),
                            BackgroundTransparency=1,Image=entry.icon,ScaleType=Enum.ScaleType.Fit,
                            ImageRectOffset=entry.iconOffset or Vector2.zero,ImageRectSize=entry.iconSize or Vector2.zero},tile)
                    else
                        local letter=label(tile,string.sub(entry.name,1,1),31,blue,true)
                        letter.Position,letter.Size=UDim2.fromOffset(6,3),UDim2.new(1,-12,0,49)
                        letter.TextXAlignment=Enum.TextXAlignment.Center
                    end
                    local name=label(tile,entry.name,12,bright,true)
                    name.Position,name.Size=UDim2.fromOffset(4,53),UDim2.new(1,-8,0,40)
                    name.TextXAlignment=Enum.TextXAlignment.Center
                    tile.Activated:Connect(function() call("target",id) end)
                    classItems[id]={button=tile,line=line}
                end
            end
            for id,entry in pairs(classItems) do
                entry.line.Color=id==selected and gold or border
                entry.button.BackgroundColor3=id==selected and Color3.fromRGB(105,74,34) or surface
            end
        end,
    }
end

return View

end)()

local function lobbySettings(io,account)
    local path="AnonHub_Lobby_"..tostring(account)..".json"
    local function read(name)
        if type(io.read)~="function" then return end
        local ok,value=pcall(function()
            local raw=io.read(name)
            if type(raw)=="string" and #raw<=180000 then return io.decode(raw) end
        end)
        if ok and type(value)=="table" and value.schema==1 and type(value.settings)=="table" then
            return value.settings
        end
    end
    return {
        settings=read(path) or read("Evolvy_History_"..tostring(account)..".json"),
        save=function(settings)
            if type(io.write)=="function" then pcall(function() io.write(path,io.encode({schema=1,settings=settings})) end) end
        end,
    }
end

local Quests = (function()
-- Luau · potato_quests.luau · native quest progress and supported objectives
local Quests={}

function Quests.progress(value)
    if type(value)~="string" then return nil end
    local clean=value:gsub("<.->",""):gsub("[,.]","")
    local current,goal=clean:match("(%d+)%s*/%s*(%d+)")
    current,goal=tonumber(current),tonumber(goal)
    if current and goal and goal>0 and goal<100000000 then return current,goal end
end

function Quests.action(title)
    local label=tostring(title):lower()
    local function has(...)
        for _,word in ipairs({...}) do if label:find(word,1,true) then return true end end
        return false
    end
    if has("secret","secreta","???"," with "," using "," usando "," com a "," com o ",
        "chapter 1","chapter 3","capitulo 1","capitulo 3","golden potatoes","rainbow potatoes","diamond potatoes") then
        return nil
    end
    if has("escape","escap","fuja","fugir") then return "escape" end
    if has("cool","resfri","esfri") then return "cool" end
    if has("dynamite","dinamite") then return "dynamite" end
    if has("sell","vend") then return "sell" end
    if has("peel","slice","cut","cort","descas") then return "cut" end
    if has("collect","pick","colet","peg","gather") then
        if has("gem","diamond","diamante") then return "gem" end
        if has("potato","batata") then return "collect" end
    end
end

local names={"Title","TaskName","Objective","Description","ChallengeName","QuestName","Task","Name"}
local roots={quest=true,quests=true,questtracker=true,questtasks=true,mission=true,missions=true,
    battlepass=true,battlepasschallenges=true,challenges=true,dailyquests=true,weeklyquests=true}

function Quests.scan(gui)
    local result={}
    local seen={}
    for _,screen in ipairs(gui:GetChildren()) do
        local n=screen.Name:lower():gsub("[^%w]","")
        if not roots[n] then continue end
        for _,label in ipairs(screen:GetDescendants()) do
            if #result>=28 then break end
            if not label:IsA("TextLabel") then continue end
            local current,goal=Quests.progress(label.Text)
            if current==nil then continue end
            local container=label.Parent
            local title=nil
            local row=nil
            for _=1,3 do
                if not container or container==screen then break end
                for _,name in ipairs(names) do
                    local item=container:FindFirstChild(name)
                    if item and item~=label and item:IsA("TextLabel") and #item.Text>=3 then
                        title=item.Text:gsub("<.->","")
                        row=container
                        break
                    end
                end
                if title then break end
                container=container.Parent
            end
            if title and #title<=140 then
                local action=Quests.action(title)
                local path=string.lower(row:GetFullName())
                local taskRow=path:find("challenge",1,true) or path:find("quest",1,true) or path:find("task",1,true)
                if n~="battlepass" or taskRow or action then
                    local id=screen.Name.."|"..title
                    if not seen[id] then
                        seen[id]=true
                        table.insert(result,{id=id,title=title,source=n:find("battlepass",1,true) and "Passe" or "Missao",
                            current=current,goal=goal,action=action,done=current>=goal})
                    end
                end
            end
        end
    end
    table.sort(result,function(a,b) return a.id<b.id end)
    return result
end

return Quests

end)()

local Handoff = (function()
-- Luau · potato_handoff.luau · one-use handoff between lobby and round
local Handoff={}

function Handoff.options(values)
    if type(values)~="table" then values={} end
    local size=tonumber(values.size)
    if not size or size~=size or size<1 or size>4 or size%1~=0 then size=1 end
    local failures=tonumber(values.reconnectCount) or 0
    if failures~=1 and failures~=2 then failures=0 end
    local crates=tonumber(values.crateCount)
    if not crates or crates~=crates or crates<1 or crates>10 or crates%1~=0 then crates=10 end
    local function fraction(value,default)
        if type(value)~="number" or value~=value then return default end
        return math.clamp(value,0,1)
    end
    return {size=size,friends=values.friends==true,skip=values.skip~=false,skipOutro=values.skipOutro~=false,repeatRun=values.repeatRun==true,
        reconnectCount=failures,autoCrates=values.autoCrates==true,crateCount=crates,
        launcherX=fraction(values.launcherX,0),launcherY=fraction(values.launcherY,1),
        classTarget=type(values.classTarget)=="string" and #values.classTarget<=72 and values.classTarget or nil}
end

function Handoff.create(io,identity,bootstrap,checkLicense)
    local file="Evolvy_Chapter2_Transfer_v1.json"
    local queued=false
    local hasFiles=type(io.read)=="function" and type(io.write)=="function"
    local available=hasFiles and type(io.queue)=="function"
    local function load()
        if type(io.read)~="function" then return nil end
        local ok,result=pcall(function()
            local content=io.read(file)
            if type(content)~="string" or #content>3000 then return nil end
            return io.decode(content)
        end)
        return ok and type(result)=="table" and result or nil
    end
    local function save(value)
        if type(io.write)~="function" then return false end
        local ok,result=pcall(function()
            return io.write(file,io.encode(value))
        end)
        return ok and result~=false
    end
    local function clear()
        local record=load()
        if record and record.account==identity.account and record.game==identity.game then
            return save({schema=1})
        end
        return false
    end
    local function pending()
        local record=load()
        if not record or record.schema~=1 or record.account~=identity.account or record.game~=identity.game
            or type(record.from)~="string" or record.from=="" or record.from==identity.job
            or (record.to~="chapter" and record.to~="lobby")
            or type(record.untilTime)~="number" or record.untilTime<io.clock()
            or record.untilTime>io.clock()+180 then return nil end
        return record
    end
    local function take(phase)
        local record=pending()
        if not record or record.to~=phase then return nil end
        if not clear() then return nil end
        local license=checkLicense and checkLicense(record.license) or nil
        if record.license~=nil and not license then return nil end
        return Handoff.options(record.options),license
    end
    local function arm(destination,options,license)
        if not hasFiles or identity.job=="" then return false,"O executor nao disponibilizou retomada entre servidores." end
        if destination~="lobby" and destination~="chapter" then return false,"Destino invalido." end
        local record={schema=1,account=identity.account,game=identity.game,from=identity.job,
            to=destination,untilTime=io.clock()+150,options=Handoff.options(options),
            license=checkLicense and checkLicense(license) or nil}
        if not save(record) then return false,"Nao foi possivel salvar a retomada." end
        local saved=load()
        if not saved or saved.from~=record.from or saved.to~=destination or saved.untilTime~=record.untilTime then
            clear()
            return false,"Nao foi possivel confirmar a retomada."
        end
        if not available then return false,"Retomada salva para abrir o loader manualmente." end
        if not queued then
            local ok,result=pcall(io.queue,bootstrap)
            if not ok or result==false then return false,"O executor recusou a abertura automatica; retomada salva." end
            queued=true
        end
        return true
    end
    return {available=available,take=take,arm=arm,clear=clear,destination=function()
        local record=pending()
        return record and record.to
    end}
end
return Handoff

end)()

local Reconnect = (function()
-- Luau · potato_reconnect.luau · bounded recovery for native connection errors
local Reconnect={}

function Reconnect.code(text)
    if type(text)~="string" then return nil end
    local number=tonumber(text:match("%([^()%c]-:%s*(%d+)%s*%)")
        or text:lower():match("error%s+code%s*:%s*(%d+)"))
    if number==266 or number==277 or number==279 then return number end
end

function Reconnect.watch(services,lifecycle,active,onError)
    local core=services.CoreGui
    if not core then return end
    task.spawn(function()
        local handled=false
        while lifecycle.alive() do
            if active() and not handled then
                local ok,code=pcall(function()
                    local prompts=core:FindFirstChild("RobloxPromptGui")
                    local layer=prompts and prompts:FindFirstChild("promptOverlay")
                    local prompt=layer and layer:FindFirstChild("ErrorPrompt")
                    if not prompt or not prompt:IsA("GuiObject") or not prompt.Visible then return nil end
                    for _,object in ipairs(prompt:GetDescendants()) do
                        if object:IsA("TextLabel") and object.Visible then
                            local found=Reconnect.code(object.Text)
                            if found then return found end
                        end
                    end
                end)
                if ok and code then handled=true onError(code) end
            end
            task.wait(1.5)
        end
    end)
end

return Reconnect

end)()

local Membership = (function()
-- Luau · potato_membership.luau · display metadata from the access provider · Roblox / CLI · Luau 0.745
local Membership={}
local avatars={}
local function clean(value,limit)
    return type(value)=="string" and string.sub(string.gsub(value,"[%c]",""),1,limit) or nil
end
function Membership.normalize(options,key,metadata)
    options=options or {}
    local external=type(options.validate)=="function"
    local data=external and (type(metadata)=="table" and metadata or {}) or options
    local expires=data.expiresAt
    local validExpiry=type(expires)=="number" and expires==expires and expires>0 and expires<253402300800 and expires%1==0
    local label
    if external then
        label=clean(data.keyLabel,24) or type(key)=="string" and ("•••• "..string.sub(key,-4)) or "—"
    else label=clean(key or options.key,48) or "—" end
    if #label>20 then label=string.sub(label,1,4).."…"..string.sub(label,-4) end
    return {plan=clean(data.plan,24) or "Member",keyLabel=label,
        expiresAt=validExpiry and expires or nil,lifetime=expires==nil and data.lifetime==true,
        invalid=expires~=nil and not validExpiry,source=external and "Licenca validada" or "Acesso local"}
end
function Membership.expired(data,now)
    return data~=nil and (data.invalid==true or type(data.expiresAt)=="number" and now>=data.expiresAt)
end
function Membership.describe(data,now)
    data=data or {}
    local expired=Membership.expired(data,now)
    local validity="Validade nao informada"
    if data.invalid then validity="Validade invalida"
    elseif expired then validity="Expirada"
    elseif type(data.expiresAt)=="number" then
        local seconds=math.max(0,data.expiresAt-now)
        local days=math.floor(seconds/86400)
        local hours=math.floor(seconds%86400/3600)
        local minutes=math.floor(seconds%3600/60)
        validity=days>0 and string.format("%dd %02dh %02dm",days,hours,minutes) or hours>0 and string.format("%dh %02dm",hours,minutes) or string.format("%dm %02ds",minutes,math.floor(seconds%60))
    elseif data.lifetime then validity="Life time" end
    return {plan=data.plan or "Member",keyLabel=data.keyLabel or "—",validity=validity,
        expired=expired==true,expiresAt=data.expiresAt,lifetime=data.lifetime==true,source=data.source or "Acesso local"}
end
function Membership.requestAvatar(players,userId,onReady)
    if avatars[userId] then onReady(avatars[userId]) return end
    task.spawn(function()
        local ok,content,ready=pcall(players.GetUserThumbnailAsync,players,userId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size150x150)
        if ok and ready~=false and type(content)=="string" and #content>0 then avatars[userId]=content onReady(content) end
    end)
end
return Membership

end)()

local AntiIdle = (function()
-- Luau · potato_anti_idle.luau · event-driven idle handling · Roblox / CLI · Luau 0.745
local AntiIdle={}
function AntiIdle.create(signal,enabled,pulse,log,clock)
    clock=clock or os.clock
    local closed,nextAt=false,0
    local stats={events=0,handled=0,failures=0,available=signal~=nil}
    local connection=nil
    if signal then connection=signal:Connect(function()
        stats.events+=1
        if closed or not enabled() or clock()<nextAt then return end
        nextAt=clock()+60
        local ok,why=pcall(pulse)
        if ok then stats.handled+=1 stats.lastError=nil
        else stats.failures+=1 stats.lastError=tostring(why) if log then log("Anti-AFK indisponivel: "..tostring(why),"error") end end
    end) end
    return {stats=stats,close=function() closed=true if connection then connection:Disconnect() connection=nil end end}
end
return AntiIdle

end)()

local NativeMap = (function()
-- Luau · potato_native_map.luau · bounded read-only native closure discovery · Roblox / CLI · Luau 0.745
local NativeMap={}
function NativeMap.discover(controller,folder,options)
    options=options or {}
    local typeOf=options.typeOf or typeof
    local getters=options.getters or {}
    if not options.getters then
        if type(getupvalues)=="function" then table.insert(getters,getupvalues) end
        if debug and type(debug.getupvalues)=="function" then table.insert(getters,debug.getupvalues) end
    end
    local info={api=#getters>0,visited=0,samples=0}
    if #getters==0 then info.reason="upvalue getter unavailable" return nil,nil,info end
    local queue,seen={},{}
    for _,name in ipairs({"SetUseHeld","GetParts","GetRemovedFraction","Start","Init"}) do
        if type(controller[name])=="function" then table.insert(queue,{fn=controller[name],depth=0}) end
    end
    local found,state=nil,nil
    local cursor=1
    while cursor<=#queue and info.visited<32 do
        local current=queue[cursor] cursor+=1
        if not seen[current.fn] then
            seen[current.fn]=true info.visited+=1
            local values=nil
            for _,getter in ipairs(getters) do
                local ok,result=pcall(getter,current.fn)
                if ok and type(result)=="table" then values=result break end
            end
            local inspected=0
            for _,value in pairs(values or {}) do
                inspected+=1 if inspected>64 then break end
                if type(value)=="function" and current.depth<3 and #queue<64 then
                    table.insert(queue,{fn=value,depth=current.depth+1})
                elseif type(value)=="table" then
                    if rawget(value,"PotatoSlots")~=nil and type(rawget(value,"Seed"))=="number" then state=value end
                    if not found then
                        local checked,valid,unique=0,0,{}
                        for part,id in pairs(value) do
                            checked+=1 if checked>16 then break end
                            if typeOf(part)=="Instance" and type(id)=="number" and id%1==0 and id>=1 and id<=30009 then
                                local ok,match=pcall(function() return part:IsA("BasePart") and part:IsDescendantOf(folder) end)
                                if ok and match and not unique[id] then valid+=1 unique[id]=true end
                            end
                        end
                        if valid>=3 and valid>=math.min(16,checked)*0.8 then found=value info.samples=valid end
                    end
                end
            end
        end
    end
    info.found=found~=nil info.state=state~=nil
    info.reason=found and "native part-to-ID table" or "no matching native table"
    return found,state,info
end
function NativeMap.id(map,part,folder,typeOf)
    typeOf=typeOf or typeof
    if type(map)~="table" or typeOf(part)~="Instance" then return nil end
    local id=rawget(map,part)
    if type(id)~="number" or id%1~=0 or id<1 or id>30009 then return nil end
    local ok,valid=pcall(function() return part.Parent~=nil and part:IsA("BasePart") and part:IsDescendantOf(folder) end)
    return ok and valid and id or nil
end
return NativeMap

end)()

local Burst = (function()
-- Luau · potato_burst.luau · bounded acknowledged collection experiment · Roblox / CLI · Luau 0.745
local Burst={}
function Burst.new()
    local stats={waves=0,requests=0,inventory_gain=0,timeouts=0,cancelled=0,limit=2,pending=0,successes=0}
    local pending=nil
    local retryAt=0
    local seen={}
    local started=nil
    return {
        stats=stats,
        cancel=function()
            if pending then stats.cancelled+=1 end
            pending=nil stats.pending=0
        end,
        observe=function(now,count)
            if started then stats.elapsed=math.max(0,now-started) stats.gain_per_second=stats.inventory_gain/math.max(1,stats.elapsed) end
            if not pending then return 0,false end
            local gain=type(count)=="number" and count-pending.before or 0
            if gain>0 then
                stats.inventory_gain+=gain stats.successes+=1
                -- Progress does not confirm that every requested ID was accepted.
                if stats.successes%3==0 then stats.limit=math.min(16,stats.limit+1) end
                pending=nil stats.pending=0 retryAt=now+0.08
                return gain,false
            end
            if now>=pending.deadline then
                stats.timeouts+=1 stats.limit=math.max(1,math.floor(stats.limit/2))
                pending=nil stats.pending=0 retryAt=now+math.min(0.6,0.08*stats.timeouts)
                return 0,true
            end
            return 0,false
        end,
        budget=function(now,carried,capacity)
            if pending or now<retryAt or type(carried)~="number" or type(capacity)~="number" or carried~=carried or capacity~=capacity or carried<0 or carried==math.huge then return 0 end
            return math.max(0,math.min(stats.limit,math.floor(capacity-carried)))
        end,
        available=function(id,now) return type(id)=="number" and now>=(seen[id] or 0) end,
        begin=function(now,count,ids)
            if pending or now<retryAt or type(count)~="number" or count<0 or count~=count or count==math.huge or #ids==0 or #ids>stats.limit then return false end
            local unique={}
            for _,id in ipairs(ids) do
                if type(id)~="number" or id%1~=0 or id<0 or id>=4294967296 or unique[id] or now<(seen[id] or 0) then return false end
                unique[id]=true
            end
            for id in pairs(unique) do seen[id]=now+1 end
            if not started then started=now end
            if stats.waves%64==0 then for id,untilTime in pairs(seen) do if untilTime<=now then seen[id]=nil end end end
            pending={before=count,deadline=now+0.35}
            stats.waves+=1 stats.requests+=#ids stats.pending=#ids
            return true
        end,
    }
end
return Burst

end)()

local Exit = (function()
-- Luau · potato_exit.luau · observed key and native vehicle prompts · Roblox · Luau 0.745
local Exit={}
function Exit.create(services,modules,nav,log)
    local player=services.Players.LocalPlayer
    local shared=modules["Shared.PlayerStateShared"] or {}
    local packets=modules["Modules.Resources.Packets"] or {}
    local target,scanAt=nil,0
    local started,finished=false,false
    local finishedAt=nil
    local attempts,lastError=0,nil
    local connections={}
    local candidates={}
    local function keyTool()
        for _,parent in ipairs({player:FindFirstChild("Backpack") or false,player.Character or false}) do
            if parent then for _,tool in ipairs(parent:GetChildren()) do
                local name=string.lower(tool.Name)
                if tool:IsA("Tool") and (name=="key" or name:find("chave",1,true) or name:find("crane",1,true) and name:find("key",1,true)) then return tool end
            end end
        end
    end
    local function hasKey()
        if type(shared.TryGetPlayerState)=="function" then
            local ok,data=pcall(shared.TryGetPlayerState,player)
            if ok and type(data)=="table" and data.HasKey==true then return true end
        end
        return keyTool()~=nil
    end
    local function scan()
        if os.clock()<scanAt then return target end
        scanAt=os.clock()+2 target=nil candidates={}
        local map=services.Workspace:FindFirstChild("Map")
        local root=nav.actor()
        local best=-math.huge
        for _,prompt in ipairs(map and map:GetDescendants() or {}) do
            if prompt:IsA("ProximityPrompt") and prompt.Enabled then
                local path=string.upper(prompt:GetFullName())
                local action=string.upper(prompt.ActionText.." "..prompt.ObjectText)
                local vehicle=path:find("TRUCK",1,true) or path:find("CRANE",1,true) or path:find("GUINDASTE",1,true) or path:find("CAMINH",1,true) or path:find("WRECK",1,true)
                local key=action:find("KEY",1,true) or action:find("CHAVE",1,true)
                local use=action:find("UNLOCK",1,true) or action:find("USE",1,true) or action:find("ENTER",1,true) or action:find("DRIVE",1,true) or action:find("ESCAPE",1,true)
                local buy=action:find("BUY",1,true) or action:find("LOCKED",1,true) or action:find("SOLD",1,true)
                local shop=path:find("STOREITEMS",1,true) or path:find("PEELINGMACHINES",1,true)
                if not shop and not buy and (key or vehicle and use) then
                    local position=nav.promptPosition(prompt)
                    local distance=root and position and (root.Position-position).Magnitude or 0
                    local score=(vehicle and 10000 or 0)+(key and 1000 or 0)-distance
                    table.insert(candidates,{path=prompt:GetFullName(),action=prompt.ActionText,object=prompt.ObjectText})
                    if score>best then best=score target=prompt end
                end
            end
        end
        return target
    end
    local escaped=packets.Escaped and packets.Escaped.OnClientEvent
    if escaped and type(escaped.Connect)=="function" then
        local ok,connection=pcall(escaped.Connect,escaped,function(first)
            if not finished and (first==nil or first==player or first==player.UserId) then
                finished=true finishedAt=os.clock() lastError=nil
            end
        end)
        if ok then table.insert(connections,connection) end
    end
    return {
        ready=function() return not finished and (started or hasKey()) end,
        step=function(valid)
            local prompt=scan()
            if not prompt then lastError="Nenhum prompt de chave/saida verificavel esta habilitado." return false,lastError end
            local tool=keyTool()
            local character=player.Character
            local humanoid=character and character:FindFirstChildOfClass("Humanoid")
            if tool and humanoid then pcall(humanoid.EquipTool,humanoid,tool) end
            nav.aim(prompt,true)
            local ok,success,message=pcall(nav.trigger,prompt,valid)
            nav.clearAim()
            attempts+=1 scanAt=0
            if finished then return true end
            if not ok then lastError=tostring(success) return false,lastError end
            if not success then lastError=message return false,message end
            started=true lastError=nil
            log("Interacao de saida acionada: "..prompt:GetFullName())
            nav.waitFor(0.4,valid)
            return true
        end,
        finishTime=function() return finishedAt end,
        diagnostic=function() return {has_key=hasKey(),started=started,finished=finished,attempts=attempts,last_error=lastError,candidates=candidates} end,
        close=function() for _,connection in ipairs(connections) do connection:Disconnect() end end,
    }
end
function Exit.endingSkipper(gui,bridge,clock,cameraFallback,cameraMode)
    clock=clock or os.clock
    local started,nextAt,pressed=nil,0,nil
    local victoryAt,nextRelease,lastCameraMode=nil,0,nil
    local stats={attempts=0,sent=false,button_gone=false,camera_attempts=0,events={},screens={}}
    local seenScreens={}
    local roots={escape=true,outro=true,outrocutscene=true,endcutscene=true,endingcutscene=true,
        victory=true,escapecutscene=true,cutscene=true,runreport=true,runresults=true,escapereport=true}
    local actions={skip=true,skipscene=true,skipcutscene=true,skipoutro=true,skipending=true,
        skipoutrocutscene=true,skipanimation=true,pular=true,pularcena=true}
    local function normalized(value) return string.lower((tostring(value):gsub("[^%w]",""))) end
    local function inEnding(button,screen)
        local current=button
        local recognized=false
        while current do
            local name=normalized(current.Name)
            if name:find("intro",1,true) or name:find("tutorial",1,true) then return false end
            recognized=recognized or roots[name]==true
            if current==screen then return recognized end
            current=current.Parent
        end
        return false
    end
    local function event(name)
        if not started or #stats.events>=20 or clock()-started>60 then return end
        table.insert(stats.events,{name=name,seconds=math.floor((clock()-started)*100)/100})
    end
    local function poll(armed,enabled)
        if not armed or not enabled then return end
        local now=clock()
        started=started or now
        if now-started<=60 and cameraMode then
            local mode=cameraMode()
            if mode and mode~=lastCameraMode then lastCameraMode=mode event("camera:"..mode) end
        end
        if pressed then stats.button_gone=pressed.Parent==nil or not bridge.visible(pressed) return end
        if now-started>math.max(20,victoryAt and victoryAt-started+20 or 0) then
            stats.reason=stats.reason or "no visible native skip control" return
        end
        if now<nextAt or stats.attempts>=2 then return end
        nextAt=now+0.5
        local choices={}
        for _,screen in ipairs(gui:GetChildren()) do
            if screen:IsA("ScreenGui") and screen.Enabled then
                if not seenScreens[screen.Name] and #stats.screens<24 then
                    seenScreens[screen.Name]=true table.insert(stats.screens,screen.Name)
                end
                for _,button in ipairs(screen:GetDescendants()) do
                    if button:IsA("GuiButton") and button.Active and inEnding(button,screen)
                        and bridge.visible(button) and button.AbsoluteSize.X>0 and button.AbsoluteSize.Y>0
                        and (actions[normalized(button.Name)] or actions[normalized(bridge.texts(button))]) then
                        table.insert(choices,button)
                    end
                end
            end
        end
        stats.candidates=#choices
        if #choices~=1 then stats.reason=#choices>1 and "ambiguous native skip controls" or nil return end
        stats.attempts+=1 stats.path=choices[1]:GetFullName()
        local ok,message=bridge.activate(choices[1])
        stats.sent=ok==true stats.reason=message
        if ok then pressed=choices[1] else nextAt=now+2 end
    end
    local function afterVictory(confirmed,enabled)
        if not confirmed then return end
        local now=clock()
        if not victoryAt then victoryAt=now event("escape_confirmed") end
        if not enabled or not cameraFallback or stats.sent or stats.camera_attempts>=2 then return end
        if now-victoryAt<1 or now-victoryAt>12 or now<nextRelease then return end
        if cameraMode and cameraMode()~="Scriptable" then return end
        if stats.camera_released and not cameraMode then return end
        nextRelease=now+1.5
        stats.camera_attempts+=1
        local ok,released=pcall(cameraFallback)
        stats.camera_released=stats.camera_released or ok and released==true
        stats.camera_result=ok and released==true and "local camera returned after confirmed escape"
            or ok and "no scriptable camera with active character" or "camera reset failed"
        if ok and released then event("camera_released") end
    end
    return {poll=poll,afterVictory=afterVictory,event=event,stats=stats}
end
return Exit

end)()

local Recovery = (function()
-- Luau · potato_recovery.luau · explicit native UI recovery · Roblox / CLI · Luau 0.745
local Recovery={}
local allowed={Cash=true,Bag=true,Hotbar=true,ToolHotbar=true,ToolBar=true,Toolbar=true,Tools=true,ToolSelection=true,Interactions=true,Interaction=true,ProximityPrompts=true}
function Recovery.restore(services,modules)
    modules=modules or {}
    local report={restored=0,errors=0,names={},cloned={},missing={},screens={}}
    local function attempt(callback)
        local ok=pcall(callback)
        if not ok then report.errors+=1 end
    end
    local function call(path,name,...)
        local module=modules[path]
        if type(module)=="table" and type(module[name])=="function" then
            local args=table.pack(...)
            attempt(function() module[name](table.unpack(args,1,args.n)) end)
        end
    end
    call("Controllers.CuttingController","SetHeld",false)
    call("Controllers.CuttingController","SetAuto",false)
    call("Controllers.PotatoPileController","SetUseHeld",false)
    local peeling=modules["Controllers.PeelingController"]
    if peeling and peeling.IsPeeling==true then
        local packets=modules["Modules.Resources.Packets"] or {}
        if packets.PeelingCancel and type(packets.PeelingCancel.Fire)=="function" then attempt(function() packets.PeelingCancel:Fire() end) end
        call("Controllers.PeelingController","StopPeeling")
    end
    call("Controllers.StoreViewController","Close")
    call("Controllers.ToolUpgradeController","SetOpen",false)
    local player=services.Players.LocalPlayer
    local gui=player:FindFirstChild("PlayerGui")
    if gui then
        local starter=services.StarterGui
        if starter and type(starter.GetChildren)=="function" and type(gui.FindFirstChild)=="function" then
            for _,template in ipairs(starter:GetChildren()) do
                if template:IsA("ScreenGui") and allowed[template.Name] and not gui:FindFirstChild(template.Name,true) then
                    attempt(function()
                        local copy=template:Clone()
                        copy.Enabled=true copy.Parent=gui
                        table.insert(report.cloned,copy.Name)
                    end)
                end
            end
        end
        for _,object in ipairs(gui:GetDescendants()) do
            if allowed[object.Name] then
                attempt(function()
                    if object:IsA("ScreenGui") then object.Enabled=true
                    elseif object:IsA("GuiObject") then
                        local ancestor=object.Parent
                        local screen=nil
                        while ancestor and ancestor~=gui do
                            if ancestor:IsA("ScreenGui") then screen=ancestor break end
                            ancestor=ancestor.Parent
                        end
                        if screen and (screen.Name=="ToolUpgrades" or screen.Name=="StoreView" or screen.Name:find("Cutscene",1,true)) then return end
                        object.Visible=true
                        if screen then screen.Enabled=true end
                    else return end
                    report.restored+=1 table.insert(report.names,object.Name)
                end)
            end
        end
    end
    if gui and type(gui.FindFirstChild)=="function" then
        for _,name in ipairs({"Hotbar","Bag"}) do if not gui:FindFirstChild(name,true) then table.insert(report.missing,name) end end
        for _,screen in ipairs(gui:GetChildren()) do
            if screen:IsA("ScreenGui") then table.insert(report.screens,{name=screen.Name,enabled=screen.Enabled}) end
        end
    end
    if services.ProximityPromptService then attempt(function() services.ProximityPromptService.Enabled=true end) end
    local scripts=player:FindFirstChild("PlayerScripts")
    local module=scripts and scripts:FindFirstChild("PlayerModule")
    if module then
        attempt(function()
            local controls=require(module):GetControls()
            controls:Enable()
        end)
    end
    local character=player.Character
    local humanoid=character and character:FindFirstChildOfClass("Humanoid")
    if humanoid then attempt(function() humanoid.AutoRotate=true end) end
    return report
end
return Recovery

end)()

local Core = (function()
-- Luau · potato_core.luau · configuration and task coordination · Roblox / CLI · Luau 0.745
local Core = {}

Core.defaults = {
    opAutoFinish=false,opKeyShortcut=true,antiAfk=true,coolHoldSeconds=5,coolHoldFallback=true,skipEndingScene=true,
    releaseEndingCamera=true,opBatchFunding=true,opFastPrompts=true,partyProfile="Solo",partyRole="Leader",partySize=4,partySlot=1,
    teamFunding=false,teamLead=false,supportCut=false,
    nativeWalkUpgrade=false,
    fastDelivery=true,placementDelay=0.01,throughputMode=true,
    autoRepairGui=true,aimTable=true,autoEscape=false,productionBatch=500,
    autoProgress = false, autoCut = false, autoFarm = false, autoDeliver = false,
    autoCool = false, autoSell = false, autoDynamite = false, autoCrank = false, autoBuyTools = false, autoBuyUpgrades = false,
    autoBuyStorage = false, collectPumpkins = false, pumpkinPriority = true, priorityValue = true,
    cutBuyTools = true, rarity = "Any", selection = "Nearest", tableChoice = "Nearest",
    deliveryMode = "Amount", deliveryTarget = "Crate",
    movement = "Teleport", speedMode = "Turbo", cutMode = "Fast", teleportSettle = 0.10,
    pickBatch = 8, cutBurst = 3,cutTargetRate=20,cutToolMultiplier=4,
    auraCollect=true,auraRadius=16,collectTool="Auto",logicalSpecials=true,autoRecover=true,
    sellThreshold=500,sellRemainder=true,buyAfterSell=true,returnAfterSell=true,
    infiniteBag=false,collectGems=true,gemPriority=true,
    upgradeDrone=true,upgradeMachines=true,upgradeGeneral=true,saveForNextTool=true,
    dynamiteInterval=1,dynamiteAggressive=false,
    maintainCutBuffer=true,cutBuffer=400,fixMenuBlur=true,buyMachines=true,clearPileFirst=true,autoBuyDrone=false,worthEarlyLimit=3,forceThirdPerson=false,cameraDistance=20,aimCooling=true,keyPriority=true,
    uiWidth = 760, uiHeight = 580, uiScale = 65, uiX = 0.5, uiY = 0.5,
    buttonX = 0.03, buttonY = 0.22, buttonSize = 56,
    deliveryFill = 90, deliveryBatch = 1000, heatStart = 60, heatStop = 25, coolingRetry = 12,
    reserveCash = 0, maxPurchase = 0, actionDelay = 0.04, actionTimeout = 10,
    travelTimeout = 30, maxDistance = 250, returnAfterCooling = true,
    showStatus = true, notifications = true,
    pauseOnMovement = true,
    keyProgress = "F6", keyCut = "F7", keyFarm = "F8", keyCool = "F9",
    keyBuy = "F10", keyMenu = "Insert", keyPause = "End",
    keyDeliver = "None", keyPumpkin = "None", keyStorage = "None", keyUpgrades = "None",
    keyCrank = "None",
    keySell="None",keyDynamite="None",
}

local ranges = {
    partySlot={1,4},partySize={2,4},
    coolHoldSeconds={1,5},
    deliveryFill = {10,100}, deliveryBatch = {1,1000000}, heatStart = {15,100}, heatStop = {0,90},
    coolingRetry = {5,120}, reserveCash = {0,100000000}, maxPurchase = {0,100000000},
    actionDelay = {0.02,5}, actionTimeout = {2,60}, travelTimeout = {5,120}, maxDistance = {10,1000},
    teleportSettle={0.05,1}, uiWidth={300,1100}, uiHeight={340,900}, uiScale={65,150},
    uiX={0,1},uiY={0,1},buttonX={0,1},buttonY={0,1},buttonSize={44,88},
    pickBatch={1,16},cutBurst={1,6},
    placementDelay={0.005,0.08},
    productionBatch={50,10000},
    auraRadius={5,18},
    cutBuffer={1,10000},
    worthEarlyLimit={1,10},cameraDistance={8,100},
    cutTargetRate={1,40},cutToolMultiplier={1,4},
    sellThreshold={1,1000000},dynamiteInterval={0.1,15},
}
local choices = {
    partyProfile={Solo=true,Team=true,Mixed=true},
    partyRole={Leader=true,Collect=true,Cut=true},
    rarity = {Any=true,Rainbow=true,Diamond=true,Golden=true},
    selection = {Nearest=true,Random=true},
    deliveryMode = {Amount=true,Percent=true},
    deliveryTarget = {Crate=true,Table=true,Manual=true,Auto=true},
    movement={Walk=true,Teleport=true},speedMode={Turbo=true,Standard=true},cutMode={Fast=true,Native=true},
    collectTool={Auto=true,Hand=true,Shovel=true,PotatoSucker=true},
    tableChoice = {Nearest=true,PeelingTable1=true,PeelingTable2=true,PeelingTable3=true,PeelingTable4=true},
}
local automation = {"opAutoFinish","autoProgress","autoCut","autoFarm","autoDeliver","autoCool","autoCrank","autoSell","autoDynamite",
    "autoBuyTools","autoBuyUpgrades","autoBuyStorage","collectPumpkins","autoEscape"}

function Core.clone(value)
    if type(value) ~= "table" then return value end
    local result = {}
    for key, item in pairs(value) do result[key] = Core.clone(item) end
    return result
end

function Core.validate(values, resetActive)
    local config = Core.clone(Core.defaults)
    if type(values) == "table" then
        for key, default in pairs(Core.defaults) do
            local value = values[key]
            if type(value) == type(default) then
                if type(value) == "number" then
                    if value == value and value ~= math.huge and value ~= -math.huge then
                        local range = ranges[key]
                        config[key] = range and math.clamp(value,range[1],range[2]) or value
                    end
                elseif choices[key] then
                    if choices[key][value] then config[key] = value end
                elseif type(value)=="string" and string.sub(key,1,3) == "key" then
                    if #value > 0 and #value < 24 and string.match(value,"^[%w]+$") then config[key] = value end
                else
                    config[key] = value
                end
            end
        end
    end
    config.heatStop = math.min(config.heatStop,config.heatStart - 5)
    config.deliveryBatch=math.floor(config.deliveryBatch)
    config.pickBatch=math.floor(config.pickBatch) config.cutBurst=math.floor(config.cutBurst)
    config.sellThreshold=math.floor(config.sellThreshold)
    config.partySlot=math.floor(config.partySlot)
    config.partySize=math.floor(config.partySize)
    if config.opAutoFinish then config.autoProgress=false end
    if resetActive then
        for _, key in ipairs(automation) do config[key] = false end
    end
    return config
end

function Core.pause(config)
    for _, key in ipairs(automation) do config[key] = false end
end

function Core.applyPartyProfile(config)
    Core.pause(config)
    local mixed=config.partyProfile=="Mixed"
    local team=config.partyProfile=="Team"
    local collector=team and config.partyRole=="Collect"
    local cutter=team and config.partyRole=="Cut"
    config.teamFunding=collector
    config.teamLead=team and config.partyRole=="Leader"
    config.supportCut=mixed or cutter
    config.nativeWalkUpgrade=mixed
    config.tableChoice=team and "PeelingTable"..config.partySlot or "Nearest"
    config.movement=mixed and "Walk" or "Teleport"
    config.cutMode=mixed and "Native" or "Fast"
    config.speedMode=mixed and "Standard" or "Turbo"
    config.fastDelivery=not mixed
    config.aimTable=not mixed
    config.auraCollect=not mixed
    config.logicalSpecials=not mixed
    config.forceThirdPerson=false
    config.deliveryTarget="Crate"
    config.cutBuyTools=true
    if not mixed and not collector and not cutter then
        config.opAutoFinish=true
    elseif collector then
        config.deliveryMode="Amount"
        config.deliveryBatch=100
        config.collectTool="Auto"
        config.rarity="Any"
        config.autoFarm=true
        config.autoDeliver=true
        config.autoDynamite=true
        config.autoBuyTools=true
        config.autoBuyStorage=true
        config.autoBuyUpgrades=true
    else
        config.autoCut=true
        config.autoSell=true
        config.autoBuyTools=true
        config.autoBuyUpgrades=true
        config.autoEscape=cutter
    end
end

function Core.progress(config) return config.autoProgress or config.opAutoFinish end
function Core.batchCollect(config) return config.opAutoFinish or config.teamFunding and config.autoFarm end
function Core.anyActive(config)
    for _,name in ipairs(automation) do if config[name] then return true end end
    return false
end
function Core.displayed(config,name)
    if type(config[name])~="boolean" then return config[name] end
    if name=="opAutoFinish" or name=="autoProgress" then return config[name]==true end
    if config.opAutoFinish then return config[name] end
    return Core.effective(config,name)
end

function Core.effective(config, name)
    if name=="autoCrank" and Core.progress(config) and config.deliveryTarget=="Manual" then return true end
    if name == "autoFarm" and config.collectPumpkins then return true end
    if name == "autoCool" or name == "autoFarm" or name == "autoDeliver"
        or name == "autoBuyTools" or name == "autoBuyUpgrades" or name == "autoBuyStorage" or name=="autoSell" or name=="autoDynamite" or name=="autoEscape" then
        if Core.progress(config) then return true end
    end
    if name == "autoCut" then return Core.progress(config) or config.autoCut end
    if name == "autoBuyTools" and config.autoCut and config.cutBuyTools then return true end
    return config[name] == true
end

function Core.acceptVariant(config, kind, isPumpkin,isGem)
    if config.opAutoFinish then return not isPumpkin or config.collectPumpkins end
    if isPumpkin then return config.collectPumpkins end
    if isGem and config.collectGems then return true end
    if not config.autoProgress and not config.autoFarm and not config.autoDynamite then return false end
    if config.rarity == "Any" then return true end
    return kind ~= nil and string.lower(tostring(kind)) == string.lower(config.rarity)
end

function Core.affordable(config, cash, price, currency)
    if currency ~= "Cash" then return false,"currency" end
    if type(cash) ~= "number" or type(price) ~= "number" or cash ~= cash or price ~= price
        or cash == math.huge or price == math.huge or price <= 0 then return false,"unconfirmed" end
    if config.maxPurchase > 0 and price > config.maxPurchase then return false,"purchase_limit" end
    if cash - price < config.reserveCash then return false,"reserve" end
    return true
end

function Core.parseAmount(text)
    if type(text) ~= "string" then return nil end
    local trimmed = string.gsub(text,"%s","")
    if string.find(string.upper(trimmed),"R$",1,true) or string.find(string.upper(trimmed),"ROBUX",1,true) then return nil end
    local value = string.match(trimmed,"%-?[%d][%d%.,]*")
    if not value then return nil end
    local lastComma, lastDot
    for i = 1,#value do
        local c = string.sub(value,i,i)
        if c == "," then lastComma = i elseif c == "." then lastDot = i end
    end
    if lastComma and lastDot then
        if lastComma > lastDot then
            value = string.gsub(string.gsub(value,"%.",""),",",".")
        else
            value = string.gsub(value,",","")
        end
    elseif lastComma then
        local tail = #value-lastComma
        value = string.gsub(value,",",tail == 3 and "" or ".")
    elseif lastDot and #value-lastDot == 3 then
        value = string.gsub(value,"%.","")
    end
    local amount = tonumber(value)
    if not amount or amount < 0 then return nil end
    local suffix = string.upper(string.match(trimmed,"[%d][%d%.,]*([KkMmBbTt])") or "")
    local multiplier = ({K=1000,M=1000000,B=1000000000,T=1000000000000})[suffix] or 1
    amount = amount * multiplier
    return amount
end

function Core.purchaseReady(config,cash,price,level,blocked)
    if not Core.affordable(config,cash,price,"Cash") then return false end
    return not blocked or cash>=blocked.cash or level~=blocked.level
end

function Core.parseCapacity(text)
    if type(text) ~= "string" then return nil,nil end
    local left,right=string.match(text,"^(.-)/(.-)$")
    if not left or not right then return nil,nil end
    local current=Core.parseAmount(left)
    local capacity=string.find(right,"∞",1,true) and math.huge or Core.parseAmount(right)
    if not current or not capacity or capacity<=0 or current%1~=0 then return nil,nil end
    return current,capacity
end

function Core.bagCount(data,text)
    local value=type(data)=="table" and data.Potatoes or nil
    if type(value)=="number" and value>=0 and value%1==0 and value<math.huge then return value,true end
    local count=Core.parseCapacity(text)
    return count,false
end

function Core.coolingLatch(wasCooling, heatPercent, config, alarm)
    if type(heatPercent) == "number" and heatPercent == heatPercent then
        if wasCooling then return heatPercent > config.heatStop end
        return heatPercent >= config.heatStart
    end
    return alarm == true
end

function Core.deliveryGoal(config,capacity)
    if type(capacity)~="number" or capacity<=0 or capacity~=capacity then return nil end
    if capacity==math.huge then return config.deliveryBatch end
    if config.deliveryMode=="Percent" then return math.max(1,math.ceil(capacity*config.deliveryFill/100)) end
    return math.min(capacity,config.deliveryBatch)
end

function Core.productionGoal(config,capacity,crate)
    if config.opAutoFinish and config.teamLead and type(crate)=="number" and crate<100 then
        return math.min(capacity or 100,100)
    end
    if config.opAutoFinish then return capacity end
    return math.min(capacity or config.productionBatch,config.productionBatch)
end

function Core.tickInterval(config)
    return config.speedMode=="Turbo" and math.min(config.actionDelay,0.02) or config.actionDelay
end

function Core.pickLimit(config,carried,capacity,pumpkin)
    if pumpkin or config.speedMode~="Turbo" then return 1 end
    local goal=Core.deliveryGoal(config,capacity)
    return math.max(1,math.min(config.pickBatch,math.max(1,capacity-carried),math.max(1,(goal or capacity)-carried)))
end

function Core.choose(config, state, now)
    local function ready(action) return now>=((state.retryAt or {})[action] or 0) end
    local bulkOnly=config.opAutoFinish and state.bulkOnly==true
    local quest=state.questAction
    local exhausted=state.mountainEmpty and (quest=="collect" or quest=="gem" or quest=="dynamite"
        or not state.tableReady and not state.cutting and (state.stock or 0)==0 and (state.carried or 0)==0)
    if Core.effective(config,"autoEscape") and state.hasKey and (not quest or quest=="escape" or exhausted) and ready("escape") then return "escape" end
    if Core.effective(config,"autoCool") and state.needCooling and now >= (state.coolingRetryAt or 0) and ready("cool") then return "cool" end
    if quest=="cool" and type(state.heat)=="number" and state.heat>config.heatStop and not state.flowing
        and now>=(state.coolingRetryAt or 0) and ready("cool") then return "cool" end
    if quest=="sell" and (state.stock or 0)>0 and now>=(state.sellRetryAt or 0) and ready("sell") then return "sell" end
    if quest=="cut" or quest=="sell" then
        if state.cutting and ready("cut") then return "cut" end
        if state.tableReady and ready("enterCut") then return "enterCut" end
        if (state.carried or 0)>0 and state.canStageCut and ready("stageCut") then return "stageCut" end
    end
    if quest=="dynamite" and state.dynamiteReady and not state.cutting and ready("dynamite") then return "dynamite" end
    if (quest=="collect" or quest=="gem") and not state.mountainEmpty and state.hasCandidate
        and type(state.carried)=="number" and type(state.capacity)=="number" and state.carried<state.capacity
        and ready("collect") then return "collect" end
    if config.opAutoFinish and config.opKeyShortcut and state.keyProbeReady and ready("keyProbe") then return "keyProbe" end
    if state.postClearUnload and Core.effective(config,"autoDeliver") and ready("deliver") then return "deliver" end
    if config.teamFunding and state.mountainEmpty and state.carried and state.carried>0
        and Core.effective(config,"autoDeliver") and ready("deliver") then return "deliver" end
    if not bulkOnly and state.droneReady and ready("drone") then return "drone" end
    if state.deliveryPending and (Core.effective(config,"autoDeliver") or Core.effective(config,"autoCut")) and ready("deliver") then return "deliver" end
    if not bulkOnly and Core.effective(config,"autoSell") and state.sellReady and now>=(state.sellRetryAt or 0) and ready("sell") then return "sell" end
    if state.needBuffer and state.carried and state.carried>0 and state.carried>=(state.bufferDeliveryGoal or 1) and ready("deliver") and Core.effective(config,"autoDeliver") then return "deliver" end
    if not bulkOnly and state.returnToTable and state.postSaleWeaponBought and ready("returnTable") then return "returnTable" end
    if not bulkOnly and state.canBuy and now >= (state.buyRetryAt or 0) and ready("buy") then
        if Core.effective(config,"autoBuyTools") or Core.effective(config,"autoBuyUpgrades")
            or Core.effective(config,"autoBuyStorage") or state.afterSale and config.buyAfterSell then return "buy" end
    end
    if not bulkOnly and state.returnToTable and ready("returnTable") then return "returnTable" end
    if not state.mountainEmpty and Core.effective(config,"autoDynamite") and state.dynamiteReady and not state.cutting and ready("dynamite") then return "dynamite" end
    if not bulkOnly and Core.effective(config,"autoCrank") and state.crankReady and ready("crank") then return "crank" end
    local soloCut=config.autoCut and not Core.effective(config,"autoFarm")
    if Core.effective(config,"autoCut") and state.cutting and (soloCut or not state.focusClear and not state.needBuffer) and ready("cut") then return "cut" end
    if Core.effective(config,"autoCut") and not Core.effective(config,"autoFarm") and state.carried and state.carried>0 and state.canStageCut and not state.tableReady and ready("stageCut") then return "stageCut" end
    if Core.effective(config,"autoDeliver") and state.carried and state.carried > 0 then
        local goal=state.deliveryGoal or Core.deliveryGoal(config,state.capacity)
        local full=goal and state.carried>=goal
        local noTargets=state.noCandidate and not (config.opAutoFinish and state.focusClear)
        if (full or noTargets or not Core.effective(config,"autoFarm")) and ready("deliver") then return "deliver" end
    end
    if Core.effective(config,"autoCut") and state.tableReady and (soloCut or not state.focusClear and not state.needBuffer) and ready("enterCut") then return "enterCut" end
    if not state.mountainEmpty and Core.effective(config,"autoFarm") and state.hasCandidate
        and type(state.capacity)=="number" and type(state.carried)=="number"
        and state.capacity>0 and (state.carried < state.capacity or state.candidatePumpkin) and ready("collect") then return "collect" end
    return "idle"
end

function Core.newCancellation()
    local generation = 0
    return {
        current = function() return generation end,
        valid = function(token) return token == generation end,
        cancel = function() generation = generation + 1 return generation end,
    }
end

return Core

end)()

local Layout = (function()
-- Luau · potato_layout.luau · screen bounds and touch layout · Roblox / CLI · Luau 0.745
local Layout={}
function Layout.access(width,height)
    local w,h=math.min(480,math.max(1,width-24)),math.min(520,math.max(1,height-24))
    return {width=w,height=h,x=(width-w)/2,y=(height-h)/2,compact=h<430}
end
function Layout.resolve(width,height,config)
    local margin=8
    local availableW,availableH=math.max(1,width-2*margin),math.max(1,height-2*margin)
    local scale=math.min(config.uiScale/100,availableW/300,availableH/340)
    scale=math.max(0.1,scale)
    local baseW=math.min(config.uiWidth,availableW/scale)
    local baseH=math.min(config.uiHeight,availableH/scale)
    local visualW,visualH=baseW*scale,baseH*scale
    return {width=baseW,height=baseH,scale=scale,
        x=margin+math.clamp(config.uiX,0,1)*math.max(0,availableW-visualW),
        y=margin+math.clamp(config.uiY,0,1)*math.max(0,availableH-visualH),
        visualWidth=visualW,visualHeight=visualH,compact=baseW<580}
end
function Layout.normalized(x,y,width,height,objectW,objectH)
    return math.clamp((x-8)/math.max(1,width-objectW-16),0,1),
        math.clamp((y-8)/math.max(1,height-objectH-16),0,1)
end
function Layout.launcher(width,height,config)
    local size=math.min(config.buttonSize,width-16,height-16)
    return {size=size,x=8+config.buttonX*math.max(0,width-size-16),y=8+config.buttonY*math.max(0,height-size-16)}
end
return Layout

end)()

local Observer = (function()
-- Luau · potato_observer.luau · transparent getter observation · Roblox / CLI · Luau 0.745
local Observer={}
function Observer.create(target,names,onCall)
    local installed={}
    local probing=0
    local closed=false
    local disabled={}
    local stats={installed=0,observed=0,perName={}}
    for _,name in ipairs(names) do
        local original=target[name]
        if type(original)=="function" then
            local wrapper
            wrapper=function(...)
                if closed or disabled[name] then return original(...) end
                local args=table.pack(...)
                local results=table.pack(original(...))
                if not closed and probing==0 then
                    stats.observed+=1
                    stats.perName[name]=(stats.perName[name] or 0)+1
                    local ok,done=pcall(onCall,name,args,results)
                    if ok and done==true or stats.perName[name]>=24 then
                        disabled[name]=true
                        pcall(function() if target[name]==wrapper then target[name]=original end end)
                    end
                end
                return table.unpack(results,1,results.n)
            end
            if pcall(function() target[name]=wrapper end) then
                table.insert(installed,{name=name,original=original,wrapper=wrapper})
                stats.installed+=1
            end
        end
    end
    return {
        read=function(fn,...)
            probing+=1
            local results=table.pack(pcall(fn,...))
            probing-=1
            return table.unpack(results,1,results.n)
        end,
        close=function()
            closed=true
            for _,item in ipairs(installed) do
                pcall(function() if target[item.name]==item.wrapper then target[item.name]=item.original end end)
            end
            table.clear(installed)
        end,
        stats=stats,
        unwrap=function(fn)
            for _,item in ipairs(installed) do if item.wrapper==fn then return item.original end end
            return fn
        end,
    }
end
return Observer

end)()

local Spatial = (function()
-- Luau · potato_spatial.luau · sparse index for live pile geometry · Roblox / CLI · Luau 0.745
local Spatial={}
function Spatial.new(tolerance)
    local cells={}
    local size=math.max(0.1,(tolerance or 0.08)*2)
    local distanceLimit=(tolerance or 0.08)^2
    local count=0
    local function add(position,value)
        local x,y,z=math.floor(position.X/size),math.floor(position.Y/size),math.floor(position.Z/size)
        cells[x]=cells[x] or {} cells[x][y]=cells[x][y] or {} cells[x][y][z]=cells[x][y][z] or {}
        table.insert(cells[x][y][z],{p=position,value=value}) count+=1
    end
    local function find(position)
        local x,y,z=math.floor(position.X/size),math.floor(position.Y/size),math.floor(position.Z/size)
        local best,bestDistance,ambiguous=nil,distanceLimit+1e-12,false
        for dx=-1,1 do
            local column=cells[x+dx]
            if column then for dy=-1,1 do
                local row=column[y+dy]
                if row then for dz=-1,1 do
                    for _,item in ipairs(row[z+dz] or {}) do
                        local px,py,pz=position.X-item.p.X,position.Y-item.p.Y,position.Z-item.p.Z
                        local d=px*px+py*py+pz*pz
                        if d<=distanceLimit then
                            if d<bestDistance-1e-10 then best,bestDistance,ambiguous=item.value,d,false
                            elseif math.abs(d-bestDistance)<1e-10 and best~=item.value then ambiguous=true end
                        end
                    end
                end end
            end end end
        return not ambiguous and best or nil
    end
    return {add=add,find=find,count=function() return count end}
end
return Spatial

end)()

local TopK = (function()
-- Luau · potato_topk.luau · retain the best targets without sorting the entire pile · Roblox / CLI · Luau 0.745
local TopK={}
function TopK.new(limit)
    local heap={}
    local function down(index)
        while index*2<=#heap do
            local child=index*2
            if child+1<=#heap and heap[child+1].score>heap[child].score then child+=1 end
            if heap[index].score>=heap[child].score then break end
            heap[index],heap[child]=heap[child],heap[index] index=child
        end
    end
    return {add=function(item)
        if #heap<limit then
            table.insert(heap,item)
            local index=#heap
            while index>1 do
                local parent=math.floor(index/2)
                if heap[parent].score>=heap[index].score then break end
                heap[parent],heap[index]=heap[index],heap[parent] index=parent
            end
        elseif item.score<heap[1].score then heap[1]=item down(1) end
    end,values=function()
        table.sort(heap,function(a,b) return a.score<b.score end)
        return heap
    end}
end
return TopK

end)()

local Chapter = (function()
-- Luau · potato_chapter2.luau · owned upgrades and progression for chapter 2 · Roblox / CLI · Luau 0.745
local Chapter={}
Chapter.allowed={
    Hand={"PickAmount","PickSpeed","HoldPick"},Shovel={"PickAmount","PickSpeed","HoldPick"},
    Dynamite={"PickAmount","PickSpeed"},PotatoSucker={"PickAmount","Cooling","Charge"},
    Body={"PotatoWorth","Luck","WalkSpeed"},General={"PotatoWorth","Luck","WalkSpeed"},
    Drone={"Capacity","Grasp","FlySpeed"},AutoPeeler={"PeelAmount","PeelSpeed"},HandPeeler={},
}
function Chapter.owns(data,id)
    if type(data)~="table" then return false end
    if id=="Hand" or id=="Body" or id=="General" then return true end
    if id=="Drone" then return data.HasDrone==true end
    if id=="AutoPeeler" then return data.HasAutoPeeler==true end
    if id=="HandPeeler" then return data.HasHandPeeler==true end
    for key,value in pairs(data.Tools or {}) do if value==id or key==id and value~=false and value~=nil then return true end end
    return false
end
function Chapter.canUpgrade(data,tool,id,config)
    local list=Chapter.allowed[tool]
    if not list or not Chapter.owns(data,tool) then return false end
    if config.teamFunding and (tool=="Body" or tool=="General" or tool=="AutoPeeler" or tool=="Drone") then return false end
    if config.supportCut and not config.opAutoFinish and not config.autoProgress and tool~="Body" and tool~="General" then return false end
    if tool=="Drone" and not config.upgradeDrone then return false end
    if (tool=="AutoPeeler" or tool=="HandPeeler") and not config.upgradeMachines then return false end
    if (tool=="Body" or tool=="General") and not config.upgradeGeneral then return false end
    if id=="WalkSpeed" and not config.nativeWalkUpgrade then return false end
    if tool=="Hand" and Chapter.owns(data,"Shovel") then return false end
    for _,name in ipairs(list) do if name==id then return true end end
    return false
end
function Chapter.level(shared,data,tool,id)
    local values=data and data.Upgrades and data.Upgrades[tool]
    local direct=type(values)=="table" and values[id] or nil
    if type(direct)=="number" and direct>=0 then return direct end
    local best=nil
    if type(shared.GetLevel)=="function" then
        local ok,value=pcall(shared.GetLevel,data,tool,id)
        if ok and type(value)=="number" and value>=0 and value%1==0 then best=value end
        if data and type(data.Upgrades)=="table" then
            ok,value=pcall(shared.GetLevel,data.Upgrades,tool,id)
            if ok and type(value)=="number" and value>=0 and value%1==0 then best=math.max(best or 0,value) end
        end
    end
    return best
end
function Chapter.rank(tool,id)
    local order={Shovel=1,Dynamite=2,PotatoSucker=3,Hand=4,AutoPeeler=5,HandPeeler=6,Drone=7,Body=8,General=8}
    local rank=order[tool] or 100
    return rank*10+(id=="PickAmount" and 0 or id=="PickSpeed" and 1 or 2)
end
function Chapter.limit(tool,id,cutRank,lastRank,earlyLimit,nativeWalkUpgrade)
    if id=="WalkSpeed" then return nativeWalkUpgrade and 2 or 0 end
    if (tool=="Body" or tool=="General") and id=="PotatoWorth" then
        return math.huge
    end
    return math.huge
end
function Chapter.definition(shared,tool,id)
    local native=nil
    if type(shared.GetUpgrade)=="function" then local ok,value=pcall(shared.GetUpgrade,tool,id) if ok then native=value end end
    if type(native)=="table" and (native.Id==id or native.Values~=nil or native.MaxLevel~=nil) then return native end
    local definition=nil
    if type(shared.GetUpgradeable)=="function" then local ok,value=pcall(shared.GetUpgradeable,tool) if ok and type(value)=="table" then definition=value end end
    if not definition then
        for _,list in ipairs({shared.Tools or {},shared.Machines or {}}) do
            for _,value in pairs(list) do if type(value)=="table" and value.Id==tool then definition=value break end end
        end
        definition=definition or shared[tool]
    end
    if type(definition)=="table" then
        for key,value in pairs(definition.Upgrades or {}) do
            if type(value)=="table" and (value.Id==id or key==id) then return value end
        end
        if type(shared.GetUpgrade)=="function" then
            local ok,value=pcall(shared.GetUpgrade,definition,id)
            if ok and type(value)=="table" then return value end
        end
    end
    return native
end
function Chapter.maximum(shared,definition)
    if type(shared.GetMaxLevel)=="function" then
        for _,input in ipairs({definition,type(definition)=="table" and definition.Values or false}) do
            local ok,value=pcall(shared.GetMaxLevel,input)
            if ok and type(value)=="number" and value>0 and value%1==0 then return value end
        end
    end
    if type(definition)=="table" and type(definition.MaxLevel)=="number" then return definition.MaxLevel end
    return nil
end
function Chapter.upgradeGuard()
    local refusals={}
    return {
        allowed=function(key,level) local entry=refusals[key] return not entry or entry.level~=level or entry.count<2 end,
        result=function(key,level,success)
            if success then refusals[key]=nil return end
            local previous=refusals[key]
            refusals[key]={level=level,count=previous and previous.level==level and previous.count+1 or 1}
        end,
        reset=function() table.clear(refusals) end,
        records=refusals,
    }
end
function Chapter.maxed(shared,data,tool)
    if not Chapter.owns(data,tool) then return false end
    for _,id in ipairs(Chapter.allowed[tool] or {}) do
        local definition=Chapter.definition(shared,tool,id)
        if definition==nil then return false end
        local maximum=Chapter.maximum(shared,definition)
        local good=maximum~=nil
        local current=Chapter.level(shared,data,tool,id)
        if not good or type(maximum)~="number" or maximum<=0 or current==nil or current<maximum then return false end
    end
    return true
end
function Chapter.luckAllowed(shared,data)
    return Chapter.maxed(shared,data,"PotatoSucker")
end
function Chapter.placementTiming(shared)
    local original=shared and shared.PLACEMENT_STAGGER
    local last=nil
    local stats={available=type(original)=="number" and original>=0.005,original=original}
    local function apply(enabled,delay)
        if not stats.available then return end
        local value=enabled and math.clamp(delay,0.005,original) or original
        if last~=value then
            local ok,why=pcall(function() shared.PLACEMENT_STAGGER=value end)
            if not ok then stats.available=false stats.enabled=false stats.error=tostring(why) return end
            last=value
        end
        stats.applied=value stats.enabled=enabled
    end
    return {apply=apply,stats=stats,close=function()
        if stats.available and shared.PLACEMENT_STAGGER==last then pcall(function() shared.PLACEMENT_STAGGER=original end) end
    end}
end
function Chapter.productionReady(shared,data)
    return Chapter.maxed(shared,data,"Dynamite") and Chapter.maxed(shared,data,"Shovel")
        and Chapter.maxed(shared,data,"AutoPeeler") and Chapter.maxed(shared,data,"PotatoSucker")
end
function Chapter.clearReady(config,shared,data)
    if config.opAutoFinish then return Chapter.owns(data,"Dynamite") or Chapter.owns(data,"PotatoSucker") end
    return Chapter.productionReady(shared,data)
end
function Chapter.opBulkReady(shared,data) return Chapter.maxed(shared,data,"PotatoSucker") end
function Chapter.fundingPlan(Core,config,balance,goal,crate,stock,capacity,complete)
    local plan={needed=false,cut=false,sell=false}
    if not config.opAutoFinish or complete or type(goal)~="table" or type(balance)~="number" or type(goal.price)~="number" then return plan end
    if goal.price<=0 or goal.price~=goal.price or goal.price==math.huge or config.maxPurchase>0 and goal.price>config.maxPurchase then return plan end
    plan.needed=balance<goal.price+config.reserveCash
    if not plan.needed then return plan end
    plan.cut=type(crate)=="number" and crate>0
    local shortfall=goal.price+config.reserveCash-balance
    local batch=50
    if config.opBatchFunding then batch=shortfall>=3 and 150 or shortfall>=1 and 90 or 50 end
    plan.sellTarget=math.min(batch,config.sellThreshold)
    plan.sell=type(stock)=="number" and stock>0 and (stock>=plan.sellTarget or not plan.cut)
    plan.deliveryGoal=math.min(type(capacity)=="number" and capacity>0 and capacity or batch,plan.sellTarget)
    return plan
end
function Chapter.pickTiming(shared,controller,pileController,data,tool)
    local remaining,interval,source=0,nil,"unavailable"
    if type(pileController.GetPickCooldown)=="function" then
        local ok,first,second=pcall(pileController.GetPickCooldown,tool)
        if ok and type(first)=="number" and first>=0 and first<=60 then remaining=first source="GetPickCooldown(tool ID)" end
        if ok and type(second)=="number" and second>=0.02 and second<=60 then interval=second end
    end
    local upgrades=data and data.Upgrades
    if type(controller.GetEquippedUpgrades)=="function" then local ok,value=pcall(controller.GetEquippedUpgrades) if ok and type(value)=="table" then upgrades=value end end
    local class=data and data.SaveData and data.SaveData.Class
    if type(controller.GetClassId)=="function" then local ok,value=pcall(controller.GetClassId) if ok then class=value end end
    if type(shared.GetPickInterval)=="function" and upgrades then
        local ok,value=pcall(shared.GetPickInterval,upgrades,tool,class,false)
        if ok and type(value)=="number" and value>=0.02 and value<=60 then interval=value source="GetPickInterval(native upgrades, tool ID, class)" end
    end
    return remaining,interval,source
end
function Chapter.keyProbeGuard()
    local records={}
    local function token(item,empty)
        if type(item)~="table" or type(item.slot)~="number" or item.slot%1~=0 or item.slot<1 or item.slot>=4294967296 then return nil end
        return tostring(item.slot)..":"..tostring(item.revision or 0)..":"..tostring(empty==true)
    end
    local function allowed(item,empty,now)
        local key=token(item,empty)
        if not key then return false end
        local entry=records[key]
        return not entry or entry.attempts<2 and now>=entry.retryAt
    end
    return {records=records,allowed=allowed,begin=function(item,empty,now)
        if not allowed(item,empty,now) then return false end
        local key=token(item,empty)
        local entry=records[key] or {attempts=0}
        entry.attempts+=1 entry.retryAt=now+10 records[key]=entry
        return true
    end}
end
function Chapter.purchasePriority(offer,config,processing)
    if config and config.teamFunding then
        if offer.id=="Shovel" then return 1 end
        if offer.group=="storage" and type(offer.capacity)=="number" and offer.capacity<=50 then return 2 end
        if offer.id=="Dynamite" then return 3 end
        if offer.tool=="Dynamite" then return 4+(offer.level or 0)/100 end
        if offer.id=="P0T4T0-3000" then return 5 end
        if offer.tool=="PotatoSucker" then return 6 end
        if offer.group=="storage" then return 7 end
    end
    if config and config.opAutoFinish then
        if processing and offer.group=="cut" then return 0.1+(offer.tier or 0)/100 end
        -- Fund the first useful knife, a small bag and explosives before luxury knives.
        if offer.upgrade=="PotatoWorth" and (offer.level or 0)<3 then return 1 end
        if offer.group=="cut" and offer.tier==2 then return 2 end
        if offer.group=="storage" and type(offer.capacity)=="number" and offer.capacity<=50 then return 3 end
        if offer.id=="Shovel" then return 4 end
        if offer.id=="Dynamite" then return 5 end
        if offer.tool=="Dynamite" then return 6+(offer.level or 0)/100+(offer.upgrade=="PickAmount" and 0 or 0.001) end
        if offer.id=="P0T4T0-3000" or offer.id=="PotatoSucker" then return 7 end
        if offer.tool=="PotatoSucker" then return 8 end
        if offer.tool=="Drone" then return 9 end
        if offer.id=="Shovel" or offer.tool=="Shovel" then return 10 end
        if offer.group=="machine" or offer.tool=="AutoPeeler" then return 11 end
        if offer.group=="cut" then return 12+(offer.tier or 0)/100 end
        if offer.upgrade=="PotatoWorth" then return 13 end
        if offer.group=="storage" then return 14 end
        if offer.upgrade=="Luck" then return 15 end
        return 90
    end
    if offer.upgrade=="PotatoWorth" then
        return config and config.nativeWalkUpgrade and (offer.level or 0)>=3 and 12 or 1
    end
    if offer.upgrade=="WalkSpeed" then return 10.025 end
    if offer.group=="cut" then return 10+(offer.tier or 0)/100 end
    if offer.id=="Dynamite" or offer.tool=="Dynamite" then return 20 end
    if offer.tool=="Drone" then return 30 end
    if offer.id=="Shovel" or offer.tool=="Shovel" then return 40 end
    if offer.group=="storage" then return 90 end
    return 50
end
function Chapter.selectPurchase(Core,config,balance,offers,processing)
    table.sort(offers,function(a,b)
        local left,right=Chapter.purchasePriority(a,config,processing),Chapter.purchasePriority(b,config,processing)
        if left~=right then return left<right end
        return (a.name or "")<(b.name or "")
    end)
    for _,offer in ipairs(offers) do
        if type(offer.price)=="number" and offer.price>0 then
            local affordable=Core.affordable(config,balance,offer.price,"Cash")
            return offer,affordable
        end
    end
    return nil,false
end
function Chapter.profilePrice(profile,tool,id,level)
    if type(profile)~="table" or type(profile.Upgrades)~="table" or type(level)~="number" then return nil end
    local list=profile.Upgrades[tool=="Body" and "General" or tool]
    local values=type(list)=="table" and list[id] or nil
    local price=type(values)=="table" and values[level+1] or nil
    if type(price)=="number" and price>0 then return price end
    return nil
end
function Chapter.sellReady(config,stock,state)
    if type(stock)~="number" or stock<=0 then return false end
    if stock>=config.sellThreshold then return true end
    return config.sellRemainder and not state.cutting and state.crate==0 and state.carried==0 and state.exhausted==true
end
return Chapter

end)()

local Protocol = (function()
-- Luau · potato_protocol.luau · compare the live packet writers before direct actions · Roblox / CLI · Luau 0.745
local Protocol={}
function Protocol.create(packets,types)
    local reverse={}
    for name,writer in pairs(type(types)=="table" and types.Writes or {}) do if type(writer)=="function" then reverse[writer]=name end end
    local function schema(name)
        local packet=packets[name]
        if type(packet)~="table" or type(packet.Writes)~="table" then return nil end
        local result={}
        for i,writer in ipairs(packet.Writes) do result[i]=reverse[writer] or "Unknown" end
        return result
    end
    local function matches(name,expected)
        local actual=schema(name)
        if not actual or #actual~=#expected then return false end
        for i,wanted in ipairs(expected) do
            if wanted=="String" then
                if actual[i]~="String" and actual[i]~="StringLong" then return false end
            elseif wanted=="Vector3" then
                if not string.match(actual[i],"^Vector3") then return false end
            elseif wanted=="Boolean" then
                if actual[i]~="Boolean" and actual[i]~="Boolean8" then return false end
            elseif actual[i]~=wanted then return false end
        end
        return true
    end
    return {schema=schema,matches=matches,fire=function(name,...)
        local packet=packets[name]
        if not packet or type(packet.Fire)~="function" then return false,"Pacote indisponivel: "..name end
        return pcall(packet.Fire,packet,...)
    end}
end
return Protocol

end)()

local CutEngine = (function()
-- Luau · potato_cut_engine.luau · paced server acknowledgements · Roblox / CLI · Luau 0.745
local CutEngine={}
function CutEngine.create(config,io)
    local epoch,lastSent=0,-1
    local active,serverSeen,native=false,false,false
    local progressAt,lastFingerprint,lastCash=io.clock(),nil,nil
    local sentAt,nextAt=0,0
    local pending,recovery=0,0
    local scheduled=false
    local generation=0
    local lastTool=nil
    local stats={attempted=0,accepted=0,epochs=0,native=false,pending=0,throttled=false,targetRate=20,ackRate=0,timeouts=0}
    local rateWindow,rateCount=io.clock(),0
    local tick
    local function allowed() return not io.allowed or io.allowed() end
    local function drive(value)
        if native~=value then io.native(value) native=value stats.native=value end
    end
    local function target(tool)
        local toolRate=type(tool)=="table" and tonumber(tool.AutoCutRate) or 1.5
        return math.clamp(config.cutTargetRate or 20,1,40)*math.clamp((toolRate or 1.5)/1.5,1,config.cutToolMultiplier or 4)
    end
    local function schedule()
        if not io.schedule or scheduled or not active or not allowed() then return end
        scheduled=true
        local token=generation
        io.schedule(math.max(0,nextAt-io.clock()),function()
            if token~=generation then return end
            scheduled=false
            if active and allowed() then tick(true,lastFingerprint,lastCash,lastTool) end
        end)
    end
    local function advance(ack)
        if ack and pending>0 then
            pending=0 stats.pending=0 stats.accepted+=1 recovery+=1 rateCount+=1
            if recovery>=4 then stats.throttled=false recovery=0 end
        end
        local now=io.clock()
        if now-rateWindow>=1 then stats.ackRate=rateCount/(now-rateWindow) rateWindow=now rateCount=0 end
        epoch+=1 stats.epochs=epoch progressAt=now
    end
    local function event(name)
        serverSeen=true
        if name=="start" then
            pending=0 stats.pending=0 active=true lastSent=-1 advance(false)
        elseif name=="next" then active=true advance(true)
        elseif name=="stop" then
            active=false pending=0 stats.pending=0 generation+=1 scheduled=false drive(false)
        end
        if name~="stop" then schedule() end
    end
    tick=function(isActive,fingerprint,cash,tool)
        local now=io.clock()
        if not isActive or not allowed() then
            active=false pending=0 stats.pending=0 generation+=1 scheduled=false drive(false) lastFingerprint=nil
            return true
        end
        lastTool=tool or lastTool
        stats.targetRate=target(lastTool)
        if not active then active=true lastSent=-1 advance(false) lastFingerprint=fingerprint end
        if not serverSeen and fingerprint~=nil and lastFingerprint~=nil and fingerprint~=lastFingerprint then advance(true) end
        if cash~=nil and lastCash~=nil and cash~=lastCash then progressAt=now end
        lastFingerprint,lastCash=fingerprint,cash
        if pending>0 and now-sentAt>math.max(0.35,4/stats.targetRate) then
            pending=0 stats.pending=0 stats.throttled=true stats.timeouts+=1 recovery=0 lastSent=-1
            nextAt=math.max(nextAt,now+0.10)
        end
        if config.cutMode=="Fast" and pending==0 and lastSent~=epoch and type(io.finish)=="function" then
            if now>=nextAt then
                -- One current potato per acknowledgement. Old multi-finish bursts
                -- waited for replies the server never sent and permanently throttled.
                lastSent=epoch sentAt=now nextAt=now+1/stats.targetRate
                pending=1 stats.pending=1
                local ok,message=io.finish()
                if not ok then pending=0 stats.pending=0 drive(true) return false,message end
                stats.attempted+=1
            else schedule() end
        end
        drive(config.cutMode=="Native" or pending>0 and now-sentAt>=0.12)
        if now-progressAt>math.max(4,math.min(config.actionTimeout or 10,8)) then
            progressAt=now
            return false,"Corte sem avancar; reabrindo a mesa automaticamente."
        end
        return true
    end
    return {event=event,tick=tick,pause=function()
        generation+=1 scheduled=false active=false pending=0 stats.pending=0 lastSent=-1 drive(false)
    end,stats=stats,epoch=function() return epoch end,serverActive=function() return active end}
end
return CutEngine

end)()

local Session = (function()
-- Luau · potato_session.luau · local configuration and lifecycle · Roblox / Delta · Luau 0.745
local Session = {}

function Session.create(Core, json, files)
    local filename = "Anonymous_Potato_Config_v1.json"
    local available = type(files.read)=="function" and type(files.write)=="function"
    local function decode(content)
        if type(content)~="string" or #content>65536 then return nil,"configuracao invalida" end
        local ok,value=pcall(json.decode,content)
        if not ok or type(value)~="table" or (value.schema~=1 and value.schema~=2) or type(value.config)~="table" then
            return nil,"formato de configuracao invalido"
        end
        if value.schema==1 and value.config.uiScale==100 and value.config.uiWidth==760 then value.config.uiScale=65 end
        return Core.validate(value.config,true)
    end
    local function read(path)
        if not available then return nil,"arquivos indisponiveis" end
        local ok,content=pcall(files.read,path)
        if not ok then return nil,"arquivo ausente" end
        return decode(content)
    end
    local function load()
        local config,message=read(filename)
        if config then return config,"Configuracao carregada; rotinas pausadas." end
        local backup=read(filename..".backup")
        if backup then return backup,"Configuracao recuperada do backup; rotinas pausadas." end
        return Core.validate({},true),available and "Nova sessao; rotinas pausadas." or "Sem arquivos: ajustes apenas nesta sessao."
    end
    local function save(config)
        if not available then return false,"Este executor nao disponibilizou leitura e escrita de arquivos." end
        local sanitized=Core.validate(config,true)
        local encodedOk,encoded=pcall(json.encode,{schema=2,config=sanitized})
        if not encodedOk then return false,"Falha ao codificar ajustes." end
        local oldOk,old=pcall(files.read,filename)
        if oldOk and decode(old) then
            local backupOk=pcall(files.write,filename..".backup",old)
            if not backupOk then return false,"Nao foi possivel preservar o backup." end
        end
        local written,why=pcall(files.write,filename,encoded)
        if not written then return false,"Falha ao gravar: "..tostring(why) end
        local checked=read(filename)
        if not checked then
            if oldOk and decode(old) then pcall(files.write,filename,old) end
            return false,"Falha na verificacao do arquivo; tente salvar novamente."
        end
        return true,"Ajustes salvos; ativacoes nao sao restauradas automaticamente."
    end
    return {load=load,save=save,filename=filename,available=available}
end

function Session.lifecycle()
    local alive=true
    local disposables={}
    return {
        alive=function() return alive end,
        add=function(cleanup)
            if alive then table.insert(disposables,cleanup) else pcall(cleanup) end
        end,
        close=function()
            if not alive then return end
            alive=false
            for i=#disposables,1,-1 do pcall(disposables[i]) end
            table.clear(disposables)
        end,
    }
end

return Session

end)()

local UI = (function()
-- Luau · potato_ui.luau · Anonymous native control panel · Roblox client · Luau 0.745
local UI = {}

function UI.create(services, config, callbacks, Layout, Membership)
    local Players, TweenService, Input = services.Players, services.TweenService, services.UserInputService
    local player = Players.LocalPlayer
    local access = callbacks.membership and callbacks.membership() or {plan="Member",keyLabel="—",validity="Validade nao informada",source="Acesso local"}
    local connections, bindings, pages, navButtons = {}, {}, {}, {}
    local closed, activePage, isOpen = false,"Inicio",true
    local palette = {
        background=Color3.fromRGB(35,31,25), sidebar=Color3.fromRGB(48,39,29),
        card=Color3.fromRGB(65,54,39), line=Color3.fromRGB(116,88,49),
        text=Color3.fromRGB(252,246,226), muted=Color3.fromRGB(213,195,163),
        accent=Color3.fromRGB(255,202,66), mint=Color3.fromRGB(128,205,55),
    }
    local function make(class, properties, parent)
        local result = Instance.new(class)
        for k,v in pairs(properties or {}) do result[k]=k=="Text" and T(v) or v end
        if properties and properties.Text~=nil then result.AutoLocalize=false end
        result.Parent=parent
        return result
    end
    local function corner(parent,radius) make("UICorner",{CornerRadius=UDim.new(0,radius or 10)},parent) end
    local function stroke(parent,color) make("UIStroke",{Color=color or palette.line,Thickness=1},parent) end
    local function text(parent,content,size,color,bold)
        return make("TextLabel",{BackgroundTransparency=1,Text=content,TextSize=size or 13,
            TextColor3=color or palette.text,Font=bold and Enum.Font.GothamBold or Enum.Font.Gotham,
            TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center},parent)
    end
    local function button(parent,content)
        local result=make("TextButton",{BackgroundColor3=palette.card,Text=content,TextSize=12,
            TextColor3=palette.text,Font=Enum.Font.GothamBold,BorderSizePixel=0,AutoButtonColor=true},parent)
        corner(result,8)
        return result
    end
    local uiParent=player.PlayerGui
    if type(gethui)=="function" then
        local ok,parent=pcall(gethui)
        if ok and typeof(parent)=="Instance" then uiParent=parent end
    end
    local old=uiParent:FindFirstChild("AnonymousPotatoHub")
    if old then old:Destroy() end
    local gui=make("ScreenGui",{Name="AnonymousPotatoHub",ResetOnSpawn=false,
        DisplayOrder=10000,ZIndexBehavior=Enum.ZIndexBehavior.Sibling},uiParent)
    table.insert(connections,gui:GetPropertyChangedSignal("Enabled"):Connect(function()
        if not closed and not gui.Enabled then gui.Enabled=true end
    end))
    local canvas=make("Frame",{Name="SafeCanvas",Size=UDim2.fromScale(1,1),BackgroundTransparency=1},gui)
    local panel=make("Frame",{Name="Panel",Position=UDim2.fromOffset(8,8),
        Size=UDim2.fromOffset(760,580),Visible=false,BackgroundColor3=palette.background,BorderSizePixel=0,ClipsDescendants=true},canvas)
    local panelScale=make("UIScale",{Scale=1},panel)
    make("UIGradient",{Color=ColorSequence.new(Color3.fromRGB(73,53,35),palette.background),Rotation=90},panel)
    corner(panel,9) stroke(panel)
    local sidebar=make("Frame",{Size=UDim2.new(0,174,1,0),BackgroundColor3=palette.sidebar,BorderSizePixel=0},panel)
    local brand=text(sidebar,"ANONHUB",20,palette.text,true)
    brand.Position,brand.Size=UDim2.fromOffset(17,21),UDim2.new(1,-32,0,28)
    local edition=text(sidebar,"POTATO / CONTROL",10,palette.accent,true)
    edition.Position,edition.Size=UDim2.fromOffset(18,51),UDim2.new(1,-32,0,16) edition.Text=T("CAPÍTULO II / ANONHUB")
    local nav=make("ScrollingFrame",{BackgroundTransparency=1,BorderSizePixel=0,ScrollBarThickness=2,
        AutomaticCanvasSize=Enum.AutomaticSize.Y,CanvasSize=UDim2.fromOffset(0,0),
        Position=UDim2.fromOffset(12,90),Size=UDim2.new(1,-24,1,-165)},sidebar)
    local navLayout=make("UIListLayout",{Padding=UDim.new(0,7),SortOrder=Enum.SortOrder.LayoutOrder},nav)
    local content=make("Frame",{BackgroundTransparency=1,Position=UDim2.fromOffset(196,22),
        Size=UDim2.new(1,-218,1,-44)},panel)
    local heading=text(content,"Inicio",23,palette.text,true)
    heading.Size=UDim2.new(1,-110,0,34)
    local hide=button(content,"OCULTAR")
    hide.Position,hide.Size=UDim2.new(1,-100,0,0),UDim2.fromOffset(100,31)
    local status=text(content,"Inicializando...",11,palette.muted,false)
    status.Position,status.Size=UDim2.fromOffset(0,40),UDim2.new(1,0,0,35)
    status.TextWrapped=true status.BackgroundTransparency=0.12 status.BackgroundColor3=palette.card
    corner(status,8)
    local pageArea=make("Frame",{BackgroundTransparency=1,Position=UDim2.fromOffset(0,87),
        Size=UDim2.new(1,0,1,-146)},content)
    local footer=make("Frame",{BackgroundTransparency=1,Position=UDim2.new(0,0,1,-91),Size=UDim2.new(1,0,0,38)},content)
    local profile=make("Frame",{Size=UDim2.new(1,0,0,46),Position=UDim2.new(0,0,1,-50),
        BackgroundColor3=palette.card,BorderSizePixel=0},content)
    corner(profile,11) stroke(profile)
    local portrait=make("ImageLabel",{Size=UDim2.fromOffset(34,34),Position=UDim2.fromOffset(8,6),
        BackgroundColor3=palette.background,BorderSizePixel=0,Image=""},profile)
    corner(portrait,17) stroke(portrait,palette.mint)
    local initial=text(portrait,string.upper(string.sub(player.Name,1,1)),16,palette.mint,true)
    initial.Size=UDim2.fromScale(1,1) initial.TextXAlignment=Enum.TextXAlignment.Center
    local display=text(profile,player.DisplayName or player.Name,12,palette.text,true)
    display.Position,display.Size=UDim2.fromOffset(51,3),UDim2.new(1,-61,0,19)
    display.TextTruncate=Enum.TextTruncate.AtEnd
    local memberLine=text(profile,"",10,palette.mint,false)
    memberLine.Position,memberLine.Size=UDim2.fromOffset(51,23),UDim2.new(1,-61,0,18)
    memberLine.TextTruncate=Enum.TextTruncate.AtEnd
    local function showMembership(info)
        memberLine.Text=info.plan.."  ·  "..info.keyLabel.."  ·  "..T(info.validity)
        memberLine.TextColor3=info.expired and Color3.fromRGB(255,160,150) or palette.mint
    end
    showMembership(access)
    if Membership then Membership.requestAvatar(Players,player.UserId,function(image)
        if not closed then portrait.Image=image initial.Visible=false end
    end) end
    local save=button(footer,"SALVAR")
    save.Size=UDim2.fromOffset(100,35)
    local pause=button(footer,"PAUSAR TUDO")
    pause.Size,pause.Position=UDim2.fromOffset(143,35),UDim2.fromOffset(111,0)
    local footerRestore=button(footer,"RECUPERAR")
    footerRestore.TextSize=11
    table.insert(connections,footerRestore.Activated:Connect(function() if callbacks.restore then callbacks.restore() end end))
    local mini=button(canvas,"A")
    mini.Position,mini.Size=UDim2.fromOffset(13,72),UDim2.fromOffset(56,56)
    mini.BackgroundColor3=palette.accent mini.TextColor3=palette.background mini.TextSize=27 mini.Visible=true mini.ZIndex=20
    if callbacks.decorateLauncher then callbacks.decorateLauncher(mini) end
    local dragBar=make("Frame",{Name="MoveHandle",Size=UDim2.new(1,-18,0,33),BackgroundTransparency=1,Active=true},panel)
    local dragHint=text(dragBar,"≡   ANONHUB / POTATO   ·   ARRASTE",10,palette.muted,true)
    dragHint.Position,dragHint.Size=UDim2.fromOffset(15,3),UDim2.new(1,-30,1,-6)
    local grip=button(panel,"↘") grip.Position,grip.Size=UDim2.new(1,-25,1,-25),UDim2.fromOffset(23,23)
    grip.BackgroundTransparency=1 grip.TextColor3=palette.accent grip.TextSize=20 grip.ZIndex=10
    local suppressMiniUntil=0
    local applyLayout=nil
    local function layoutChange(values)
        if callbacks.layout then callbacks.layout(values)
        else for key,value in pairs(values) do config[key]=value end end
        if applyLayout then applyLayout() end
    end
    local function draggable(handle,target,kind)
        local captured,origin,position,startW,startH,startScale=nil,nil,nil,nil,nil,nil
        table.insert(connections,handle.InputBegan:Connect(function(event)
            if event.UserInputType~=Enum.UserInputType.Touch and event.UserInputType~=Enum.UserInputType.MouseButton1 then return end
            captured=event origin=Vector2.new(event.Position.X,event.Position.Y)
            position=target.AbsolutePosition-canvas.AbsolutePosition
            startScale=panelScale.Scale
            startW,startH=panel.Size.X.Offset,panel.Size.Y.Offset
        end))
        table.insert(connections,Input.InputChanged:Connect(function(event)
            if not captured then return end
            local touch=captured.UserInputType==Enum.UserInputType.Touch
            if touch and event~=captured or not touch and event.UserInputType~=Enum.UserInputType.MouseMovement then return end
            local delta=Vector2.new(event.Position.X,event.Position.Y)-origin
            if delta.Magnitude<5 then return end
            if kind=="resize" then
                layoutChange({uiWidth=math.clamp(startW+delta.X/startScale,300,1100),uiHeight=math.clamp(startH+delta.Y/startScale,340,900)})
            else
                local nextPosition=position+delta
                local x,y=Layout.normalized(nextPosition.X,nextPosition.Y,canvas.AbsoluteSize.X,canvas.AbsoluteSize.Y,target.AbsoluteSize.X,target.AbsoluteSize.Y)
                if kind=="launcher" then suppressMiniUntil=os.clock()+0.25 layoutChange({buttonX=x,buttonY=y})
                else layoutChange({uiX=x,uiY=y}) end
            end
        end))
        table.insert(connections,Input.InputEnded:Connect(function(event)
            if captured and (event==captured or captured.UserInputType==Enum.UserInputType.MouseButton1 and event.UserInputType==Enum.UserInputType.MouseButton1) then captured=nil end
        end))
    end
    draggable(dragBar,panel,"panel") draggable(grip,panel,"resize") draggable(mini,mini,"launcher")

    local function setOpen(value)
        isOpen=value panel.Visible=value mini.Visible=true
    end
    table.insert(connections,hide.Activated:Connect(function() setOpen(false) end))
    table.insert(connections,mini.Activated:Connect(function() if os.clock()>suppressMiniUntil then setOpen(not isOpen) end end))
    table.insert(connections,save.Activated:Connect(function() if callbacks.save then callbacks.save() end end))
    table.insert(connections,pause.Activated:Connect(function() callbacks.pause() end))
    local function page(name)
        activePage=name heading.Text=T(({Inicio="Visao geral",Coleta="Coleta e alvos",Corte="Mesa de corte",Vendas="Vendas",Resfriar="Controle de calor",Compras="Equipamentos",Ajustes="Preferencias",Missoes="Missoes e passe"})[name] or name)
        for key,frame in pairs(pages) do frame.Visible=key==name end
        for key,item in pairs(navButtons) do
            local marker=item:FindFirstChild("SelectedMark") if marker then marker.Visible=key==name end
            item.BackgroundColor3=key==name and palette.accent or palette.sidebar
            item.TextColor3=key==name and palette.background or palette.text
        end
    end
    local function newPage(name,index)
        local area=make("ScrollingFrame",{Name=name,Size=UDim2.fromScale(1,1),BackgroundTransparency=1,
            BorderSizePixel=0,ScrollBarThickness=4,ScrollBarImageColor3=palette.accent,
            AutomaticCanvasSize=Enum.AutomaticSize.Y,CanvasSize=UDim2.fromOffset(0,0),Visible=false},pageArea)
        local list=make("UIListLayout",{Padding=UDim.new(0,13),SortOrder=Enum.SortOrder.LayoutOrder},area)
        make("UIPadding",{PaddingRight=UDim.new(0,9),PaddingBottom=UDim.new(0,12)},area)
        pages[name]=area
        local b=button(nav,string.format("%02d   %s",index,T(name)))
        b.Size=UDim2.new(1,0,0,39) b.LayoutOrder=index b.TextXAlignment=Enum.TextXAlignment.Left
        make("UIPadding",{PaddingLeft=UDim.new(0,10)},b)
        local mark=make("Frame",{Name="SelectedMark",BackgroundColor3=palette.accent,BorderSizePixel=0,Position=UDim2.new(0,0,0.2,0),Size=UDim2.new(0,3,0.6,0),Visible=false},b) corner(mark,2)
        navButtons[name]=b
        table.insert(connections,b.Activated:Connect(function() page(name) end))
        return area,list
    end
    local function card(parent,title,description)
        local frame=make("Frame",{BackgroundColor3=palette.card,BorderSizePixel=0,
            Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y},parent)
        corner(frame,12) stroke(frame)
        make("UIPadding",{PaddingTop=UDim.new(0,16),PaddingBottom=UDim.new(0,15),
            PaddingLeft=UDim.new(0,15),PaddingRight=UDim.new(0,15)},frame)
        make("UIListLayout",{Padding=UDim.new(0,10),SortOrder=Enum.SortOrder.LayoutOrder},frame)
        local titleLabel=text(frame,title,15,palette.text,true)
        titleLabel.Size=UDim2.new(1,0,0,23) titleLabel.LayoutOrder=0
        if description then
            local descriptionLabel=text(frame,description,11,palette.muted,false)
            descriptionLabel.Size=UDim2.new(1,0,0,0) descriptionLabel.AutomaticSize=Enum.AutomaticSize.Y
            descriptionLabel.TextWrapped=true descriptionLabel.TextYAlignment=Enum.TextYAlignment.Top descriptionLabel.LayoutOrder=1
        end
        return frame
    end
    local nextOrder=10
    local function row(parent,title,description,height)
        nextOrder=nextOrder+1
        local r=make("Frame",{BackgroundTransparency=1,Size=UDim2.new(1,0,0,height or 80),LayoutOrder=nextOrder},parent)
        local name=text(r,title,12,palette.text,false)
        name.Size=UDim2.new(1,-115,0,36) name.TextWrapped=true
        if description then
            local desc=text(r,description,10,palette.muted,false)
            desc.Position,desc.Size=UDim2.fromOffset(0,41),UDim2.new(1,-5,0,32)
            desc.TextWrapped=true desc.TextYAlignment=Enum.TextYAlignment.Top
        end
        return r
    end
    local function bindField(field,refresh)
        bindings[field]=bindings[field] or {}
        table.insert(bindings[field],refresh)
        refresh(config[field])
    end
    local function toggle(parent,field,title,description)
        local r=row(parent,title,description,description and 82 or 44)
        local control=button(r,"")
        control.Size,control.Position=UDim2.fromOffset(54,34),UDim2.new(1,-54,0,1)
        local knob=make("Frame",{BackgroundColor3=Color3.fromRGB(244,238,255),BorderSizePixel=0,
            Size=UDim2.fromOffset(24,24),Position=UDim2.fromOffset(5,5)},control)
        corner(knob,20)
        bindField(field,function(value)
            control.BackgroundColor3=value and palette.accent or Color3.fromRGB(63,59,78)
            knob.Position=UDim2.fromOffset(value and 25 or 5,5)
        end)
        table.insert(connections,control.Activated:Connect(function()
            local value=callbacks.value and callbacks.value(field) or config[field]
            callbacks.change(field,not value)
        end))
    end
    local function choice(parent,field,title,options)
        local r=row(parent,title,nil,46)
        local control=button(r,"")
        control.Size,control.Position=UDim2.fromOffset(112,36),UDim2.new(1,-112,0,0)
        bindField(field,function(value)
            for _, option in ipairs(options) do if option[1]==value then control.Text=T(option[2]).." >" return end end
        end)
        table.insert(connections,control.Activated:Connect(function()
            local current=1
            for i,option in ipairs(options) do if option[1]==config[field] then current=i break end end
            callbacks.change(field,options[current % #options + 1][1])
        end))
        return r
    end
    local function number(parent,field,title,low,high,step,suffix)
        suffix=T(suffix)
        local r=row(parent,title,nil,80)
        local input=make("TextBox",{Size=UDim2.fromOffset(100,34),Position=UDim2.new(1,-100,0,0),
            BackgroundColor3=palette.background,TextColor3=palette.accent,BorderSizePixel=0,
            TextSize=12,Font=Enum.Font.Gotham,ClearTextOnFocus=false},r)
        corner(input,6)
        local track=make("TextButton",{Text="",AutoButtonColor=false,Position=UDim2.fromOffset(0,46),
            Size=UDim2.new(1,0,0,28),BackgroundColor3=Color3.fromRGB(57,53,74),BackgroundTransparency=1,BorderSizePixel=0},r)
        local rail=make("Frame",{Position=UDim2.fromOffset(0,11),Size=UDim2.new(1,0,0,6),BackgroundColor3=Color3.fromRGB(57,53,74),BorderSizePixel=0},track)
        corner(track,4)
        local fill=make("Frame",{Size=UDim2.fromScale(0,1),BackgroundColor3=palette.accent,BorderSizePixel=0},rail) corner(fill,4)
        local dragging=false
        local touchPointer,touchStart=nil,nil
        local inputOnly=high>=10000
        if inputOnly then
            track.Visible=false r.Size=UDim2.new(1,0,0,55)
        end
        bindField(field,function(value)
            input.Text=string.format(step<1 and "%.2f%s" or "%.0f%s",value,suffix or "")
            fill.Size=UDim2.fromScale(math.clamp((value-low)/(high-low),0,1),1)
        end)
        local function fromPosition(x)
            local ratio=math.clamp((x-track.AbsolutePosition.X)/math.max(1,track.AbsoluteSize.X),0,1)
            callbacks.change(field,math.clamp(math.floor((low+ratio*(high-low))/step+0.5)*step,low,high))
        end
        table.insert(connections,input.FocusLost:Connect(function()
            local value=callbacks.parseNumber and callbacks.parseNumber(input.Text) or tonumber(string.match(input.Text,"%-?[%d%.]+"))
            if value then callbacks.change(field,math.clamp(value,low,high)) else callbacks.change(field,config[field]) end
        end))
        table.insert(connections,track.InputBegan:Connect(function(event)
            if event.UserInputType==Enum.UserInputType.MouseButton1 then dragging=true fromPosition(event.Position.X)
            elseif event.UserInputType==Enum.UserInputType.Touch then touchPointer=event touchStart=event.Position dragging=false end
        end))
        table.insert(connections,Input.InputChanged:Connect(function(event)
            if touchPointer and event==touchPointer then
                local delta=event.Position-touchStart
                if not dragging and math.abs(delta.Y)>10 and math.abs(delta.Y)>math.abs(delta.X) then touchPointer=nil return end
                if math.abs(delta.X)>8 and math.abs(delta.X)>math.abs(delta.Y)*1.4 then dragging=true end
            end
            if dragging and (event.UserInputType==Enum.UserInputType.MouseMovement or event==touchPointer) then fromPosition(event.Position.X) end
        end))
        table.insert(connections,Input.InputEnded:Connect(function(event)
            if event.UserInputType==Enum.UserInputType.MouseButton1 or event==touchPointer then dragging=false touchPointer=nil end
        end))
    end

    local home=newPage("Inicio",1)
    local recovery=card(home,"BARRA DE FERRAMENTAS DO JOGO","Use somente se sumirem a mao, a pa, a dinamite ou os prompts do jogo.")
    recovery.LayoutOrder=20
    local recover=button(recovery,"RECUPERAR MAO, PA E FERRAMENTAS")
    recover.Size=UDim2.new(1,0,0,48) recover.BackgroundColor3=Color3.fromRGB(18,113,100) recover.LayoutOrder=3
    table.insert(connections,recover.Activated:Connect(function() if callbacks.restore then callbacks.restore() end end))
    toggle(recovery,"autoRepairGui","Recuperar ao iniciar e renascer","A interface e restaurada; as rotinas continuam pausadas depois de morrer.")
    local recoveryResult=text(recovery,"Nenhuma recuperacao solicitada nesta sessao.",11,palette.muted,false)
    recoveryResult.Size=UDim2.new(1,0,0,60) recoveryResult.TextWrapped=true recoveryResult.LayoutOrder=999
    local hero=card(home,"MODOS / CAPITULO II","OP: sugador MAX, coleta total, corte e saida. Auto Progress: ciclo normal.")
    hero.LayoutOrder=-40
    make("UIGradient",{Color=ColorSequence.new(Color3.fromRGB(118,82,45),palette.card),Rotation=25},hero)
    local modeButtons=make("Frame",{Size=UDim2.new(1,0,0,48),BackgroundTransparency=1,LayoutOrder=2},hero)
    local start=button(modeButtons,"AUTO PROGRESS") start.Size=UDim2.new(0.5,-5,1,0)
    start.BackgroundColor3=palette.accent start.TextColor3=palette.background start.TextSize=13
    bindField("autoProgress",function(value) start.Text=T(value and "PAUSAR PROGRESS" or "AUTO PROGRESS") end)
    table.insert(connections,start.Activated:Connect(function() callbacks.change("autoProgress",not callbacks.value("autoProgress")) end))
    local opStart=button(modeButtons,"ATIVAR OP") opStart.Position=UDim2.new(0.5,5,0,0) opStart.Size=UDim2.new(0.5,-5,1,0) opStart.BackgroundColor3=palette.mint opStart.TextColor3=palette.background opStart.TextSize=13
    bindField("opAutoFinish",function(value) opStart.Text=T(value and "PAUSAR OP" or "ATIVAR OP") end)
    table.insert(connections,opStart.Activated:Connect(function() callbacks.change("opAutoFinish",not callbacks.value("opAutoFinish")) end))
    local modeLine=text(hero,"MODO  •  PAUSADO",11,palette.mint,true) modeLine.Size=UDim2.new(1,0,0,0) modeLine.AutomaticSize=Enum.AutomaticSize.Y modeLine.LayoutOrder=3 modeLine.TextWrapped=true
    local party=card(home,"PERFIL DA PARTIDA")
    party.LayoutOrder=-35
    choice(party,"partyProfile","Tipo de grupo",{{"Solo","Solo"},{"Team","Com o hub"},{"Mixed","Grupo misto"}})
    local teamSize=choice(party,"partySize","Contas com o hub",{{2,"2 contas"},{3,"3 contas"},{4,"4 contas"}})
    local role=choice(party,"partyRole","Seu papel",{{"Leader","Lider OP"},{"Collect","Coletar"},{"Cut","Cortar e vender"}})
    local station=choice(party,"partySlot","Sua mesa",{{1,"Mesa 1"},{2,"Mesa 2"},{3,"Mesa 3"},{4,"Mesa 4"}})
    local recommendation=text(party,"",12,palette.muted,false)
    recommendation.Size=UDim2.new(1,0,0,0)
    recommendation.AutomaticSize=Enum.AutomaticSize.Y
    recommendation.TextWrapped=true
    recommendation.LayoutOrder=90
    local applyParty=button(party,"INICIAR PERFIL")
    applyParty.Size=UDim2.new(1,0,0,42) applyParty.LayoutOrder=91
    applyParty.BackgroundColor3=palette.mint applyParty.TextColor3=palette.background
    table.insert(connections,applyParty.Activated:Connect(callbacks.startProfile))
    local function showRecommendation()
        local team=config.partyProfile=="Team"
        teamSize.Visible=team
        role.Visible=team
        station.Visible=team and config.partyRole~="Collect"
        if team then
            local split=({[2]="1 lider OP e 1 no corte/venda.",[3]="1 lider OP, 1 na coleta e 1 no corte/venda.",
                [4]="1 lider OP, 1 na coleta e 2 no corte/venda."})[config.partySize]
            recommendation.Text=T(split)..T(" Usem mesas diferentes. Venda paga a equipe. Corte e equipamentos sao individuais.")
        elseif config.partyProfile=="Mixed" then
            recommendation.Text=T("Apoio com corte nativo, vendas e caminhada. Compra facas e ate dois niveis do upgrade de velocidade do jogo.")
        else
            recommendation.Text=T("Recomendado: OP. Uma conta financia as ferramentas, limpa a montanha, corta o estoque e usa a chave.")
        end
    end
    bindField("partyProfile",showRecommendation)
    bindField("partyRole",showRecommendation)
    bindField("partySize",showRecommendation)
    local equipment=card(home,"SEU EQUIPAMENTO","Niveis lidos do jogo. MAX aparece somente com todos os niveis confirmados.")
    equipment.LayoutOrder=1
    local toolGrid=make("Frame",{Size=UDim2.new(1,0,0,192),BackgroundTransparency=1,LayoutOrder=3},equipment)
    make("UIGridLayout",{CellSize=UDim2.new(0.5,-5,0,90),CellPadding=UDim2.fromOffset(10,10),SortOrder=Enum.SortOrder.LayoutOrder},toolGrid)
    local toolWidgets={}
    for index,id in ipairs({"Dynamite","Shovel","AutoPeeler","PotatoSucker"}) do
        local tile=make("Frame",{BackgroundColor3=palette.sidebar,BorderSizePixel=0,LayoutOrder=index},toolGrid)
        corner(tile,12) stroke(tile)
        local tint=({Dynamite=Color3.fromRGB(66,40,34),Shovel=Color3.fromRGB(27,48,72),AutoPeeler=Color3.fromRGB(43,37,70),PotatoSucker=Color3.fromRGB(20,57,54)})[id]
        make("UIGradient",{Color=ColorSequence.new(tint,palette.background),Rotation=25},tile)
        local icon=make("ImageLabel",{BackgroundTransparency=1,Position=UDim2.fromOffset(10,13),Size=UDim2.fromOffset(36,36),Visible=false},tile)
        local letter=text(tile,({Dynamite="D",Shovel="P",AutoPeeler="A",PotatoSucker="S"})[id],22,palette.accent,true)
        letter.Position,letter.Size=UDim2.fromOffset(12,12),UDim2.fromOffset(32,38) letter.TextXAlignment=Enum.TextXAlignment.Center
        local title=text(tile,id,10,palette.text,true) title.Position,title.Size=UDim2.fromOffset(53,13),UDim2.new(1,-60,0,18)
        local level=text(tile,"Aguardando dados",10,palette.muted,false) level.Position,level.Size=UDim2.fromOffset(53,35),UDim2.new(1,-60,0,18)
        local track=make("Frame",{BackgroundColor3=palette.line,BorderSizePixel=0,Position=UDim2.new(0,12,1,-17),Size=UDim2.new(1,-24,0,5)},tile) corner(track,3)
        local fill=make("Frame",{BackgroundColor3=palette.accent,BorderSizePixel=0,Size=UDim2.fromScale(0,1)},track) corner(fill,3)
        toolWidgets[id]={title=title,level=level,icon=icon,letter=letter,fill=fill}
    end
    local timeline=make("Frame",{Size=UDim2.new(1,0,0,33),BackgroundTransparency=1,LayoutOrder=4},equipment)
    make("UIListLayout",{FillDirection=Enum.FillDirection.Horizontal,Padding=UDim.new(0,5)},timeline)
    local phaseLabels={}
    for _,name in ipairs({"RENDA","EQUIPAR","LIMPAR","SAIR"}) do
        local chip=make("TextLabel",{Size=UDim2.new(0.25,-4,1,0),BackgroundColor3=palette.background,Text=name,TextSize=9,Font=Enum.Font.GothamBold,TextColor3=palette.muted,BorderSizePixel=0},timeline)
        corner(chip,7) table.insert(phaseLabels,chip)
    end
    local runBadge=text(equipment,"00:00  /  SORTE 0",11,palette.muted,true)
    runBadge.Size=UDim2.new(1,0,0,24) runBadge.LayoutOrder=5
    local upgradesLink=button(equipment,"VER MELHORIAS")
    upgradesLink.Size=UDim2.new(1,0,0,38) upgradesLink.LayoutOrder=6
    upgradesLink.BackgroundColor3=palette.line
    table.insert(connections,upgradesLink.Activated:Connect(function()
        page("Compras")
        pages.Compras.CanvasPosition=Vector2.zero
    end))
    local counters=card(home,"ESTADO DA PARTIDA") counters.LayoutOrder=5
    local summary=text(counters,"Dinheiro: —\nBolsa: —\nCalor: —\nEstado: aguardando",12,palette.muted,false)
    summary.Size=UDim2.new(1,0,0,145) summary.LayoutOrder=3 summary.TextYAlignment=Enum.TextYAlignment.Top summary.TextWrapped=true
    local farm=newPage("Coleta",2)
    local f=card(farm,"Filtro e selecao")
    toggle(f,"autoFarm","Coletar automaticamente")
    toggle(f,"autoDeliver","Entregar automaticamente")
    choice(f,"rarity","Batatas",{{"Any","Qualquer"},{"Rainbow","Rainbow"},{"Diamond","Diamante"},{"Golden","Dourada"}})
    choice(f,"selection","Escolha",{{"Nearest","Mais perto"},{"Random","Aleatoria"}})
    toggle(f,"collectPumpkins","Coletar aboboras")
    toggle(f,"collectGems","Incluir gemas da pilha")
    toggle(f,"gemPriority","Priorizar gemas")
    toggle(f,"pumpkinPriority","Priorizar aboboras")
    toggle(f,"priorityValue","Priorizar maior valor","Na selecao por proximidade, procura variantes valiosas quando sua identidade estiver disponivel.")
    choice(f,"deliveryMode","Entregar por",{{"Amount","Quantidade"},{"Percent","Porcentagem"}})
    choice(f,"deliveryTarget","Destino",{{"Crate","Caixa"},{"Table","Mesa"},{"Manual","Manual"},{"Auto","Automatica"}})
    number(f,"deliveryFill","Entregar com a bolsa em",10,100,5,"%")
    number(f,"deliveryBatch","Quantidade por entrega",1,1000000,1,"")
    nextOrder+=1
    local presets=make("Frame",{BackgroundTransparency=1,Size=UDim2.new(1,0,0,44),LayoutOrder=nextOrder},f)
    make("UIListLayout",{FillDirection=Enum.FillDirection.Horizontal,Padding=UDim.new(0,6)},presets)
    for _,amount in ipairs({100,500,1000,5000}) do
        local preset=button(presets,tostring(amount)) preset.Size=UDim2.new(0.25,-5,0,38)
        table.insert(connections,preset.Activated:Connect(function() callbacks.change("deliveryBatch",amount) end))
    end
    toggle(f,"infiniteBag","Tenho bolsa infinita","Usa o lote configurado no planejamento. Esta opcao nao concede a mochila no jogo.")
    number(f,"maxDistance","Alcance de busca",10,1000,10," studs")
    local cut=newPage("Corte",3)
    local c=card(cut,"Mesa e ferramentas")
    toggle(c,"autoCut","Auto Cut")
    toggle(c,"aimTable","Alinhar a camera ao entrar na mesa")
    choice(c,"cutMode","Modo de corte",{{"Fast","Rapido"},{"Native","Nativo"}})
    number(c,"cutTargetRate","Meta de tentativas por segundo",1,40,1,"/s")
    number(c,"cutToolMultiplier","Multiplicador com ferramentas",1,4,0.5,"x")
    choice(c,"tableChoice","Mesa",{{"Nearest","Mais perto"},{"PeelingTable1","Mesa 1"},{"PeelingTable2","Mesa 2"},{"PeelingTable3","Mesa 3"},{"PeelingTable4","Mesa 4"}})
    toggle(c,"cutBuyTools","Comprar no Auto Cut","Compra ferramentas de corte usando o orcamento configurado.")
    toggle(c,"autoCrank","Girar cortador manual","Aciona a maquina quando estiver carregada e liberada pelo jogo.")
    local sales=newPage("Vendas",4)
    local saleCard=card(sales,"Venda e retorno","Vende o estoque cortado e retoma a rotina. A proxima ferramenta tem prioridade apos a venda.")
    toggle(saleCard,"autoSell","Auto Sell")
    number(saleCard,"sellThreshold","Vender a partir de",1,1000000,1," batatas")
    toggle(saleCard,"buyAfterSell","Comprar ferramenta apos vender")
    toggle(saleCard,"returnAfterSell","Voltar para a mesa")
    toggle(saleCard,"sellRemainder","Vender o restante no fim")
    local thermal=newPage("Resfriar",5)
    local t=card(thermal,"Valvula de agua","Confirma o resfriamento pela agua fluindo ou pela queda do calor.")
    toggle(t,"autoCool","Auto Cooling")
    number(t,"coolHoldSeconds","Tempo segurando a valvula",1,5,1," s")
    toggle(t,"coolHoldFallback","Repetir duracao original se necessario","Se o toque curto nao resfriar, permite uma tentativa com o tempo original do jogo.")
    number(t,"heatStart","Comecar a resfriar em",15,100,5,"%")
    number(t,"heatStop","Considerar frio em",0,90,5,"%")
    number(t,"coolingRetry","Espera entre tentativas",5,120,1," s")
    toggle(t,"returnAfterCooling","Voltar ao ponto anterior")
    local purchases=newPage("Compras",6)
    local levelsCard=card(purchases,"MELHORIAS EM TEMPO REAL","Niveis confirmados pelo jogo. Consultar esta lista mantem a rotina em execucao.")
    levelsCard.LayoutOrder=-10
    local upgradeList=make("ScrollingFrame",{Size=UDim2.new(1,0,0,260),LayoutOrder=2,
        CanvasSize=UDim2.fromOffset(0,0),AutomaticCanvasSize=Enum.AutomaticSize.Y,
        ScrollingDirection=Enum.ScrollingDirection.Y,ScrollBarThickness=4,ScrollBarImageColor3=palette.mint,
        BackgroundColor3=palette.background,BorderSizePixel=0},levelsCard)
    corner(upgradeList,10)
    make("UIPadding",{PaddingTop=UDim.new(0,6),PaddingBottom=UDim.new(0,6),
        PaddingLeft=UDim.new(0,6),PaddingRight=UDim.new(0,9)},upgradeList)
    make("UIListLayout",{Padding=UDim.new(0,5),SortOrder=Enum.SortOrder.LayoutOrder},upgradeList)
    local levelDetails=text(upgradeList,"Aguardando niveis...",12,palette.muted,false)
    levelDetails.Size=UDim2.new(1,0,0,24)
    local upgradeWidgets={}
    local upgradeNames={PickAmount="Quantidade",PickSpeed="Velocidade",HoldPick="Coleta continua",
        Charge="Carga",Cooling="Resfriamento",PeelAmount="Quantidade",PeelSpeed="Velocidade",
        PotatoWorth="Valor da batata",WalkSpeed="Velocidade a pe",Luck="Sorte",Capacity="Capacidade",Grasp="Garra",FlySpeed="Voo"}
    local function upgradeWidget(entry)
        local key=entry.toolId.."/"..entry.id
        if upgradeWidgets[key] then return upgradeWidgets[key] end
        local frame=make("Frame",{Size=UDim2.new(1,0,0,58),BackgroundColor3=palette.card,BorderSizePixel=0},upgradeList)
        corner(frame,9)
        local icon=make("ImageLabel",{Position=UDim2.fromOffset(7,9),Size=UDim2.fromOffset(37,37),
            BackgroundColor3=palette.background,BorderSizePixel=0,ScaleType=Enum.ScaleType.Fit},frame)
        corner(icon,7)
        local label=text(frame,upgradeNames[entry.id] or entry.id,12,palette.text,true)
        label.Position,label.Size=UDim2.fromOffset(51,8),UDim2.new(1,-142,0,18)
        label.TextTruncate=Enum.TextTruncate.AtEnd
        local detail=text(frame,"",10,palette.muted,false)
        detail.Position,detail.Size=UDim2.fromOffset(51,30),UDim2.new(1,-142,0,16)
        detail.TextTruncate=Enum.TextTruncate.AtEnd
        local buy=button(frame,"MELHORAR")
        buy.Position,buy.Size=UDim2.new(1,-86,0,11),UDim2.fromOffset(79,36)
        buy.TextSize=10
        table.insert(connections,buy.Activated:Connect(function()
            if buy.Active then callbacks.manualUpgrade(entry.toolId,entry.id) end
        end))
        local widget={frame=frame,icon=icon,detail=detail,buy=buy}
        upgradeWidgets[key]=widget
        return widget
    end
    local p=card(purchases,"Orcamento","Compras automaticas usam somente dinheiro comum do jogo. Reserva e limite por compra sao aplicados antes de cada acao.")
    toggle(p,"autoBuyTools","Ferramentas")
    toggle(p,"autoBuyUpgrades","Melhorias")
    toggle(p,"autoBuyStorage","Bolsas e capacidade")
    toggle(p,"infiniteBag","Tenho mochila infinita","Impede compras de mochilas e usa o limite de entrega por quantidade.")
    toggle(p,"buyMachines","Comprar cortadores manual e automatico","Depois de maximizar as duas melhorias de dinamite. O manual nao recebe melhorias.")
    number(p,"productionBatch","Lote para o automatico no maximo",50,10000,50," batatas")
    toggle(p,"fixMenuBlur","Corrigir desfoque ao fechar menus")
    toggle(p,"saveForNextTool","Guardar para a proxima arma")
    toggle(p,"autoBuyDrone","Oferecer compra do drone a cada partida","Solicita confirmacao de 80 gemas; a oferta real tambem precisa confirmar esse valor.")
    toggle(p,"upgradeDrone","Melhorar drone comprado")
    toggle(p,"clearPileFirst","Limpar antes de cortar","Somente com dinamite, pa, automatico e sugador no maximo. Antes disso, continua usando a faca para gerar renda.")
    toggle(p,"upgradeMachines","Melhorar maquinas compradas")
    toggle(p,"upgradeGeneral","Melhorias gerais do capitulo 2")
    number(p,"reserveCash","Reserva de dinheiro",0,100000,0.01," $")
    number(p,"maxPurchase","Limite por compra (0 = livre)",0,100000,0.01," $")
    local missionPage=newPage("Missoes",7)
    local missions=card(missionPage,"AUTO QUEST","Escolha uma missao com progresso do jogo. O Auto Progress prioriza a tarefa e volta ao ciclo normal apos a confirmacao.")
    local questHint=text(missions,"Abra a tela de missoes ou do passe do jogo para carregar a lista.",12,palette.muted,false)
    questHint.Size=UDim2.new(1,0,0,35)
    questHint.TextWrapped=true questHint.LayoutOrder=2
    local questWidgets={}
    local function questWidget(row)
        if questWidgets[row.id] then return questWidgets[row.id] end
        local control=button(missions,"")
        control.Size=UDim2.new(1,0,0,48)
        control.TextWrapped=true
        control.TextXAlignment=Enum.TextXAlignment.Left
        make("UIPadding",{PaddingLeft=UDim.new(0,9),PaddingRight=UDim.new(0,9)},control)
        table.insert(connections,control.Activated:Connect(function() callbacks.selectQuest(row.id) end))
        questWidgets[row.id]=control
        return control
    end
    local settings=newPage("Ajustes",8)
    local account=card(settings,"Conta")
    local language=button(account,"IDIOMA")
    language.Size=UDim2.new(1,0,0,40)
    language.LayoutOrder=3
    table.insert(connections,language.Activated:Connect(callbacks.language))
    local unload=button(account,"ENCERRAR HUB")
    unload.Size=UDim2.new(1,0,0,40)
    unload.LayoutOrder=4
    table.insert(connections,unload.Activated:Connect(function() gui:Destroy() end))
    local appearance=card(settings,"Tela e toque","Arraste o topo para mover o painel. O botao A tambem pode ser arrastado. Use o canto inferior para redimensionar.")
    number(appearance,"uiScale","Escala da interface",65,150,5,"%")
    number(appearance,"uiWidth","Largura do painel",300,1100,10," px")
    number(appearance,"uiHeight","Altura do painel",340,900,10," px")
    number(appearance,"buttonSize","Tamanho do botao A",44,88,2," px")
    local resetLayout=button(appearance,"CENTRALIZAR E RESTAURAR TAMANHO") resetLayout.Size=UDim2.new(1,0,0,44) resetLayout.LayoutOrder=1000
    table.insert(connections,resetLayout.Activated:Connect(function()
        layoutChange({uiX=0.5,uiY=0.5,uiWidth=760,uiHeight=580,uiScale=65,buttonX=0.03,buttonY=0.22,buttonSize=56})
    end))
    local cameraCard=card(settings,"Camera")
    toggle(cameraCard,"forceThirdPerson","Forcar terceira pessoa")
    number(cameraCard,"cameraDistance","Distancia maxima da camera",8,100,1," studs")
    toggle(cameraCard,"aimCooling","Apontar automaticamente para a valvula","Alinha a camera durante a interacao e restaura a visao ao terminar.")
    local s=card(settings,"Execucao")
    toggle(s,"antiAfk","Anti-AFK","Atua por evento de inatividade enquanto alguma rotina estiver ativa; pausa junto das rotinas.")
    toggle(s,"autoEscape","Saida automatica manual","Usa a chave real para procurar a saida. O OP e o Auto Progress ja coordenam sua propria saida.")
    toggle(s,"skipEndingScene","Pular cena final","Usa o botao Pular quando disponivel. Apos a fuga confirmada, tambem tenta a funcao Cancel da cena.")
    toggle(s,"releaseEndingCamera","Liberar camera apos vitoria","Se a cena nao oferecer um botao, tenta devolver a visao ao personagem depois da confirmacao da fuga.")
    toggle(s,"throughputMode","Ritmo de limpeza","Com equipamentos no maximo, prefere alvos proximos e evita desvios por raridades.")
    toggle(s,"fastDelivery","Reduzir intervalo local da entrega","Acelera entregas e restaura o intervalo normal se a entrega falhar.")
    number(s,"placementDelay","Intervalo local por colocacao",0.005,0.08,0.005," s")
    choice(s,"movement","Deslocamento",{{"Teleport","Teleporte"},{"Walk","Caminhar"}})
    choice(s,"speedMode","Ritmo",{{"Turbo","Turbo"},{"Standard","Normal"}})
    number(s,"pickBatch","Coletas por rodada",1,16,1,"")
    toggle(s,"auraCollect","Coletar ao redor sem mirar","Usa IDs dos alvos proximos; teleporta quando necessario. O servidor ainda valida o alcance.")
    number(s,"auraRadius","Raio local da coleta",5,18,1," studs")
    choice(s,"collectTool","Ferramenta de coleta",{{"Auto","Melhor adquirida"},{"Hand","Mao"},{"Shovel","Pa"},{"PotatoSucker","P0T4T0-3000"}})
    toggle(s,"logicalSpecials","Especiais sem modelo visivel","Usa os IDs e as posicoes atuais do jogo. Tentativas recusadas recebem uma pausa; recompensas dependem do servidor.")
    toggle(s,"autoRecover","Recuperar etapas automaticamente","Falhas de coleta e entrega adiam somente a etapa afetada.")
    local restore=button(s,"RESTAURAR CONTROLES DO JOGO") restore.Size=UDim2.new(1,0,0,40) restore.LayoutOrder=1000
    table.insert(connections,restore.Activated:Connect(function() if callbacks.restore then callbacks.restore() end end))
    number(s,"actionDelay","Intervalo entre acoes",0.02,5,0.01," s")
    number(s,"actionTimeout","Tempo limite de acao",2,60,1," s")
    number(s,"travelTimeout","Tempo limite de trajeto",5,120,1," s")
    toggle(s,"autoDynamite","Dinamite automatica","Atua quando a ferramenta foi adquirida e o protocolo de lancamento foi identificado.")
    toggle(s,"dynamiteAggressive","Intervalo acelerado","Reduz a espera local; tentativas sem confirmacao recebem um intervalo maior.")
    number(s,"dynamiteInterval","Intervalo da dinamite",0.1,15,0.1," s")
    toggle(s,"pauseOnMovement","Pausar com movimento manual")
    toggle(s,"notifications","Notificacoes")
    local shortcuts=card(settings,"Atalhos")
    for _, item in ipairs({{"keyProgress","Auto Progress"},{"keyCut","Auto Cut"},{"keyFarm","Coleta"},
        {"keyCool","Resfriamento"},{"keyBuy","Ferramentas"},{"keyDeliver","Entregar"},
        {"keyPumpkin","Aboboras"},{"keyStorage","Bolsas"},{"keyUpgrades","Melhorias"},
        {"keyCrank","Cortador manual"},
        {"keySell","Vender"},{"keyDynamite","Dinamite"},
        {"keyMenu","Painel"},{"keyPause","Pausar"}}) do
        local field,title=item[1],item[2]
        local r=row(shortcuts,title,nil,36)
        local b=button(r,config[field]) b.Position,b.Size=UDim2.new(1,-96,0,0),UDim2.fromOffset(96,27)
        bindField(field,function(value) b.Text=value end)
        table.insert(connections,b.Activated:Connect(function() callbacks.bind(field) end))
    end
    local op=card(settings,"OP Alto Zerar","Ciclo completo com prioridade para limpar a montanha.")
    toggle(op,"opAutoFinish","OP Alto Zerar","Sugador MAX inicia coleta continua ate acabar a montanha. Entrega ao encher se a bolsa for finita. O OP coordena seus servicos sem ligar os interruptores das rotinas manuais.")
    toggle(op,"opBatchFunding","Vender lotes maiores no OP","Usa lotes de 50, 90 ou 150 conforme o saldo que falta para a proxima compra, respeitando o limite de venda.")
    toggle(op,"opFastPrompts","Retentar mesa e venda mais cedo","Quando o prompt e instantaneo, tenta outra forma de interacao mais cedo. O resultado ainda depende da confirmacao do jogo.")
    applyLayout=function()
        if closed then return end
        if canvas.AbsoluteSize.X<100 or canvas.AbsoluteSize.Y<100 then return end
        local bounds=Layout.resolve(canvas.AbsoluteSize.X,canvas.AbsoluteSize.Y,config)
        panel.Size=UDim2.fromOffset(bounds.width,bounds.height)
        panelScale.Scale=bounds.scale
        panel.Position=UDim2.fromOffset(bounds.x,bounds.y)
        panel.Visible=isOpen
        local launcher=Layout.launcher(canvas.AbsoluteSize.X,canvas.AbsoluteSize.Y,config)
        mini.Size=UDim2.fromOffset(launcher.size,launcher.size)
        mini.Position=UDim2.fromOffset(launcher.x,launcher.y)
        local compact=bounds.compact
        local width=compact and 66 or 174
        sidebar.Size=UDim2.new(0,width,1,0)
        sidebar.Visible=not compact
        content.Position=UDim2.fromOffset(compact and 16 or width+16,43)
        content.Size=UDim2.new(1,compact and -32 or -width-32,1,-59)
        pageArea.Size=UDim2.new(1,0,1,compact and -224 or -185)
        nav.Parent=compact and panel or sidebar
        nav.Position=compact and UDim2.new(0,12,1,-150) or UDim2.fromOffset(12,90)
        nav.Size=compact and UDim2.new(1,-24,0,40) or UDim2.new(1,-24,1,-108)
        nav.AutomaticCanvasSize=compact and Enum.AutomaticSize.X or Enum.AutomaticSize.Y
        nav.ScrollingDirection=compact and Enum.ScrollingDirection.X or Enum.ScrollingDirection.Y
        navLayout.FillDirection=compact and Enum.FillDirection.Horizontal or Enum.FillDirection.Vertical
        dragHint.Text=T(compact and "≡   ANONHUB / POTATO   ·   ARRASTE" or "≡   ARRASTE PARA MOVER")
        dragHint.TextXAlignment=compact and Enum.TextXAlignment.Left or Enum.TextXAlignment.Right
        brand.Text=compact and "A" or "ANONHUB"
        brand.TextSize=compact and 27 or 20
        edition.Visible=not compact
        for name,b in pairs(navButtons) do
            local index=({Inicio=1,Coleta=2,Corte=3,Vendas=4,Resfriar=5,Compras=6,Missoes=7,Ajustes=8})[name]
            b.Text=compact and T(({Inicio="INICIO",Coleta="COLETA",Corte="CORTE",Vendas="VENDER",Resfriar="AGUA",Compras="LOJA",Missoes="MISSOES",Ajustes="AJUSTE"})[name]) or string.format("%02d   %s",index,T(name))
            b.TextSize=compact and 11 or 12
            b.Size=compact and UDim2.fromOffset(76,38) or UDim2.new(1,0,0,43)
            b.TextXAlignment=compact and Enum.TextXAlignment.Center or Enum.TextXAlignment.Left
            local padding=b:FindFirstChildOfClass("UIPadding")
            if padding then padding.PaddingLeft=UDim.new(0,compact and 0 or 10) end
        end
        save.Size=UDim2.new(0.24,-4,0,35)
        pause.TextSize=10
        pause.Position,pause.Size=UDim2.new(0.24,2,0,0),UDim2.new(0.40,-5,0,35)
        footerRestore.Position,footerRestore.Size=UDim2.new(0.64,4,0,0),UDim2.new(0.36,-4,0,35)
    end
    table.insert(connections,canvas:GetPropertyChangedSignal("AbsoluteSize"):Connect(applyLayout))
    task.defer(applyLayout)
    page("Inicio")
    local function destroy()
        if closed then return end
        closed=true
        for _, connection in ipairs(connections) do connection:Disconnect() end
        if callbacks.close then callbacks.close() end
    end
    gui.Destroying:Connect(destroy)
    return {
        confirmDrone=function(answer)
            local shade=make("Frame",{Name="DroneConfirmation",Size=UDim2.fromScale(1,1),BackgroundColor3=palette.background,BackgroundTransparency=0.1,ZIndex=100},canvas)
            local box=make("Frame",{AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5),Size=UDim2.new(0.85,0,0,180),BackgroundColor3=palette.card,ZIndex=101},shade)
            corner(box,12)
            local title=text(box,"Deseja mesmo comprar o drone?\nPreco: 80 gemas",17,palette.text,true)
            title.Position,title.Size=UDim2.fromOffset(15,15),UDim2.new(1,-30,0,80) title.TextWrapped=true title.ZIndex=102
            local yes,no=button(box,"COMPRAR: 80 GEMAS"),button(box,"AGORA NAO")
            yes.Position,yes.Size=UDim2.new(0.04,0,1,-65),UDim2.new(0.45,0,0,48)
            no.Position,no.Size=UDim2.new(0.51,0,1,-65),UDim2.new(0.45,0,0,48)
            yes.ZIndex=102 no.ZIndex=102
            local answered=false
            local function finish(value) if answered then return end answered=true shade:Destroy() answer(value) end
            yes.Activated:Connect(function() finish(true) end) no.Activated:Connect(function() finish(false) end)
        end,
        refresh=function(field)
            if closed then return end
            for key,list in pairs(bindings) do
                if not field or key==field then
                    local value=callbacks.value and callbacks.value(key)
                    if value==nil then value=config[key] end
                    for _, update in ipairs(list) do update(value) end
                end
            end
            if applyLayout then applyLayout() end
        end,
        recoveryInfo=function(report)
            if closed or not report then return end
            recoveryResult.Text=T(#(report.missing or {})>0 and "Alguns controles ainda não estão disponíveis." or "Controles restaurados.")
            recoveryResult.TextColor3=#(report.missing or {})>0 and Color3.fromRGB(255,192,110) or palette.mint
        end,
        dashboard=function(data,elapsed)
            if closed or not data then return end
            if activePage=="Compras" and data.details then
                local seen={}
                for index,entry in ipairs(data.details) do
                    local widget=upgradeWidget(entry)
                    seen[widget]=true
                    widget.frame.Visible=true widget.frame.LayoutOrder=index
                    widget.icon.Image=type(entry.icon)=="string" and entry.icon or "rbxassetid://103225914639722"
                    widget.detail.Text=string.format("%s  ·  %s/%s",entry.tool,tostring(entry.level or "—"),tostring(entry.maximum or "—"))
                    local known=type(entry.level)=="number" and type(entry.maximum)=="number"
                    local maxed=known and entry.level>=entry.maximum
                    widget.buy.Active=known and not maxed
                    widget.buy.Text=maxed and "MAX" or type(entry.price)=="number" and string.format("$%.2f",entry.price) or T("MELHORAR")
                    widget.buy.BackgroundColor3=widget.buy.Active and palette.line or palette.background
                end
                for _,widget in pairs(upgradeWidgets) do if not seen[widget] then widget.frame.Visible=false end end
                levelDetails.Visible=#data.details==0
            end
            for _,tool in ipairs(data.tools) do
                local widget=toolWidgets[tool.id]
                if widget then
                    local ratio=tool.total>0 and math.clamp(tool.current/tool.total,0,1) or 0
                    widget.title.Text=T(tool.title)
                    widget.level.Text=not tool.owned and T("NAO ADQUIRIDO") or ratio==1 and T("MAX  /  PRONTO") or tostring(tool.current).." / "..tostring(tool.total)
                    widget.level.TextColor3=ratio==1 and palette.mint or palette.muted
                    widget.fill.Size=UDim2.fromScale(tool.owned and ratio or 0,1)
                    widget.fill.BackgroundColor3=ratio==1 and palette.mint or palette.accent
                    local hasIcon=type(tool.icon)=="string" and tool.icon:find("rbxasset",1,true)~=nil
                    widget.icon.Visible=hasIcon widget.letter.Visible=not hasIcon
                    if hasIcon then widget.icon.Image=tool.icon end
                end
            end
            local active=data.finished and 4 or data.hasKey and 4 or data.production and 3 or (data.cash or 0)>0 and 2 or 1
            modeLine.Text=data.finished and T("MODO  •  CONCLUIDO") or T(data.role)
                or data.op and T("MODO  •  OP ATIVO  /  ")..tostring(T(data.phase or "limpeza"))
                or data.progress and T("MODO  •  AUTO PROGRESS") or T("MODO  •  PAUSADO / ROTINAS MANUAIS")
            for index,chip in ipairs(phaseLabels) do chip.BackgroundColor3=index==active and palette.accent or palette.background chip.TextColor3=index==active and palette.background or palette.muted end
            runBadge.Text=string.format(T("%02d:%02d  /  SORTE %d%s"),math.floor(elapsed/60),math.floor(elapsed%60),data.gemLuck,data.finished and T("  /  CONCLUIDO") or "")
        end,
        membership=function(info)
            if closed or not info then return end
            showMembership(info)
        end,
        quests=function(rows,selected)
            if closed then return end
            local seen={}
            for index,row in ipairs(rows) do
                local control=questWidget(row)
                seen[control]=true
                control.LayoutOrder=10+index
                control.Visible=true
                local active=row.id==selected
                local state=row.done and "CONCLUIDA" or active and "PRIORIZANDO" or row.action and "SELECIONAR" or "MANUAL"
                control.Text=string.format("%s  ·  %s   [%d/%d]\n%s",row.source,row.title,row.current,row.goal,T(state))
                control.BackgroundColor3=active and palette.line or palette.background
                control.TextColor3=active and palette.mint or palette.text
            end
            for _,control in pairs(questWidgets) do if not seen[control] then control.Visible=false end end
            questHint.Visible=#rows==0
        end,
        status=function(message) if not closed then status.Text=T(message) end end,
        summary=function(message) if not closed then summary.Text=message end end,
        show=function() setOpen(true) end,
        toggle=function() setOpen(not isOpen) end,
        close=function() if gui.Parent then gui:Destroy() end end,
        gui=gui,
    }
end

return UI

end)()

local Navigation = (function()
-- Luau · potato_navigation.luau · cancellable movement and prompt interactions · Roblox · Luau 0.745
local Navigation = {}

function Navigation.create(services, config, log,runtime)
    local clock=runtime and runtime.clock or os.clock
    local player = services.Players.LocalPlayer
    local nativePrompt=runtime and runtime.nativePrompt or type(fireproximityprompt)=="function" and fireproximityprompt or nil
    local controls, controlDepth, previousEnabled = nil,0,true
    local activeHumanoid = nil
    local heldPrompt=nil
    local aimCleanup=nil
    local cameraBefore=nil
    local promptStats={attempts=0,held=0,native=0,lastMethod="none",lastPath="none"}
    local function actor()
        local character = player.Character
        local root = character and character:FindFirstChild("HumanoidRootPart")
        local humanoid = character and character:FindFirstChildOfClass("Humanoid")
        if not root or not humanoid or humanoid.Health <= 0 then return nil,nil end
        return root,humanoid
    end
    local function lockControls()
        if controlDepth > 0 then controlDepth = controlDepth+1 return end
        if not controls then
            local module = player:FindFirstChild("PlayerScripts") and player.PlayerScripts:FindFirstChild("PlayerModule")
            if module then
                local ok,result = pcall(require,module)
                if ok and type(result)=="table" and type(result.GetControls)=="function" then
                    local controlsOk,controller = pcall(result.GetControls,result)
                    if controlsOk then controls = controller end
                end
            end
        end
        previousEnabled = not controls or controls.controlsEnabled ~= false
        if controls and type(controls.Disable)=="function" then pcall(controls.Disable,controls) end
        controlDepth = 1
    end
    local function unlockControls(force)
        controlDepth = force and 0 or math.max(0,controlDepth-1)
        if controlDepth==0 and controls and previousEnabled and type(controls.Enable)=="function" then
            pcall(controls.Enable,controls)
        end
    end
    local function stop()
        if aimCleanup then aimCleanup() end
        if heldPrompt then pcall(heldPrompt.InputHoldEnd,heldPrompt) heldPrompt=nil end
        local root,humanoid = actor()
        if humanoid and root then humanoid:MoveTo(root.Position) end
        activeHumanoid = nil
        unlockControls(true)
    end
    local function waitFor(seconds,valid)
        local deadline = clock()+seconds
        while clock()<deadline do
            if not valid() then return false end
            services.RunService.Heartbeat:Wait()
        end
        return true
    end
    local function moveWaypoints(waypoints,valid,deadline)
        for _,point in ipairs(waypoints) do
            local root,humanoid = actor()
            if not root or not valid() or clock()>deadline then return false,"trajeto interrompido" end
            activeHumanoid = humanoid
            if point.Action==Enum.PathWaypointAction.Jump then humanoid.Jump=true end
            humanoid:MoveTo(point.Position)
            local previousDistance,lastImprovement = math.huge,clock()
            while Vector2.new(root.Position.X-point.Position.X,root.Position.Z-point.Position.Z).Magnitude>2.5
                or math.abs(root.Position.Y-point.Position.Y)>7 do
                if not valid() or humanoid.Health<=0 or not root.Parent or clock()>deadline then return false,"trajeto interrompido" end
                local distance=Vector2.new(root.Position.X-point.Position.X,root.Position.Z-point.Position.Z).Magnitude
                if distance<previousDistance-0.15 then previousDistance,lastImprovement=distance,clock() end
                if clock()-lastImprovement>3 then return false,"caminho bloqueado" end
                services.RunService.Heartbeat:Wait()
            end
        end
        return true
    end
    local function goTo(destination,valid,rootTarget)
        local root,humanoid=actor()
        if not root then return false,"personagem indisponivel" end
        if not valid() then return false,"cancelado" end
        if config.movement=="Teleport" then
            local character=player.Character
            local height=rootTarget and 0 or math.max(2,humanoid.HipHeight+root.Size.Y/2)
            local target=CFrame.new(destination+Vector3.new(0,height,0))*root.CFrame.Rotation
            local ok,message=pcall(function()
                local pivotOffset=character:GetPivot():ToObjectSpace(root.CFrame)
                character:PivotTo(target*pivotOffset:Inverse())
                root.AssemblyLinearVelocity=Vector3.zero root.AssemblyAngularVelocity=Vector3.zero
            end)
            if not ok then return false,tostring(message) end
            if not waitFor(config.teleportSettle,valid) then return false,"cancelado" end
            local current=actor()
            if not current or (current.Position-target.Position).Magnitude>8 then return false,"O servidor reposicionou o personagem apos o teleporte." end
            return true
        end
        lockControls()
        local success,message
        local ok,reason=pcall(function()
            local path=services.PathfindingService:CreatePath({AgentRadius=1.6,AgentHeight=5,
                AgentCanJump=true,AgentCanClimb=true,WaypointSpacing=3})
            path:ComputeAsync(root.Position,destination)
            if not valid() then success,message=false,"cancelado" return end
            if path.Status~=Enum.PathStatus.Success then success,message=false,"sem caminho navegavel" return end
            success,message=moveWaypoints(path:GetWaypoints(),valid,clock()+config.travelTimeout)
        end)
        if not ok then success,message=false,tostring(reason) end
        unlockControls()
        if not success then
            local currentRoot,currentHumanoid=actor()
            if currentRoot and currentHumanoid then currentHumanoid:MoveTo(currentRoot.Position) end
        end
        activeHumanoid=nil
        return success,message
    end
    local function promptPosition(prompt)
        local parent=prompt and prompt.Parent
        if not parent then return nil end
        if parent:IsA("Attachment") then return parent.WorldPosition end
        if parent:IsA("BasePart") then return parent.Position end
        if parent:IsA("Model") then return parent:GetPivot().Position end
        return nil
    end
    local function approach(prompt,valid)
        local position=promptPosition(prompt)
        local root=actor()
        if not position or not root then return false,"prompt indisponivel" end
        local range=math.max(1,prompt.MaxActivationDistance-1)
        if (root.Position-position).Magnitude<=range then return true end
        local delta=Vector3.new(root.Position.X-position.X,0,root.Position.Z-position.Z)
        local toward=delta.Magnitude>0.01 and delta.Unit or Vector3.new(0,0,1)
        local perpendicular=Vector3.new(-toward.Z,0,toward.X)
        local directions={toward,perpendicular,-perpendicular,-toward}
        if config.movement=="Teleport" then
            local near=position+toward*math.min(3,range*0.45)+Vector3.new(0,1.4,0)
            return goTo(near,valid,true)
        end
        local params=RaycastParams.new()
        params.FilterType=Enum.RaycastFilterType.Exclude
        params.FilterDescendantsInstances={player.Character,prompt:FindFirstAncestorOfClass("Model") or prompt.Parent}
        for _,direction in ipairs(directions) do
            if not valid() then return false,"cancelado" end
            local near=position+direction*math.min(4,range*0.6)
            local ground=workspace:Raycast(near+Vector3.new(0,8,0),Vector3.new(0,-80,0),params)
            if ground then
                local success=goTo(ground.Position,valid)
                local currentRoot=actor()
                if success and currentRoot and (currentRoot.Position-position).Magnitude<=range then return true end
            end
        end
        return false,"nao foi possivel chegar ao prompt"
    end
    local function triggerRaw(prompt,valid,options)
        options=options or {}
        if not prompt or not prompt.Parent then return false,"prompt removido" end
        local reached,message=approach(prompt,valid)
        if not reached then return false,message end
        if not valid() then return false,"cancelado" end
        local position=promptPosition(prompt)
        local root=actor()
        if not root or not position or (root.Position-position).Magnitude>prompt.MaxActivationDistance then return false,"fora do alcance" end
        promptStats.attempts+=1 promptStats.lastPath=prompt:GetFullName()
        local holdFirst=options.method~="native" and (prompt.HoldDuration>0 or options.method=="hold")
        if nativePrompt and not holdFirst then
            local fired,why=pcall(nativePrompt,prompt)
            if fired then
                promptStats.native+=1 promptStats.lastMethod="native"
                return true
            end
            log("Acionamento nativo do prompt falhou: "..tostring(why),"error")
        end
        local begun,errorMessage=pcall(prompt.InputHoldBegin,prompt)
        if not begun then
            if nativePrompt then
                local fired,why=pcall(nativePrompt,prompt)
                if fired then promptStats.native+=1 promptStats.lastMethod="native fallback" return true end
                return false,tostring(why)
            end
            return false,tostring(errorMessage)
        end
        heldPrompt=prompt promptStats.held+=1 promptStats.lastMethod="continuous hold"
        local completed,finished=pcall(waitFor,prompt.HoldDuration>0 and prompt.HoldDuration+0.20 or 0.08,valid)
        pcall(prompt.InputHoldEnd,prompt)
        if heldPrompt==prompt then heldPrompt=nil end
        if not completed then return false,tostring(finished) end
        if not finished then return false,"interacao interrompida" end
        return true
    end
    local function trigger(prompt,valid,options)
        if not prompt or not prompt.Parent then return false,"prompt removido" end
        local beforeEnabled,beforeSight,beforeHold=prompt.Enabled,prompt.RequiresLineOfSight,prompt.HoldDuration
        local holdOverride=nil
        local ok,success,message=pcall(function()
            prompt.Enabled=true prompt.RequiresLineOfSight=false
            if options and type(options.holdSeconds)=="number" and options.holdSeconds==options.holdSeconds then
                holdOverride=math.clamp(options.holdSeconds,1,5) prompt.HoldDuration=holdOverride
            end
            return triggerRaw(prompt,valid,options)
        end)
        if prompt.Parent then
            pcall(function() prompt.RequiresLineOfSight=beforeSight end)
            if holdOverride then pcall(function() if prompt.HoldDuration==holdOverride then prompt.HoldDuration=beforeHold end end) end
            if not beforeEnabled then pcall(function() prompt.Enabled=false end) end
        end
        if not ok then return false,tostring(success) end
        return success,message
    end
    local function updateCamera()
        if config.forceThirdPerson then
            if not cameraBefore then cameraBefore={mode=player.CameraMode,min=player.CameraMinZoomDistance,max=player.CameraMaxZoomDistance} end
            player.CameraMode=Enum.CameraMode.Classic
            player.CameraMaxZoomDistance=math.max(8,config.cameraDistance)
            player.CameraMinZoomDistance=6
        elseif cameraBefore then
            player.CameraMinZoomDistance=0.5
            player.CameraMaxZoomDistance=cameraBefore.max
            player.CameraMinZoomDistance=cameraBefore.min player.CameraMode=cameraBefore.mode cameraBefore=nil
        end
    end
    local function clearAim() if aimCleanup then aimCleanup() end end
    local function aim(prompt,enabled)
        clearAim()
        if not enabled then return end
        local camera=services.Workspace.CurrentCamera
        if not camera then return end
        local before={mode=player.CameraMode,min=player.CameraMinZoomDistance,max=player.CameraMaxZoomDistance,frame=camera.CFrame,focus=camera.Focus}
        local name="AnonymousPotatoWaterAim"
        local done=false
        aimCleanup=function()
            if done then return end done=true
            services.RunService:UnbindFromRenderStep(name)
            pcall(function()
                player.CameraMinZoomDistance=0.5 player.CameraMaxZoomDistance=before.max
                player.CameraMinZoomDistance=before.min player.CameraMode=before.mode
                if camera.Parent then camera.CFrame=before.frame camera.Focus=before.focus end
            end)
            aimCleanup=nil updateCamera()
        end
        services.RunService:BindToRenderStep(name,Enum.RenderPriority.Camera.Value+1,function()
            local position=promptPosition(prompt)
            local root=actor()
            if not position or not root then return end
            player.CameraMode=Enum.CameraMode.Classic
            player.CameraMaxZoomDistance=math.max(12,config.cameraDistance)
            player.CameraMinZoomDistance=6
            local away=root.Position-position
            away=Vector3.new(away.X,0,away.Z)
            if away.Magnitude<0.1 then away=Vector3.new(0,0,1) end
            local eye=position+away.Unit*math.min(12,config.cameraDistance)+Vector3.new(0,4,0)
            camera.CFrame=CFrame.lookAt(eye,position) camera.Focus=CFrame.new(position)
        end)
    end
    return {actor=actor,goTo=goTo,approach=approach,trigger=trigger,promptPosition=promptPosition,stop=stop,waitFor=waitFor,stats=promptStats,aim=aim,clearAim=clearAim,updateCamera=updateCamera,close=function() stop() config.forceThirdPerson=false updateCamera() end}
end

return Navigation

end)()

local Resolver = (function()
-- Luau · potato_resolver.luau · bounded contracts and spatial pile index · Roblox / Delta · Luau 0.745
local Resolver={}
function Resolver.create(modules,services,log,Observer,Spatial,runtime,NativeMap)
    local valueType=runtime and runtime.typeOf or typeof
    local pile=modules["Shared.PotatoPileShared"] or {}
    local packets=modules["Modules.Resources.Packets"] or {}
    local world=services.Workspace
    local names={"GetSlotPosition","GetRotation","GetKind","GetPotatoSlot","GetPotatoInSlot","IsPumpkin","IsDiamond"}
    local originals,samples,bindings={},{},{}
    local direct=setmetatable({},{__mode="k"})
    local theoretical=nil
    local worldPositions={}
    local directPositions=setmetatable({},{__mode="k"})
    local indexedFolder=nil
    local lastSync=-math.huge
    local preparing=false
    local nextPrepare=0
    local closed=false
    local keyInputs={}
    local keyEventId=nil
    local keyRevision=0
    local keyConnections={}
    local observer=nil
    local nativeMap,nativeState,nativeFolder=nil,nil,nil
    local nativeScanAt=0
    local nativeTransform=nil
    local stats={slot="pending spatial index",kind="pending captured arguments",generation=0,
        mapped=0,parts=0,syncRequests=0,contracts={},scores={},upvalues=false}
    for _,name in ipairs(names) do originals[name]=pile[name] samples[name]={} end
    local function validId(value)
        return type(value)=="number" and value%1==0 and value>=1 and value<=(pile.SLOT_COUNT or 30009)
    end
    local function point(value,second,third)
        local kind=valueType(value)
        if kind=="Vector3" then return value end
        if kind=="CFrame" then return value.Position end
        if type(value)=="table" and valueType(value.Position)=="Vector3" then return value.Position end
        if type(value)=="number" and type(second)=="number" and type(third)=="number" then
            return Vector3.new(value,second,third)
        end
        return nil
    end
    local function normalize(value)
        if type(value)=="table" then value=value.Name or value.Id end
        if type(value)=="number" then return ({"Normal","Golden","Diamond","Rainbow","Key","Charred"})[value] end
        if type(value)=="string" then
            for _,name in ipairs({"Normal","Golden","Diamond","Rainbow","Key","Charred"}) do
                if string.lower(value)==string.lower(name) then return name end
            end
        end
        return nil
    end
    local function summary(value)
        local kind=valueType(value)
        if type(value)=="number" or type(value)=="string" then return value end
        local p=point(value)
        if p then return {type=kind,x=p.X,y=p.Y,z=p.Z} end
        return {type=kind}
    end
    local function infer(name)
        local list=samples[name]
        if #list<3 then return nil end
        local best,bestCount=nil,0
        for argument=1,list[1].args.n do
            local distinct={}
            local valid=true
            for _,sample in ipairs(list) do
                local value=sample.args[argument]
                if not validId(value) then valid=false break end
                distinct[value]=true
            end
            local count=0 for _ in pairs(distinct) do count+=1 end
            if valid and count>bestCount then best,bestCount=argument,count end
        end
        if not best or bestCount<2 then return nil end
        local template=table.clone(list[#list].args)
        local original=originals[name]
        bindings[name]=function(index)
            local args=table.clone(template) args[best]=index
            return pcall(original,table.unpack(args,1,args.n))
        end
        local shape={index_argument=best,samples=#list,arguments={}}
        for i=1,template.n do shape.arguments[i]=summary(template[i]) end
        shape.result=summary(list[#list].result[1])
        stats.contracts[name]=shape
        if name=="GetKind" then stats.kind="captured changing slot argument" end
        return best
    end
    observer=Observer.create(pile,names,function(name,args,result)
        if closed then return true end
        for i=1,args.n do
            local input=args[i]
            if type(input)=="table" and (rawget(input,"PotatoSlots")~=nil or type(rawget(input,"Seed"))=="number" or rawget(input,"KeyPotatoId")~=nil) then keyInputs[input]=true end
        end
        if name=="GetPotatoSlot" and validId(result[1]) then
            local folder=world:FindFirstChild("PotatoPile")
            for i=1,args.n do
                local value=args[i]
                if valueType(value)=="Instance" and value:IsA("BasePart") and folder and value:IsDescendantOf(folder) then
                    direct[value]=result[1]
                end
            end
        end
        local list=samples[name]
        if #list<16 then table.insert(list,{args=table.clone(args),result=table.clone(result)}) end
        return infer(name)~=nil or #list>=16
    end)
    stats.observer=observer.stats

    local fire=modules["Shared.FireShared"] or {}
    local originalHeat=fire.GetHeat
    local heatInput=nil
    local heatWrapper=nil
    if type(originalHeat)=="function" then
        heatWrapper=function(input)
            heatInput=input
            return originalHeat(input)
        end
        pcall(function() fire.GetHeat=heatWrapper end)
    end
    local nextHeatScan=0
    local heatObjects={}
    local function heat()
        if heatInput~=nil and type(originalHeat)=="function" then
            local ok,value=pcall(originalHeat,heatInput)
            if ok and type(value)=="number" and value>=0 and value<=1 then
                local flowing=false
                if type(fire.IsFlowing)=="function" then local good,flag=pcall(fire.IsFlowing,heatInput) flowing=good and flag==true end
                return value*100,flowing,"captured native FireShared input"
            end
        end
        if os.clock()>=nextHeatScan then
            nextHeatScan=os.clock()+5 heatObjects={}
            local map=world:FindFirstChild("Map")
            for _,name in ipairs({"Fire","Water"}) do
                local area=map and map:FindFirstChild(name)
                if area then
                    table.insert(heatObjects,area)
                    for _,object in ipairs(area:GetDescendants()) do table.insert(heatObjects,object) end
                end
            end
        end
        local flowing=false
        for _,object in ipairs(heatObjects) do
            if object.Parent then
                flowing=flowing or object:GetAttribute("Flowing")==true
                local value=object:GetAttribute("Heat")
                if type(value)=="number" and value>=0 and value<=1 then
                    return value*100,flowing,"replicated Heat attribute"
                end
            end
        end
        return nil,flowing,"alarm only"
    end
    local function requestSync()
        if stats.syncRequests>=2 or os.clock()-lastSync<10 then return false end
        local packet=packets.PotatoPileRequest
        if not packet or type(packet.Fire)~="function" then return false end
        lastSync=os.clock() stats.syncRequests+=1
        return pcall(packet.Fire,packet)
    end
    local function transforms()
        if runtime and runtime.transforms then return runtime.transforms end
        local result={{name="world",apply=function(p) return p end}}
        local map=world:FindFirstChild("Map")
        local marker=map and map:FindFirstChild("PotatoPile")
        if marker and marker:IsA("BasePart") then
            local frame=marker.CFrame
            table.insert(result,{name="marker-local",apply=function(p) return frame:PointToWorldSpace(p) end})
            if type(pile.GetPileCFrame)=="function" then
                local ok,frame2=pcall(pile.GetPileCFrame,marker)
                if ok and valueType(frame2)=="CFrame" and frame2~=frame then
                    table.insert(result,{name="pile-local",apply=function(p) return frame2:PointToWorldSpace(p) end})
                end
            end
        end
        return result
    end
    local function discoverNative()
        local folder=world:FindFirstChild("PotatoPile")
        if NativeMap and folder then
            if nativeFolder~=folder then nativeMap=nil nativeState=nil nativeFolder=folder nativeScanAt=0 nativeTransform=nil end
            if not nativeMap and os.clock()>=nativeScanAt then
                nativeScanAt=os.clock()+5
                local info
                nativeMap,nativeState,info=NativeMap.discover(modules["Controllers.PotatoPileController"] or {},folder,runtime and runtime.nativeOptions)
                stats.upvalues=info.api stats.native_discovery=info stats.native_map=nativeMap~=nil
                if nativeState then keyInputs[nativeState]=true end
                if nativeMap then log("Mapa nativo de batatas identificado.") end
            end
            if nativeMap then stats.slot="native part-to-ID map" return true end
        end
        return false
    end
    local function prepare(valid)
        local folder=world:FindFirstChild("PotatoPile")
        if discoverNative() then return true end
        if indexedFolder==folder and theoretical then return true end
        if preparing or os.clock()<nextPrepare then return false,"Preparando os indices da pilha." end
        if not bindings.GetSlotPosition then
            requestSync() nextPrepare=os.clock()+1
            return false,"Aguardando os argumentos de posicao usados pelo jogo."
        end
        if not folder then return false,"Pilha indisponivel." end
        preparing=true
        local ok,message=pcall(function()
            local parts={}
            local physical=Spatial.new(0.09)
            for _,part in ipairs(folder:GetChildren()) do
                if part:IsA("BasePart") then table.insert(parts,part) physical.add(part.Position,part) end
            end
            stats.parts=#parts
            local frames=transforms()
            local maps,scores,records={},{},{}
            for i=1,#frames do maps[i]={} scores[i]=0 end
            local deadline=os.clock()+0.003
            for index=1,(pile.SLOT_COUNT or 30009) do
                if not valid() or closed then error("cancelado") end
                local readOk,value,b,c=bindings.GetSlotPosition(index)
                local p=readOk and point(value,b,c)
                if p then
                    records[index]=p
                    for i,frame in ipairs(frames) do
                        local transformed=frame.apply(p)
                        local part=physical.find(transformed)
                        if part and maps[i][part]==nil then maps[i][part]=index scores[i]+=1 end
                    end
                end
                if os.clock()>deadline then services.RunService.Heartbeat:Wait() deadline=os.clock()+0.003 end
            end
            local best,bestScore=1,0
            for i,score in ipairs(scores) do
                stats.scores[frames[i].name]=score
                if score>bestScore then best,bestScore=i,score end
            end
            if #parts==0 or bestScore<math.max(1,math.ceil(#parts*0.70)) then
                stats.slot="geometry mismatch"
                stats.position_samples={}
                for index,p in pairs(records) do
                    table.insert(stats.position_samples,{slot=index,x=p.X,y=p.Y,z=p.Z})
                    if #stats.position_samples==4 then break end
                end
                error("Posicoes nao coincidem com a pilha: "..bestScore.."/"..#parts)
            end
            local selected=frames[best]
            theoretical=Spatial.new(0.09)
            worldPositions={}
            for index,p in pairs(records) do
                local position=selected.apply(p)
                theoretical.add(position,index) worldPositions[index]=position
            end
            for part,index in pairs(maps[best]) do direct[part]=index directPositions[part]=part.Position end
            indexedFolder=folder stats.mapped=bestScore stats.slot="spatial / "..selected.name stats.generation+=1
            log("Indices confirmados por geometria: "..bestScore.."/"..#parts..".")
        end)
        preparing=false nextPrepare=os.clock()+(ok and 0 or 5)
        return ok,ok and nil or tostring(message)
    end
    local function physicalSlot(part)
        if not part or not part.Parent then return nil end
        local previous=directPositions[part]
        local position=part.Position
        if direct[part] and previous and previous.X==position.X and previous.Y==position.Y and previous.Z==position.Z then return direct[part] end
        if theoretical then
            local index=theoretical.find(position)
            if index then direct[part]=index directPositions[part]=position return index end
        end
        return nil
    end
    local function potatoInSlot(index)
        if not bindings.GetPotatoInSlot then return nil end
        local ok,id=bindings.GetPotatoInSlot(index)
        if not ok or not validId(id) then return nil end
        return id
    end
    local preferred="geometry"
    local votes={geometry=0,permuted=0}
    local orientationCache=setmetatable({},{__mode="k"})
    local function rotationError(part,id)
        if not id or not part.CFrame or not bindings.GetRotation then return nil end
        local ok,rotation=bindings.GetRotation(id)
        if not ok or valueType(rotation)~="CFrame" then return nil end
        local actual={part.CFrame:GetComponents()}
        local expected={rotation:GetComponents()}
        local error=0
        for i=4,12 do error+=math.abs(actual[i]-expected[i]) end
        return error
    end
    local function slot(part)
        if nativeMap then return NativeMap.id(nativeMap,part,nativeFolder,valueType) end
        local index=physicalSlot(part)
        if not index then return nil end
        local cached=orientationCache[part]
        if cached and cached.frame==part.CFrame then return cached.id end
        local permuted=potatoInSlot(index)
        if part.CFrame and permuted and permuted~=index then
            local rawError,permutedError=rotationError(part,index),rotationError(part,permuted)
            if rawError and permutedError then
                local chosen=nil
                if rawError<0.02 and permutedError>0.1 then chosen=index
                elseif permutedError<0.02 and rawError>0.1 then chosen=permuted end
                if chosen then
                    orientationCache[part]={frame=part.CFrame,id=chosen}
                    stats.rotation_matches=(stats.rotation_matches or 0)+1
                    return chosen
                end
            end
        end
        if preferred=="permuted" then return permuted end
        return index
    end
    local function alternate(part,id)
        if nativeMap then return nil end
        local index=physicalSlot(part)
        local other=index and (id==index and potatoInSlot(index) or index)
        return other~=id and other or nil
    end
    local function confirm(part,id,originalIndex)
        local index=originalIndex or physicalSlot(part)
        if not index then return end
        local mode=id==index and "geometry" or "permuted"
        votes[mode]+=1
        if votes[mode]>=3 and votes[mode]>votes[preferred] then preferred=mode end
        stats.identity={mode=preferred,confirmed_geometry=votes.geometry,confirmed_permuted=votes.permuted}
    end
    local function live(id) return validId(id) end
    local function kind(part,index)
        index=index or slot(part)
        if not index then return nil,part and part.Name=="Pumpkin" or false,false end
        local name,pumpkin,gem=nil,part and part.Name=="Pumpkin" or false,false
        if bindings.GetKind then local ok,value=bindings.GetKind(index) if ok then name=normalize(value) end
        elseif nativeState and type(originals.GetKind)=="function" then local ok,value=pcall(originals.GetKind,nativeState,index) if ok then name=normalize(value) end end
        if bindings.IsPumpkin then local ok,value=bindings.IsPumpkin(index) pumpkin=pumpkin or ok and value==true end
        if bindings.IsDiamond then local ok,value=bindings.IsDiamond(index) gem=ok and value==true end
        if nativeState and not bindings.IsPumpkin and type(originals.IsPumpkin)=="function" then local ok,value=pcall(originals.IsPumpkin,nativeState,index) pumpkin=pumpkin or ok and value==true end
        if nativeState and not bindings.IsDiamond and type(originals.IsDiamond)=="function" then local ok,value=pcall(originals.IsDiamond,nativeState,index) gem=ok and value==true end
        return name,pumpkin,gem
    end
    local function exposed(part,id)
        if not nativeState or type(originals.GetPotatoSlot)~="function" or type(pile.IsExposed)~="function" then return nil end
        local ok,index=pcall(originals.GetPotatoSlot,nativeState,id)
        if not ok or not validId(index) then return nil end
        local good,value=pcall(pile.IsExposed,nativeState,index)
        if good and type(value)=="boolean" then return value end
        return nil
    end
    local function specialTargets(valid)
        local result={}
        if not theoretical or not bindings.GetPotatoSlot or not bindings.GetPotatoInSlot then return result end
        local deadline=os.clock()+0.002
        for index=1,(pile.SLOT_COUNT or 30009) do
            if closed or not valid() then return {} end
            local id=potatoInSlot(index)
            if id then
                local name,pumpkin,gem=kind(nil,id)
                if (pumpkin or gem) and worldPositions[index] then
                    table.insert(result,{slot=id,position=worldPositions[index],kind=name,pumpkin=pumpkin,gem=gem,logical=true})
                end
            end
            if os.clock()>deadline then services.RunService.Heartbeat:Wait() deadline=os.clock()+0.002 end
        end
        return result
    end
    local keyEvent=packets.PotatoKeyMoved and packets.PotatoKeyMoved.OnClientEvent
    if keyEvent and type(keyEvent.Connect)=="function" then
        local ok,connection=pcall(keyEvent.Connect,keyEvent,function(id)
            if id==0 or validId(id) then
                if keyEventId~=id then keyRevision+=1 end
                keyEventId=id
            end
        end)
        if ok and connection then table.insert(keyConnections,connection) end
    end
    local revealed=packets.KeyRevealed and packets.KeyRevealed.OnClientEvent
    if revealed and type(revealed.Connect)=="function" then
        local ok,connection=pcall(revealed.Connect,revealed,function() keyRevision+=1 end)
        if ok and connection then table.insert(keyConnections,connection) end
    end
    local function keyTarget()
        local id=keyEventId
        local source=id~=nil and "PotatoKeyMoved" or nil
        local nativeKey=nativeState and rawget(nativeState,"KeyPotatoId")
        if (id==nil or id==0) and validId(nativeKey) then id=nativeKey source="native controller KeyPotatoId" end
        if id==nil then
            for input in pairs(keyInputs) do
                local value=rawget(input,"KeyPotatoId")
                if validId(value) then id=value source="captured native KeyPotatoId" break end
            end
        end
        stats.key={known=validId(id),source=source,id=validId(id) and id or nil}
        if not validId(id) then stats.key.reason="client has not disclosed a valid key ID" return nil end
        if nativeMap then
            for part,value in pairs(nativeMap) do
                if value==id and NativeMap.id(nativeMap,part,nativeFolder,valueType)==id then
                    return {slot=id,part=part,position=part.Position,logical=true,key=true,source=source,revision=keyRevision}
                end
            end
            if nativeState and type(originals.GetPotatoSlot)=="function" and type(originals.GetSlotPosition)=="function" then
                if not nativeTransform then
                    for _,frame in ipairs(transforms()) do
                        local matches,tested=0,0
                        for part,value in pairs(nativeMap) do
                            if NativeMap.id(nativeMap,part,nativeFolder,valueType) then
                                tested+=1
                                local ok,index=pcall(originals.GetPotatoSlot,nativeState,value)
                                local good,raw=pcall(originals.GetSlotPosition,nativeState,ok and index or 0)
                                local p=good and point(raw)
                                if p then
                                    local position=frame.apply(p)
                                    local actual=part.Position
                                    if math.abs(position.X-actual.X)+math.abs(position.Y-actual.Y)+math.abs(position.Z-actual.Z)<0.15 then matches+=1 end
                                end
                                if tested>=8 or matches>=3 then break end
                            end
                        end
                        if matches>=3 then nativeTransform=frame stats.native_key_transform=frame.name break end
                    end
                end
                if nativeTransform then
                    local ok,index=pcall(originals.GetPotatoSlot,nativeState,id)
                    if ok and validId(index) then
                        local good,raw=pcall(originals.GetSlotPosition,nativeState,index)
                        local p=good and point(raw)
                        if p then return {slot=id,position=nativeTransform.apply(p),logical=true,key=true,source=source,revision=keyRevision} end
                    end
                end
            end
        end
        if not bindings.GetPotatoSlot then stats.key.reason="native slot mapping unavailable" return nil end
        local ok,index=bindings.GetPotatoSlot(id)
        local position=ok and validId(index) and worldPositions[index] or nil
        if not position then stats.key.reason="key position unavailable" return nil end
        return {slot=id,position=position,logical=true,key=true,source=source,revision=keyRevision}
    end
    local function close()
        closed=true observer.close()
        for _,connection in ipairs(keyConnections) do pcall(function() connection:Disconnect() end) end
        if heatWrapper then pcall(function() if fire.GetHeat==heatWrapper then fire.GetHeat=originalHeat end end) end
    end
    return {slot=slot,alternate=alternate,confirm=confirm,physicalSlot=physicalSlot,live=live,specialTargets=specialTargets,keyTarget=keyTarget,exposed=exposed,kind=kind,heat=heat,prepare=prepare,discover=discoverNative,requestSync=requestSync,stats=stats,close=close,
        ready=function() return bindings.GetKind~=nil and bindings.GetSlotPosition~=nil and bindings.GetPotatoInSlot~=nil end,
        refresh=function() nextPrepare=0 end}
end
return Resolver

end)()

local Bridge = (function()
-- Luau · potato_bridge.luau · existing game UI input and cash checks · Roblox / Delta · Luau 0.745
local Bridge={}

function Bridge.create(services,Core)
    local gui=services.Players.LocalPlayer:WaitForChild("PlayerGui")
    local signalFire=type(firesignal)=="function" and firesignal or nil
    local connectionsGet=type(getconnections)=="function" and getconnections or nil
    local function visible(object)
        local current=object
        while current and current~=gui do
            if current:IsA("GuiObject") and not current.Visible then return false end
            if current:IsA("ScreenGui") and not current.Enabled then return false end
            current=current.Parent
        end
        return current==gui
    end
    local function texts(object)
        local result={}
        if object:IsA("TextLabel") or object:IsA("TextButton") or object:IsA("TextBox") then table.insert(result,object.Text) end
        for _,item in ipairs(object:GetDescendants()) do
            if item:IsA("TextLabel") or item:IsA("TextButton") then table.insert(result,item.Text) end
        end
        return table.concat(result," "):gsub("<.->","")
    end
    local function cash(text)
        if type(text)~="string" then return nil end
        local upper=string.upper(text)
        if upper:find("R$",1,true) or upper:find("ROBUX",1,true) then return nil end
        local raw=text:match("%$%s*[%d][%d%.,]*[KkMmBbTt]?")
        return raw and Core.parseAmount(raw) or nil
    end
    local function activate(button,headless)
        if not button or not button:IsA("GuiButton") or not headless and (not visible(button) or not button.Active) then
            return false,"botao indisponivel"
        end
        if not signalFire then return false,"firesignal nao disponibilizado pelo executor" end
        local signal=button.Activated
        if connectionsGet then
            local ok,items=pcall(connectionsGet,signal)
            if ok and #items==0 then
                local clickOk,clicks=pcall(connectionsGet,button.MouseButton1Click)
                if clickOk and #clicks>0 then signal=button.MouseButton1Click end
            end
        end
        local ok,why=pcall(signalFire,signal)
        return ok,ok and nil or tostring(why)
    end
    local function buyButton(expected)
        local screen=gui:FindFirstChild("StoreView")
        if not screen then return nil,"janela StoreView ausente" end
        local matches={}
        for _,item in ipairs(screen:GetDescendants()) do
            if item:IsA("GuiButton") and visible(item) and item.Active then
                local own=texts(item)
                local upper=string.upper(own.." "..item.Name)
                local rejected=upper:find("SOLD",1,true) or upper:find("OWNED",1,true) or upper:find("LOCKED",1,true)
                    or upper:find("ROBUX",1,true) or upper:find("R$",1,true) or upper:find("PERMANENT",1,true)
                if not rejected and (upper:find("BUY",1,true) or upper:find("PURCHASE",1,true) or upper:find("COMPRAR",1,true)) then
                    local context=own
                    local price=cash(context)
                    if not price and item.Parent then context=texts(item.Parent) price=cash(context) end
                    if not price and item.Parent then
                        for _,label in ipairs(item.Parent:GetChildren()) do
                            if label:IsA("TextLabel") then
                                local value=cash(label.Text)
                                if value and math.abs(value-expected)<0.005 then price=value break end
                            end
                        end
                    end
                    if price and math.abs(price-expected)<0.005 then table.insert(matches,item) end
                end
            end
        end
        if #matches~=1 then return nil,"compra sem botao unico com o preco em dinheiro esperado" end
        return matches[1]
    end
    local function diagnostic()
        local result={}
        for _,name in ipairs({"StoreView","ToolUpgrades"}) do
            local screen=gui:FindFirstChild(name)
            if screen then
                for _,item in ipairs(screen:GetDescendants()) do
                    if item:IsA("GuiButton") and visible(item) and #result<40 then
                        table.insert(result,{path=item:GetFullName(),text=texts(item),active=item.Active})
                    end
                end
            end
        end
        return result
    end
    return {available=signalFire~=nil,visible=visible,texts=texts,cash=cash,activate=activate,
        buyButton=buyButton,diagnostic=diagnostic}
end

return Bridge

end)()

local Adapter = (function()
-- Luau · potato_adapter.luau · gameplay coordination for PlaceId 116701845804918 · Roblox / Delta · Luau 0.745
local Adapter={}

function Adapter.create(services,modules,Core,config,nav,resolver,bridge,log,CutEngine,Chapter,Protocol,TopK,Burst)
    local player=services.Players.LocalPlayer
    local questMode=nil
    local playerGui=player:WaitForChild("PlayerGui")
    local world=services.Workspace
    local packets=modules["Modules.Resources.Packets"] or {}
    local protocol=Protocol.create(packets,modules["ModifiedPackages.Packet._Types"])
    local afterSale,postSaleWeaponBought=false,false
    local resumePosition,lastTable=nil,nil
    local sellRetryAt,dynamiteAt,dynamiteSerial=0,0,0
    local offerRetry={}
    local deniedOffers={}
    local upgradeGuard=Chapter.upgradeGuard()
    local nativeVacuum=false
    local vacuumRetryAt=0
    local vacuumMisses=0
    local heatUiAt,heatReadAt=0,0
    local heatLabels={}
    local vacuumHot=false
    local upgradeAudit={}
    local phaseGoal=nil
    local phaseNeedsIncome=false
    local bombPending=nil
    local bombBackoff=0.1
    local tableRetry=setmetatable({},{__mode="k"})
    local progressGoal=nil
    local snapshotAt=0
    local peeling=modules["Controllers.PeelingController"] or {}
    local cutting=modules["Controllers.CuttingController"] or {}
    local pileController=modules["Controllers.PotatoPileController"] or {}
    local toolController=modules["Controllers.ToolEquipController"] or {}
    local storeView=modules["Controllers.StoreViewController"] or {}
    local upgradeController=modules["Controllers.ToolUpgradeController"] or {}
    local stateShared=modules["Shared.PlayerStateShared"] or {}
    local cutShared=modules["Shared.CutToolShared"] or {}
    local carryShared=modules["Shared.CarryUpgradeShared"] or {}
    local connections={}
    local openedUpgrade=false
    local restoreHeadless=nil
    local rejected=setmetatable({},{__mode="k"})
    local variantCache=setmetatable({},{__mode="k"})
    local variantEpoch=0
    local candidate,findAt=nil,0
    local queue,queueIndex,queueExpires={},1,0
    local searchEmpty=false
    local cooling=false
    local coolingRetryAt,buyRetryAt,nextPickAt=0,0,0
    local warmupAt=0
    local adaptivePickDelay=0.04
    local cachedPurchase,purchaseCacheAt,purchaseCash=nil,0,nil
    local exactBagBound=false
    local pumpkinSerial,gemSerial=0,0
    local counts={collected=0,pumpkins=0,gems=0,sold=0,sales=0,throws=0,delivered=0,cuts=0,cooled=0,purchases=0}
    local purchases={}
    local cutEngine=nil
    local last={}
    local retryAt={}
    local deliveryPending=nil
    local cutGuiSnapshot=nil
    local droneConsent,droneAsked,droneRound=false,false,nil
    local masteryAt,mastered=0,false
    local dynamiteMax=false
    local productionReady=false
    local opBulkReady=false
    local bulkAt=nil
    local bulkStats={entered=0,seconds=0,completed=false}
    local pileBaseline=nil
    local keyProbeAt=0
    local keyProbeStats={attempts=0,confirmed=false}
    local keyProbeGuard=Chapter.keyProbeGuard()
    local bombTiming={remaining=0,source="unavailable"}
    local autoFeedRetryAt=0
    local nextBlurCheck=0
    local placement=Chapter.placementTiming(modules["Shared.PotatoTableShared"])
    local fastDeliverySuppressed=false
    local actionTimings={}
    local burst=Burst.new()
    local dashboardAt,dashboardCache=0,nil
    local upgradeMenuAt=nil
    local upgradeMenuStats={opens=0,closed_seconds=0}
    local cutDriving,closed=false,false
    local equippedTool=nil
    local specialCache,specialAt={},0
    local logicalAttemptAt=0
    local rejectedIds={}
    local rateAt,stockBefore,cutUnits,cutRate=os.clock(),nil,0,0
    local function itemPosition(item) return item.part and item.part.Position or item.position end
    local function itemAlive(item)
        return item and (item.part and item.part.Parent~=nil and item.part.Transparency<0.99 or item.logical and resolver.live(item.slot))
    end
    local function get(root,path)
        for _,name in ipairs(path) do root=root and root:FindFirstChild(name) end
        return root
    end
    local function safeCall(module,name,...)
        if type(module[name])~="function" then return false,nil end
        return pcall(module[name],...)
    end
    local function state()
        local ok,value=safeCall(stateShared,"TryGetPlayerState",player)
        if ok and type(value)=="table" and (value.Cash~=nil or value.CarryLevel~=nil) then return value end
        ok,value=safeCall(stateShared,"TryGetPlayerState",player.UserId)
        if ok and type(value)=="table" and (value.Cash~=nil or value.CarryLevel~=nil) then return value end
        return nil
    end
    local function cash()
        local data=state()
        if data and type(data.Cash)=="number" and data.Cash==data.Cash then return data.Cash end
        local label=get(playerGui,{"Cash","Counter","Value"})
        return label and Core.parseAmount(label.Text) or nil
    end
    local function inventory()
        local label=get(playerGui,{"Bag","Counter","Value"})
        local count,capacity=Core.parseCapacity(label and label.Text)
        local data=state()
        count,exactBagBound=Core.bagCount(data,label and label.Text)
        if data then
            if type(data.Potatoes)=="number" and data.Potatoes>=0 and data.Potatoes%1==0 then
                count=data.Potatoes exactBagBound=true
            end
            local ok,infinite=safeCall(carryShared,"HasInfiniteStorage",data)
            if ok and infinite==true then capacity=math.huge end
            if not capacity and type(data.CarryLevel)=="number" then
                local level=carryShared.Levels and carryShared.Levels[data.CarryLevel]
                if type(level)=="table" and type(level.Capacity)=="number" then capacity=level.Capacity end
            end
        end
        if config.infiniteBag and not config.opAutoFinish then capacity=math.huge end
        return count,capacity
    end
    local function alarm()
        local quest=playerGui:FindFirstChild("QuestCard")
        local label=quest and get(quest,{"PileHolder","Heat","Label"})
        if not label then return nil end
        local text=string.upper(label.Text)
        return text:find("CHARRING",1,true)~=nil or text:find("COOL IT",1,true)~=nil
            or text:find("BURNING",1,true)~=nil
    end
    local function isCutting()
        if type(peeling.IsPeeling)=="boolean" then return peeling.IsPeeling end
        local ok,value=safeCall(cutting,"GetPotato")
        if ok and value~=nil and value~=false then return true end
        local screen=playerGui:FindFirstChild("Peeling")
        local cancel=screen and screen:FindFirstChild("Cancel",true)
        return cancel~=nil and bridge.visible(cancel) and cancel.AbsoluteSize.X>0
    end
    cutEngine=CutEngine.create(config,{
        clock=os.clock,
        allowed=function() return not closed and cutDriving and Core.effective(config,"autoCut") end,
        schedule=function(delay,callback) task.delay(delay,callback) end,
        finish=function()
            if not isCutting() then return false,"A mesa nao esta ativa." end
            if not packets.PeelingFinished or type(packets.PeelingFinished.Fire)~="function" then return false,"Conclusao de corte indisponivel." end
            return pcall(packets.PeelingFinished.Fire,packets.PeelingFinished)
        end,
        native=function(enabled)
            local autoOk=safeCall(cutting,"SetAuto",enabled)
            local heldOk=safeCall(cutting,"SetHeld",enabled)
            if enabled and not autoOk and not heldOk then error("Controlador de movimento de corte indisponivel.") end
        end,
    })
    local function release()
        burst.cancel()
        safeCall(toolController,"SetUsing",false)
        cutDriving=false
        equippedTool=nil
        if cutEngine then cutEngine.pause() end
        safeCall(cutting,"SetHeld",false)
        safeCall(cutting,"SetAuto",false)
        nativeVacuum=false
        safeCall(pileController,"SetUseHeld",false)
        if protocol.matches("ToolUsing",{"Boolean"}) then protocol.fire("ToolUsing",false) end
    end
    local function cancelCut()
        release()
        if isCutting() then
            if type(packets.PeelingCancel)=="table" and type(packets.PeelingCancel.Fire)=="function" then
                pcall(packets.PeelingCancel.Fire,packets.PeelingCancel)
            end
            safeCall(peeling,"StopPeeling")
        end
        if cutGuiSnapshot and peeling.IsPeeling~=true then
            for object,value in pairs(cutGuiSnapshot) do
                if object.Parent then pcall(function() if object:IsA("ScreenGui") then object.Enabled=value else object.Visible=value end end) end
            end
            cutGuiSnapshot=nil
        end
    end
    local function waitUntil(predicate,timeout,valid)
        local deadline=os.clock()+timeout
        repeat
            if not valid() then return false,"cancelado" end
            if predicate() then return true end
            services.RunService.Heartbeat:Wait()
        until os.clock()>=deadline
        return false,"o jogo nao confirmou a acao no tempo configurado"
    end
    local function equip(tool)
        if tool==equippedTool then return end
        local activated=false
        if type(toolController.Equip)=="function" then
            local ok=safeCall(toolController,"Equip",tool)
            local read,current=safeCall(toolController,"GetEquippedTool")
            activated=ok and (not read or current==tool)
        end
        local hotbar=playerGui:FindFirstChild("Hotbar")
        local aliases={PotatoSucker="P0T4T0-3000",Shovel="Shovel",Dynamite="Dynamite",Hand="Hand"}
        local wantedIcon=nil
        for _,definition in ipairs((modules["Shared.ToolUpgradeShared"] or {}).Tools or {}) do if definition.Id==tool then wantedIcon=definition.Icon end end
        if hotbar and not activated then
            for _,button in ipairs(hotbar:GetDescendants()) do
                local identified=button.Name==tool or button:GetAttribute("ToolId")==tool
                if button:IsA("GuiButton") and not identified then
                    for _,child in ipairs(button:GetDescendants()) do
                        if child:IsA("TextLabel") and child.Text==aliases[tool] or wantedIcon and (child:IsA("ImageLabel") or child:IsA("ImageButton")) and child.Image==wantedIcon then identified=true break end
                    end
                end
                if button:IsA("GuiButton") and identified then
                    activated=bridge.activate(button,true)
                    if activated then break end
                end
            end
        end
        if not activated and protocol.matches("ToolEquip",{"String"}) then activated=protocol.fire("ToolEquip",tool) end
        if activated then equippedTool=tool end
    end
    local function interactionTool()
        cancelCut() equip("Hand")
    end
    local function suckerOverheated()
        if os.clock()<heatReadAt then return vacuumHot end
        heatReadAt=os.clock()+0.3
        local data=state()
        vacuumHot=data and (data.SuckerOverheated==true or data.PotatoSuckerOverheated==true) or player:GetAttribute("SuckerOverheated")==true
        if os.clock()>=heatUiAt then
            heatLabels={} heatUiAt=os.clock()+5
            for _,screen in ipairs(playerGui:GetChildren()) do
                if screen.Name~="AnonymousPotatoHub" then
                    for _,object in ipairs(screen:GetDescendants()) do if object:IsA("TextLabel") or object:IsA("TextButton") then table.insert(heatLabels,object) end end
                end
            end
        end
        if not vacuumHot then
            for _,label in ipairs(heatLabels) do
                if label.Parent and bridge.visible(label) then
                    local text=string.upper(label.Text)
                    if text:find("OVERHEAT",1,true) or text:find("SUPERAQUEC",1,true) then vacuumHot=true break end
                end
            end
        end
        return vacuumHot
    end
    local function collectTool()
        local data=state()
        local chosen=config.opAutoFinish and "Auto" or config.collectTool
        if chosen=="Auto" and data and Chapter.owns(data,"PotatoSucker") then chosen="PotatoSucker" end
        if chosen=="Auto" and config.clearPileFirst and dynamiteMax and data and Chapter.owns(data,"Shovel") then chosen="Shovel" end
        if chosen=="Auto" then chosen=data and Chapter.owns(data,"PotatoSucker") and "PotatoSucker" or data and Chapter.owns(data,"Shovel") and "Shovel" or "Hand" end
        if chosen=="PotatoSucker" and (suckerOverheated() or os.clock()<vacuumRetryAt) then
            chosen=data and Chapter.owns(data,"Shovel") and "Shovel" or "Hand"
        end
        if chosen~="Hand" and not (data and Chapter.owns(data,chosen)) then chosen="Hand" end
        equip(chosen)
        nativeVacuum=not config.opAutoFinish and not config.auraCollect and chosen=="PotatoSucker" and config.rarity=="Any" and Core.effective(config,"autoFarm")
        safeCall(pileController,"SetUseHeld",nativeVacuum)
    end
    local function tables()
        local result={}
        local machines=get(world,{"Map","PeelingMachines"})
        for i=1,4 do
            local model=machines and machines:FindFirstChild("PeelingTable"..i)
            if model and (config.tableChoice=="Nearest" or config.tableChoice==model.Name) then
                local prompt=get(model,{"TabelTop","PeelPrompt","Peel"})
                if prompt and prompt:IsA("ProximityPrompt") then table.insert(result,prompt) end
            end
        end
        local root=nav.actor()
        if root then table.sort(result,function(a,b)
            local pa,pb=nav.promptPosition(a),nav.promptPosition(b)
            return (pa and (pa-root.Position).Magnitude or math.huge)<(pb and (pb-root.Position).Magnitude or math.huge)
        end) end
        return result
    end
    local function crateCount()
        local area=get(world,{"Map","PeelingMachines","PotatoCrate","PotatoArea"})
        return area and tonumber(area:GetAttribute("PotatoCount")) or 0
    end
    local function selectedTable(allowStock)
        local options=tables()
        for _,prompt in ipairs(options) do if prompt.Enabled and os.clock()>=(tableRetry[prompt] or 0) then return prompt end end
        if allowStock and crateCount()>0 then
            for _,prompt in ipairs(options) do if os.clock()>=(tableRetry[prompt] or 0) then return prompt end end
        end
        return nil
    end
    local function promptFor(category,id)
        local model=get(world,{"Map","StoreItems",category,id})
        return model and get(model,{"Price","PromptAttachment","ProximityPrompt"})
    end
    local function shopItem(category,id,group,rank)
        if os.clock()<(offerRetry[id] or 0) then return nil end
        local prompt=promptFor(category,id)
        if not prompt or not prompt.Enabled or string.upper(prompt.ActionText)~="BUY" then return nil end
        local price=bridge.cash(prompt.ObjectText)
        if not price then return nil end
        return {id=id,category=category,group=group,rank=rank,prompt=prompt,price=price,name=id}
    end
    local function owns(list,id)
        if type(list)~="table" then return false end
        if list[id]==true then return true end
        for key,value in pairs(list) do if value==id or key==id and value~=false and value~=nil then return true end end
        return false
    end
    local function bestCutRank(data)
        local rank=1
        local current=player:GetAttribute("CutToolId")
        local ok,best=safeCall(cutShared,"GetBestTool",data)
        if ok then current=type(best)=="table" and best.Id or best end
        for index,tool in ipairs(cutShared.Tools or {}) do
            local ownOk,owned=safeCall(cutShared,"OwnsTool",data,tool.Id)
            if tool.Id==current or owns(data.CutTools,tool.Id) or ownOk and owned==true then rank=math.max(rank,index) end
        end
        return rank
    end
    local function upgradePrice(data,tool,id,level,button)
        local shared=modules["Shared.ToolUpgradeShared"] or {}
        if type(shared.GetUpgradeCost)=="function" then
            local ok,value=pcall(shared.GetUpgradeCost,data,tool,id)
            if ok and type(value)=="number" and value>0 then return value end
        end
        local prices=modules["Modules.Resources.Prices"] or {}
        local loaded,profile=safeCall(prices,"Get",player)
        if loaded then
            local price=Chapter.profilePrice(profile,tool,id,level)
            if price then return price end
        end
        if button and button.Parent then return bridge.cash(bridge.texts(button)) end
        return nil
    end
    local function upgradeOffers(data,balance,includeUnaffordable)
        local result={}
        upgradeAudit={}
        local shared=modules["Shared.ToolUpgradeShared"] or {}
        for _,tool in ipairs({"Shovel","Dynamite","PotatoSucker","Hand","AutoPeeler","HandPeeler","Drone","Body"}) do
            for _,id in ipairs(Chapter.allowed[tool] or {}) do
                if Chapter.canUpgrade(data,tool,id,config) and (id~="Luck" or Chapter.luckAllowed(shared,data)) then
                    local level=Chapter.level(shared,data,tool,id)
                    local definition=Chapter.definition(shared,tool,id)
                    local ok=definition~=nil
                    local maxLevel=ok and Chapter.maximum(shared,definition) or nil
                    local buttonOk,button=safeCall(upgradeController,"GetUpgradeButton",tool,id)
                    if not buttonOk or typeof(button)~="Instance" or not button:IsA("GuiButton") then button=nil end
                    local price=upgradePrice(data,tool,id,level,button)
                    upgradeAudit[tool.."/"..id]={level=level,maximum=maxLevel,price=price,
                        reason=level==nil and "level unavailable" or maxLevel==nil and "maximum unavailable" or level>=maxLevel and "maximum reached" or price==nil and "price unavailable" or not upgradeGuard.allowed(tool.."/"..id,level) and "refused without progress" or "eligible"}
                    local maxed=button and button:FindFirstChild("Maxed")
                    if level~=nil and maxLevel~=nil and upgradeGuard.allowed(tool.."/"..id,level) and level<Chapter.limit(tool,id,bestCutRank(data),#(cutShared.Tools or {}),config.worthEarlyLimit,config.nativeWalkUpgrade) and not (maxLevel and level>=maxLevel)
                        and (button or protocol.matches("ToolUpgradePurchase",{"String","String"})) then
                        local key=tool.."/"..id
                        if os.clock()>=(offerRetry[key] or 0) and type(price)=="number" and (includeUnaffordable or Core.purchaseReady(config,balance,price,level,deniedOffers[key])) then
                            table.insert(result,{group="upgrade",name=key,tool=tool,upgrade=id,button=button,
                                price=price,level=level,rank=id=="PotatoWorth" and (level<config.worthEarlyLimit and -300 or -80) or tool=="Dynamite" and -200+Chapter.rank(tool,id) or tool=="Shovel" and -150 or tool=="Drone" and -175 or id=="Luck" and -50 or Chapter.rank(tool,id)})
                        end
                    end
                end
            end
        end
        table.sort(result,function(a,b) return a.rank<b.rank end)
        return result
    end
    local function machineOffer(data,balance,includeUnaffordable)
        if not config.buyMachines then return nil end
        local shared=modules["Shared.ToolUpgradeShared"] or {}
        if not Chapter.maxed(shared,data,"Dynamite") then return nil end
        for _,spec in ipairs({{"PeelingMachine","HandPeeler","HasHandPeeler"},{"AutoPeelingMachine","AutoPeeler","HasAutoPeeler"}}) do
            if data[spec[3]]~=true then
                local model=get(world,{"Map","PeelingMachines",spec[1]})
                local pricePart=model and model:FindFirstChild("Price")
                local prompt=pricePart and get(pricePart,{"PromptAttachment","ProximityPrompt"})
                local price=prompt and (bridge.cash(prompt.ObjectText) or bridge.cash(bridge.texts(pricePart)))
                if prompt and string.upper(prompt.ActionText)=="BUY" and price and (includeUnaffordable or Core.affordable(config,balance,price,"Cash")) then
                    return {id=spec[2],name=spec[2],group="machine",unlock=spec[3],prompt=prompt,price=price,rank=-75}
                end
            end
        end
        return nil
    end
    local function clearMenuBlur()
        if not config.fixMenuBlur or isCutting() then return end
        local good,open=safeCall(upgradeController,"IsOpen")
        local storeGood,storeOpen=safeCall(storeView,"IsOpen")
        if not good or not storeGood then return end
        for _,parent in ipairs({services.Lighting,world.CurrentCamera}) do
            if parent then
                for _,effect in ipairs(parent:GetChildren()) do
                    if effect:IsA("BlurEffect") and effect.Size>0 then effect.Size=0 end
                end
            end
        end
    end
    local function nextPurchase()
        local balance=cash()
        local data=state()
        if not balance or not data then return nil end
        local shared=modules["Shared.ToolUpgradeShared"] or {}
        phaseGoal=nil phaseNeedsIncome=false
        if config.opAutoFinish and Chapter.opBulkReady(shared,data) and last.mountainEmpty~=true then progressGoal=nil return nil end
        if not config.opAutoFinish and not config.teamFunding and config.clearPileFirst and Chapter.maxed(shared,data,"Dynamite") then
            local goal=machineOffer(data,balance,true)
            if not goal and data.HasAutoPeeler and Core.effective(config,"autoBuyUpgrades") then
                for _,offer in ipairs(upgradeOffers(data,balance,true)) do if offer.tool=="AutoPeeler" then goal=offer break end end
            end
            if not goal and not Chapter.owns(data,"PotatoSucker") then goal=shopItem("Tools","P0T4T0-3000","collect",1) end
            if not goal and not Chapter.owns(data,"Shovel") then goal=shopItem("Tools","Shovel","collect",40) end
            if not goal and Chapter.owns(data,"PotatoSucker") and Core.effective(config,"autoBuyUpgrades") then
                for _,offer in ipairs(upgradeOffers(data,balance,true)) do
                    if offer.tool=="PotatoSucker" and (not goal or offer.upgrade=="PickAmount") then goal=offer end
                end
            end
            if not goal and Core.effective(config,"autoBuyUpgrades") then
                for _,offer in ipairs(upgradeOffers(data,balance,true)) do
                    if offer.tool=="Shovel" or offer.tool=="Dynamite" or offer.tool=="AutoPeeler" or offer.tool=="PotatoSucker" or offer.tool=="Drone" or offer.tool=="Body" and offer.upgrade=="Luck" then goal=offer break end
                end
            end
            phaseGoal=goal progressGoal=goal
            if goal then
                local blocked=deniedOffers[goal.name]
                local budgetReady=Core.affordable(config,balance,goal.price,"Cash") and (not blocked or blocked.level~=goal.level or balance>=blocked.cash)
                phaseNeedsIncome=not budgetReady
                if budgetReady then return goal end
            end
            return nil
        end
        local options={}
        if Core.effective(config,"autoBuyUpgrades") then
            local available=upgradeOffers(data,balance,true)
            local worth=upgradeAudit["Body/PotatoWorth"]
            if worth and (worth.level==nil or worth.maximum==nil or worth.level<worth.maximum and worth.price==nil) then
                progressGoal={name="Body/PotatoWorth: "..worth.reason}
                return nil
            end
            for _,offer in ipairs(available) do
                local blocked=deniedOffers[offer.name]
                if not blocked or blocked.level~=offer.level or balance>=blocked.cash then table.insert(options,offer) end
            end
        end
        if Core.effective(config,"autoBuyTools") or afterSale and config.buyAfterSell then
            local best=bestCutRank(data)
            if not config.teamFunding then
                for index,tool in ipairs(cutShared.Tools or {}) do
                    if index>best then local offer=shopItem("Knives",tool.Id,"cut",10) if offer then offer.tier=index table.insert(options,offer) end end
                end
            end
            if Core.effective(config,"autoFarm") then
                for _,id in ipairs({"Dynamite","Shovel","P0T4T0-3000"}) do
                    local ownedId=id=="P0T4T0-3000" and "PotatoSucker" or id
                    if not Chapter.owns(data,ownedId) then local offer=shopItem("Tools",id,"collect",20) if offer then table.insert(options,offer) end end
                end
            end
        end
        local _,capacity=inventory()
        if config.opAutoFinish then
            local machine=machineOffer(data,balance,true)
            if machine then table.insert(options,machine) end
        end
        if Core.effective(config,"autoBuyStorage") and not config.infiniteBag and capacity~=math.huge and type(data.CarryLevel)=="number" then
            local level=carryShared.Levels and carryShared.Levels[data.CarryLevel+1]
            if type(level)=="table" and level.ItemName then local offer=shopItem("Storage",level.ItemName,"storage",90) if offer then offer.capacity=level.Capacity table.insert(options,offer) end end
        end
        local processing=config.opAutoFinish and last.mountainEmpty==true and Chapter.opBulkReady(shared,data)
        local goal,affordable=Chapter.selectPurchase(Core,config,balance,options,processing)
        progressGoal=goal
        if affordable then return goal end
        return nil
    end

    local function stockCount()
        local area=get(world,{"Map","PeelingMachines","SellCrate","PotatoArea"})
        local value=area and area:GetAttribute("PotatoCount")
        return type(value)=="number" and value>=0 and value or nil
    end
    local function snapshot()
        if os.clock()<snapshotAt then return last end
        snapshotAt=os.clock()+0.12
        placement.apply(config.fastDelivery and not fastDeliverySuppressed,config.placementDelay)
        if bombPending and os.clock()>=bombPending.deadline then
            bombPending=nil bombBackoff=math.min(12,math.max(0.5,bombBackoff*1.75)) dynamiteAt=os.clock()+bombBackoff
        end
        local count,capacity=inventory()
        local gained,missed=burst.observe(os.clock(),count)
        counts.collected+=gained
        if missed and equippedTool=="PotatoSucker" then vacuumRetryAt=os.clock()+2 end
        local heat,flowing,heatSource=resolver.heat()
        cooling=Core.coolingLatch(cooling,heat,config,alarm())
        local balance=cash()
        if os.clock()>=purchaseCacheAt then
            cachedPurchase=nextPurchase() purchaseCacheAt=os.clock()+0.7 purchaseCash=balance
        end
        local purchase=os.clock()>=buyRetryAt and cachedPurchase or nil
        local crank=get(world,{"Map","PeelingMachines","PeelingMachine","CrankPromptPart","Crank"})
        last={cash=balance,carried=count,capacity=capacity,heat=heat,flowing=flowing,heatSource=heatSource,
            needCooling=cooling and not flowing,cutting=isCutting(),tableReady=selectedTable(true)~=nil,retryAt=retryAt,deliveryPending=deliveryPending~=nil,
            hasCandidate=itemAlive(candidate) or queueIndex<=#queue and os.clock()<queueExpires,
            noCandidate=searchEmpty,candidatePumpkin=candidate~=nil and candidate.pumpkin==true,
            purchase=purchase,canBuy=purchase~=nil,buyRetryAt=buyRetryAt,coolingRetryAt=coolingRetryAt}
        last.crankReady=crank~=nil and crank.Enabled
        last.stock=stockCount()
        if last.stock and stockBefore and last.stock>stockBefore then cutUnits+=last.stock-stockBefore end
        stockBefore=last.stock
        if os.clock()-rateAt>=1 then cutRate=cutUnits/(os.clock()-rateAt) cutUnits=0 rateAt=os.clock() end
        last.cutRate=cutRate
        local removedOk,removed=safeCall(pileController,"GetRemovedFraction")
        last.mountainEmpty=removedOk and type(removed)=="number" and removed>=1
        last.sellReady=Chapter.sellReady(config,last.stock,{cutting=last.cutting,crate=crateCount(),carried=count,exhausted=searchEmpty or last.mountainEmpty})
        if not config.opAutoFinish and progressGoal and progressGoal.price and balance and balance<progressGoal.price+config.reserveCash and last.stock and last.stock>=math.min(50,config.sellThreshold) then last.sellReady=true end
        last.sellRetryAt=sellRetryAt
        last.afterSale=afterSale
        last.returnToTable=afterSale and resumePosition~=nil
        last.postSaleWeaponBought=postSaleWeaponBought
        last.goal=progressGoal
        local data=state()
        if os.clock()>=masteryAt then
            local shared=modules["Shared.ToolUpgradeShared"] or {}
            dynamiteMax=Chapter.maxed(shared,data,"Dynamite")
            mastered=Chapter.maxed(shared,data,"Shovel") and dynamiteMax
            productionReady=Chapter.productionReady(shared,data)
            opBulkReady=Chapter.opBulkReady(shared,data)
            masteryAt=os.clock()+1
        end
        local clearReady=Chapter.clearReady(config,modules["Shared.ToolUpgradeShared"] or {},data)
        last.focusClear=Core.effective(config,"autoFarm") and (config.clearPileFirst or config.opAutoFinish) and clearReady and removedOk and type(removed)=="number" and removed<1
        local funding=Chapter.fundingPlan(Core,config,balance,progressGoal,crateCount(),last.stock,capacity,config.opAutoFinish and opBulkReady or productionReady)
        last.opFunding=funding
        if funding.needed and funding.cut then last.focusClear=false end
        if funding.sell then last.sellReady=true end
        last.bulkOnly=config.opAutoFinish and opBulkReady and last.focusClear
        last.postClearUnload=config.opAutoFinish and opBulkReady and last.mountainEmpty and count and count>0
        if last.bulkOnly then
            if not bulkAt then
                bulkAt=os.clock() bulkStats.entered+=1 bulkStats.completed=false
                log("Sugador MAX: iniciando coleta continua ate esvaziar a montanha.")
            end
            bulkStats.seconds=os.clock()-bulkAt
        elseif bulkAt then
            bulkStats.seconds=os.clock()-bulkAt bulkStats.completed=last.mountainEmpty bulkAt=nil
            if bulkStats.completed then log("Montanha vazia: retomando entrega e corte para a chave.") end
        end
        if config.opAutoFinish and removedOk and type(removed)=="number" and removed==removed and removed>=0 and removed<=1 then
            if not pileBaseline then pileBaseline={time=os.clock(),fraction=removed} end
            last.pileProgress={source="native GetRemovedFraction",removed_fraction=removed,
                delta_fraction=math.max(0,removed-pileBaseline.fraction),elapsed=os.clock()-pileBaseline.time}
        end
        last.phase=dynamiteMax and (phaseGoal and "equipment: "..phaseGoal.name or "clear pile") or "fund dynamite"
        if config.opAutoFinish then last.phase=funding.needed and "OP: renda para "..tostring(progressGoal and progressGoal.name) or opBulkReady and last.focusClear and "OP: coleta continua / sugador MAX" or last.focusClear and "OP: limpeza e melhorias" or last.mountainEmpty and "OP: cortar estoque e buscar chave" or "OP: preparar equipamentos" end
        last.productionReady=productionReady
        last.deliveryGoal=last.focusClear and Core.productionGoal(config,capacity,crateCount()) or nil
        if funding.needed and not funding.cut then last.deliveryGoal=funding.deliveryGoal end
        last.opBurst=burst.stats
        local keyTarget=config.opAutoFinish and config.opKeyShortcut and resolver.keyTarget and resolver.keyTarget() or nil
        last.keyProbeReady=keyTarget~=nil and data and data.HasKey~=true and count and capacity and count<capacity and os.clock()>=keyProbeAt and keyProbeGuard.allowed(keyTarget,last.mountainEmpty,os.clock())
        if last.focusClear and os.clock()<autoFeedRetryAt and capacity==math.huge then last.deliveryGoal=math.huge end
        local finalKnife=data and #(cutShared.Tools or {})>1 and bestCutRank(data)>=#cutShared.Tools
        local remaining=math.max(0,config.cutBuffer-crateCount())
        last.needBuffer=false
        last.bufferDeliveryGoal=last.needBuffer and math.min(remaining,Core.deliveryGoal(config,capacity) or remaining) or nil
        if os.clock()>=nextBlurCheck then nextBlurCheck=os.clock()+1 clearMenuBlur() end
        last.drone=data and data.HasDrone==true
        local round=data and data.RunStartTime or 0
        if droneRound~=round then droneRound=round droneConsent=false droneAsked=false upgradeGuard.reset() end
        last.droneReady=config.autoBuyDrone and droneConsent and not last.drone and Core.effective(config,"autoFarm")
        last.askDrone=not last.bulkOnly and config.autoBuyDrone and not droneAsked and not last.drone and Core.effective(config,"autoFarm")
        last.dynamiteReady=data and Chapter.owns(data,"Dynamite") and os.clock()>=dynamiteAt
            and not bombPending and protocol.matches("DynamiteThrow",{"NumberU32"}) and itemAlive(candidate)
        if last.dynamiteReady then
            bombTiming.remaining,bombTiming.interval,bombTiming.source=Chapter.pickTiming(modules["Shared.ToolUpgradeShared"] or {},toolController,pileController,data,"Dynamite")
            last.dynamiteReady=bombTiming.remaining<=0
        end

        last.canStageCut=get(world,{"Map","PeelingMachines","PotatoCrate","PotatoArea","PlacePrompt"})~=nil
        return last
    end
    local function popQueue(valid,onlyPumpkins)
        local folder=world:FindFirstChild("PotatoPile")
        if not folder then return nil end
        local params=RaycastParams.new()
        params.FilterType=Enum.RaycastFilterType.Include params.FilterDescendantsInstances={folder}
        local checked=0
        while queueIndex<=#queue and os.clock()<queueExpires do
            if not valid() then return nil end
            local item=queue[queueIndex] queueIndex+=1
            local rejectedAt=item.part and rejected[item.part] or rejectedIds[item.slot] or 0
            if itemAlive(item) and os.clock()>=rejectedAt and (not onlyPumpkins or item.pumpkin) then
                if item.part then item.slot=resolver.slot(item.part) end
                local exposed=resolver.exposed and resolver.exposed(item.part,item.slot)
                local hit=exposed==nil and item.part and world:Raycast(item.part.Position+Vector3.new(0,25,0),Vector3.new(0,-25.5,0),params)
                if item.slot and (item.logical or exposed==true or hit and hit.Instance==item.part) then candidate=item searchEmpty=false snapshotAt=0 return item end
            end
            checked+=1
            if checked%24==0 then services.RunService.Heartbeat:Wait() end
        end
        return nil
    end

    local function findCandidate(valid)
        snapshotAt=0
        local batch=Core.batchCollect(config)
        local bulk=batch or productionReady and config.throughputMode and config.rarity=="Any"
        local prepared,prepareError=resolver.prepare(valid)
        if not prepared then return nil,prepareError end
        local held,capacity=inventory()
        local onlyPumpkins=held~=nil and capacity~=nil and held>=capacity and not Core.effective(config,"autoDynamite")
        if variantEpoch~=resolver.stats.generation then
            variantEpoch=resolver.stats.generation variantCache=setmetatable({},{__mode="k"})
            candidate=nil queue={} queueIndex=1 queueExpires=0
        end
        if itemAlive(candidate) and os.clock()>=(candidate.part and rejected[candidate.part] or rejectedIds[candidate.slot] or 0) and (not onlyPumpkins or candidate.pumpkin) then return candidate end
        if os.clock()<queueExpires then
            local nextItem=popQueue(valid,onlyPumpkins)
            if nextItem then return nextItem end
        end
        if os.clock()<findAt then return nil end
        candidate=nil findAt=os.clock()+0.4
        local root=nav.actor()
        if not root then return nil end
        local folder=world:FindFirstChild("PotatoPile")
        if not folder then return nil end
        local parts=folder:GetChildren()
        local selected=TopK.new(256)
        local unresolved=false
        local attempts=0
        if variantEpoch~=resolver.stats.generation then
            variantEpoch=resolver.stats.generation variantCache=setmetatable({},{__mode="k"})
        end
        for index,part in ipairs(parts) do
            if not valid() then return nil end
            if part:IsA("BasePart") and part.Transparency<0.99 and os.clock()>=(rejected[part] or 0) then
                local distance=(part.Position-root.Position).Magnitude
                if distance<=config.maxDistance then
                    local pumpkin=part.Name=="Pumpkin"
                    local kind,slot,isGem
                    local needKind=not batch
                    if needKind then
                        local cached=variantCache[part]
                        if cached and resolver.slot(part)==cached.slot then kind,pumpkin,slot,isGem=cached.kind,cached.pumpkin,cached.slot,cached.gem
                        else
                            if attempts<8 or resolver.stats.kind~="unresolved" then
                                attempts+=1
                                slot=resolver.slot(part)
                                if slot then kind,pumpkin,isGem=resolver.kind(part,slot) end
                            end
                            if kind then variantCache[part]={kind=kind,pumpkin=pumpkin,slot=slot,gem=isGem} end
                        end
                        if not kind and not pumpkin then unresolved=true end
                    end
                    if (questMode=="gem" and isGem or Core.acceptVariant(config,kind,pumpkin,isGem)) and (not onlyPumpkins or pumpkin) then
                        local worth=({Normal=1,Golden=3,Diamond=6,Rainbow=10,Key=1,Charred=0.5})[kind] or 1
                        local score=not config.opAutoFinish and config.selection=="Random" and math.random()*1000 or distance
                        if config.keyPriority and kind=="Key" then score-=10000000000 end
                        if config.pumpkinPriority and pumpkin then score-=1000000000 end
                        if isGem and (questMode=="gem" or not bulk and config.gemPriority and config.collectGems) then score-=1000000 end
                        if not bulk and config.priorityValue and config.rarity=="Any" then score-=worth*10000 end
                        selected.add({part=part,kind=kind,pumpkin=pumpkin,gem=isGem,slot=slot,distance=distance,worth=worth,score=score})
                    end
                end
            end
            if index%700==0 then services.RunService.Heartbeat:Wait() end
        end
        if not bulk and (questMode=="gem" or config.logicalSpecials and (config.collectPumpkins or config.collectGems)) then
            if os.clock()>=specialAt then specialCache=resolver.specialTargets(valid) specialAt=os.clock()+20 end
            local seen={}
            for _,entry in ipairs(selected.values()) do if entry.slot then seen[entry.slot]=true end end
            for _,item in ipairs(specialCache) do
                if not valid() then return nil end
                if os.clock()>=logicalAttemptAt and not seen[item.slot] and os.clock()>=(rejectedIds[item.slot] or 0) and resolver.live(item.slot)
                    and (questMode=="gem" and item.gem or Core.acceptVariant(config,item.kind,item.pumpkin,item.gem))
                    and (not onlyPumpkins or item.pumpkin) then
                    local distance=(item.position-root.Position).Magnitude
                    if distance<=config.maxDistance then
                        item.score=distance-(item.pumpkin and config.pumpkinPriority and 1000000000
                            or item.gem and (config.gemPriority or questMode=="gem") and 1000000 or 0)
                        selected.add(item)
                    end
                end
            end
        end
        local choices=selected.values()
        queue,queueIndex,queueExpires=choices,1,os.clock()+5
        candidate=popQueue(valid,onlyPumpkins)
        searchEmpty=candidate==nil
        if not candidate and unresolved and config.rarity~="Any" then
            return nil,"Raridade indisponivel: o cliente nao expos um vinculo verificavel entre peca, indice e estado."
        end
        return candidate
    end
    local function approachPart(item,valid)
        local root=nav.actor()
        if not root or not itemAlive(item) then return false,"alvo indisponivel" end
        local position=itemPosition(item)
        if (root.Position-position).Magnitude<=math.min(18,config.auraRadius) then return true end
        if config.movement=="Teleport" then return nav.goTo(position+Vector3.new(0,3.5,0),valid,true) end
        local delta=root.Position-position
        local horizontal=Vector3.new(delta.X,0,delta.Z)
        local near=position+(horizontal.Magnitude>0.1 and horizontal.Unit or Vector3.new(0,0,1))*5
        local params=RaycastParams.new() params.FilterType=Enum.RaycastFilterType.Exclude
        params.FilterDescendantsInstances={player.Character,world:FindFirstChild("PotatoPile")}
        local hit=world:Raycast(near+Vector3.new(0,12,0),Vector3.new(0,-120,0),params)
        if not hit then return false,"sem piso proximo da batata" end
        local ok,message=nav.goTo(hit.Position,valid)
        root=nav.actor()
        if not ok then return false,message end
        return root~=nil and itemAlive(item) and (root.Position-position).Magnitude<=18,"alvo fora do alcance"
    end
    local dynamite
    local function keyProbe(valid)
        local item=resolver.keyTarget and resolver.keyTarget()
        if not item then return true end
        keyProbeAt=os.clock()+10 snapshotAt=0
        if not protocol.matches("PotatoPick",{"NumberU32"}) or not protocol.matches("ToolSwing",{}) then return true end
        interactionTool()
        local moved,why=approachPart(item,valid)
        if not moved then keyProbeStats.last_result=tostring(why) return false,why end
        local current=resolver.keyTarget()
        if not valid() or not current or current.slot~=item.slot then return true end
        if not keyProbeGuard.begin(current,last.mountainEmpty,os.clock()) then return true end
        keyProbeAt=0
        keyProbeStats.attempts+=1 keyProbeStats.id=item.slot keyProbeStats.source=item.source
        local swung=protocol.fire("ToolSwing")
        local sent,message=false,"Ferramenta de coleta indisponivel."
        if swung then sent,message=protocol.fire("PotatoPick",item.slot) end
        if not sent then keyProbeStats.last_result="local send failed" return false,message end
        local confirmed=waitUntil(function()
            local data=state()
            return data and data.HasKey==true
        end,0.8,valid)
        keyProbeStats.confirmed=confirmed==true
        keyProbeStats.last_result=confirmed and "HasKey confirmed by player state" or "no HasKey confirmation; normal progression continues"
        snapshotAt=0 candidate=nil
        if confirmed then log("Atalho da chave confirmado pelo estado do jogo.")
        else log("Teste da chave: o servidor nao confirmou a coleta antecipada.") end
        return true
    end
    local function collect(valid)
        local batch=Core.batchCollect(config)
        if batch and (burst.stats.pending>0 or os.clock()<nextPickAt) then return true end
        if isCutting() then cancelCut() end
        local item,message=findCandidate(valid)
        if not item then
            if message then log(message,"error") end
            return true
        end
        collectTool()
        local pickInterval=nil
        if batch then
            local remaining
            remaining,pickInterval=Chapter.pickTiming(modules["Shared.ToolUpgradeShared"] or {},toolController,pileController,state(),equippedTool or "Hand")
            if remaining>0 then nextPickAt=os.clock()+math.min(remaining,0.25) return true end
        end
        local before,capacity=inventory()
        local beforePumpkin,beforeGem=pumpkinSerial,gemSerial
        if not before or not capacity or before>=capacity and not item.pumpkin then return false,"bolsa cheia ou capacidade desconhecida" end
        local identity=resolver.stats.identity
        local mapped=resolver.stats.native_map or identity and math.max(identity.confirmed_geometry or 0,identity.confirmed_permuted or 0)>=3
        if batch and mapped and exactBagBound and not item.logical and not item.pumpkin then
            local deliveryLimit=config.teamFunding and Core.effective(config,"autoDeliver") and Core.deliveryGoal(config,capacity)
            local batchCapacity=deliveryLimit or capacity
            local limit=burst.budget(os.clock(),before,batchCapacity)
            if limit==0 then return true end
            local moved,why=approachPart(item,valid)
            if not moved then candidate=nil return false,why end
            if valid() and Core.effective(config,"autoDynamite") and not bombPending and os.clock()>=dynamiteAt then dynamite(valid) end
            local root=nav.actor()
            local folder=world:FindFirstChild("PotatoPile")
            if not root or not folder then return true end
            local params=RaycastParams.new()
            params.FilterType=Enum.RaycastFilterType.Include params.FilterDescendantsInstances={folder}
            local ids={}
            local function add(target)
                if not itemAlive(target) or target.pumpkin or not target.part
                    or (target.part.Position-root.Position).Magnitude>math.min(18,config.auraRadius) then return end
                local id=resolver.slot(target.part)
                local exposed=resolver.exposed and resolver.exposed(target.part,id)
                local hit=exposed==nil and world:Raycast(target.part.Position+Vector3.new(0,25,0),Vector3.new(0,-25.5,0),params)
                if exposed~=true and (not hit or hit.Instance~=target.part) then return end
                if not burst.available(id,os.clock()) or table.find(ids,id) then return end
                table.insert(ids,id)
            end
            add(item)
            local inspected=0
            while #ids<limit and queueIndex<=#queue and inspected<64 do
                local extra=queue[queueIndex]
                if itemAlive(extra) and (itemPosition(extra)-root.Position).Magnitude>math.min(18,config.auraRadius) then break end
                queueIndex+=1 inspected+=1 add(extra)
            end
            candidate=nil snapshotAt=0
            if not valid() or #ids==0 then return true end
            if not protocol.matches("PotatoPick",{"NumberU32"}) or not protocol.matches("ToolSwing",{}) then return false,"Protocolo de coleta OP indisponivel." end
            if not burst.begin(os.clock(),before,ids) then return true end
            nextPickAt=os.clock()+math.max(0.08,pickInterval or 0.08)
            if protocol.matches("ToolUsing",{"Boolean"}) then protocol.fire("ToolUsing",true) end
            for _,id in ipairs(ids) do
                if not valid() then burst.cancel() return false,"cancelado" end
                local swung=protocol.fire("ToolSwing")
                local sent=swung and protocol.fire("PotatoPick",id)
                if not sent then burst.cancel() return false,"Pedido OP recusado pelo protocolo local." end
            end
            -- Poll from snapshots instead of blocking the scheduler on every target.
            return true
        end
        local function confirmedPick()
            local count=inventory()
            return count~=nil and count>before or item.pumpkin and pumpkinSerial>beforePumpkin or item.gem and gemSerial>beforeGem
        end
        if os.clock()<nextPickAt then return true end
        local ok,why=approachPart(item,valid)
        if not ok then if item.part then rejected[item.part]=os.clock()+5 else rejectedIds[item.slot]=os.clock()+30 end candidate=nil findAt=0 return false,why end
        if not valid() then return false,"cancelado" end
        item.slot=item.part and resolver.slot(item.part) or item.slot
        item.geometry=item.part and resolver.physicalSlot(item.part) or nil
        if item.slot then
            item.kind,item.pumpkin,item.gem=resolver.kind(item.part,item.slot)
            if not (questMode=="gem" and item.gem or Core.acceptVariant(config,item.kind,item.pumpkin,item.gem)) then candidate=nil return true end
        end
        if item.logical then logicalAttemptAt=os.clock()+5 end
        local picked=false
        if item.slot and type(packets.PotatoPick)=="table" and type(packets.PotatoPick.Fire)=="function"
            and type(packets.ToolSwing)=="table" and type(packets.ToolSwing.Fire)=="function" then
            local targets={item}
            local root=nav.actor()
            local limit=Core.pickLimit(config,before,capacity,item.pumpkin)
            if last.deliveryGoal and last.deliveryGoal<math.huge then limit=math.min(limit,math.max(1,last.deliveryGoal-before)) end
            if last.needBuffer then limit=math.min(limit,math.max(1,(last.bufferDeliveryGoal or 1)-before)) end
            local identity=resolver.stats.identity
            if not identity or math.max(identity.confirmed_geometry or 0,identity.confirmed_permuted or 0)<3 then limit=1 end
            while #targets<limit and queueIndex<=#queue and root do
                local extra=queue[queueIndex]
                if not itemAlive(extra) then queueIndex+=1
                elseif extra.pumpkin or extra.logical or (itemPosition(extra)-root.Position).Magnitude>math.min(18,config.auraRadius) then break
                else
                    extra.slot=extra.part and resolver.slot(extra.part) or extra.slot
                    if not extra.slot then break end
                    queueIndex+=1 table.insert(targets,extra)
                end
            end
            local sent,errorMessage=pcall(function()
                if protocol.matches("ToolUsing",{"Boolean"}) then protocol.fire("ToolUsing",true) end
                for _,target in ipairs(targets) do
                    if not valid() then break end
                    packets.ToolSwing:Fire()
                    packets.PotatoPick:Fire(target.slot)
                end
            end)
            if not sent then log("Coleta direta indisponivel; usando entrada nativa: "..tostring(errorMessage),"error") end
            picked=sent
        end
        if not picked then return false,"Indice da batata nao confirmado; filtro especifico mantido em espera." end
        local confirmed,reason=waitUntil(confirmedPick,config.speedMode=="Turbo" and math.min(0.65,config.actionTimeout) or config.actionTimeout,valid)
        if not confirmed and valid() and item.part and resolver.alternate then
            local alternative=resolver.alternate(item.part,item.slot)
            if alternative then
                local name,pumpkin,gem=resolver.kind(item.part,alternative)
                if Core.acceptVariant(config,name,pumpkin,gem) then
                    local ok=protocol.fire("PotatoPick",alternative)
                    if ok then
                        confirmed,reason=waitUntil(confirmedPick,0.4,valid)
                        if confirmed then item.slot=alternative end
                    end
                end
            end
        end
        local after=inventory()
        if confirmed then
            vacuumMisses=0
            if item.part and not nativeVacuum then resolver.confirm(item.part,item.slot,item.geometry) end
            counts.collected+=math.max(0,(after or before)-before)
            adaptivePickDelay=math.max(0.04,adaptivePickDelay*0.9)
        else
            if equippedTool=="PotatoSucker" then
                vacuumMisses+=1
                if vacuumMisses>=2 then vacuumRetryAt=os.clock()+2 vacuumMisses=0 end
            end
            if item.part then rejected[item.part]=os.clock()+3 else rejectedIds[item.slot]=os.clock()+30 end
            adaptivePickDelay=math.min(0.6,math.max(0.08,adaptivePickDelay*1.3))
        end
        snapshotAt=0
        local cooldown=config.speedMode=="Turbo" and adaptivePickDelay or Core.tickInterval(config)
        local data=state()
        if data and config.speedMode~="Turbo" then
            local good,value=safeCall(pileController,"GetPickCooldown",equippedTool or "Hand")
            if good and type(value)=="number" and value>0 and value<3 then cooldown=math.max(cooldown,value) end
        end
        nextPickAt=os.clock()+cooldown candidate=nil
        return confirmed,reason
    end
    local function deliver(valid)
        local before=inventory()
        if not before or before<=0 then deliveryPending=nil snapshotAt=0 return true end
        if not deliveryPending then
            interactionTool()
            local machines=get(world,{"Map","PeelingMachines"})
            local prompt
            local target=Core.progress(config) and (last.focusClear and productionReady and "Auto" or "Crate") or config.deliveryTarget
            if target=="Table" then prompt=selectedTable(true)
            elseif target=="Manual" then prompt=machines and get(machines,{"PeelingMachine","Cube.033","Load"})
            elseif target=="Auto" then prompt=machines and get(machines,{"AutoPeelingMachine","Cube.042","Load"})
            else
                local data=state()
                local automatic=machines and get(machines,{"AutoPeelingMachine","Cube.042","Load"})
                if config.buyMachines and (last.mountainEmpty or last.focusClear) and productionReady and data and data.HasAutoPeeler and automatic and automatic.Enabled then prompt=automatic
                else prompt=machines and get(machines,{"PotatoCrate","PotatoArea","PlacePrompt"}) end
            end
            if not prompt then return false,"Destino selecionado indisponivel." end
            if target=="Auto" and not prompt.Enabled then
                autoFeedRetryAt=os.clock()+3 snapshotAt=0
                if select(2,inventory())==math.huge then return true,"Automatico ocupado; continuando coleta." end
                prompt=machines and get(machines,{"PotatoCrate","PotatoArea","PlacePrompt"})
            end
            local ok,message=nav.trigger(prompt,valid)
            if not ok then return false,message end
            deliveryPending={prompt=prompt,last=before,remaining=before,progressAt=os.clock(),began=os.clock(),total=0}
        end
        local pending=deliveryPending
        local deadline=os.clock()+math.max(4,math.min(8,config.actionTimeout))
        repeat
            if not valid() then return false,"cancelado" end
            local count=inventory()
            if count and count<pending.last then
                local amount=pending.last-count
                counts.delivered+=amount pending.total+=amount pending.progressAt=os.clock()
                snapshotAt=0
            end
            if count then pending.last=count pending.remaining=count end
            if count==0 then
                log("Entrega concluida: "..tostring(pending.total).." batatas.")
                deliveryPending=nil snapshotAt=0 candidate=nil
                return true
            end
            if os.clock()-pending.progressAt>2 then
                local prompt=pending.prompt
                if prompt and prompt.Parent and prompt.Enabled then
                    local ok,message=nav.trigger(prompt,valid)
                    if not ok then return false,message end
                    pending.progressAt=os.clock()
                elseif pending.total>0 and os.clock()-pending.progressAt>1 then
                    deliveryPending=nil autoFeedRetryAt=os.clock()+3 snapshotAt=0
                    return true,"Carga parcial confirmada; retomando coleta."
                elseif os.clock()-pending.progressAt>math.max(8,config.actionTimeout) then
                    deliveryPending=nil snapshotAt=0
                    return false,"Entrega parou sem progresso; destino sera reavaliado."
                end
            end
            services.RunService.Heartbeat:Wait()
        until os.clock()>=deadline
        return true,"Entrega em andamento."
    end
    local function cut(valid)
        if not isCutting() then return true end
        local _,potato=safeCall(cutting,"GetPotato")
        local data=state()
        local tool=data and cutShared.Tools and cutShared.Tools[bestCutRank(data)] or nil
        cutDriving=true
        local ok,message=cutEngine.tick(true,potato,cash(),tool)
        if not ok then cancelCut() table.clear(tableRetry) retryAt.enterCut=os.clock()+1 snapshotAt=0 end
        if not valid() then return false,"cancelado" end
        return ok,message
    end
    local function enterCut(valid)
        interactionTool()
        local prompt=selectedTable(true)
        if not prompt then return false,"Nenhuma mesa liberada com batatas." end
        cutGuiSnapshot={}
        for _,screen in ipairs(playerGui:GetChildren()) do
            if screen:IsA("ScreenGui") and screen.Name~="AnonymousPotatoHub" then
                cutGuiSnapshot[screen]=screen.Enabled
                for _,frame in ipairs(screen:GetChildren()) do if frame:IsA("GuiObject") then cutGuiSnapshot[frame]=frame.Visible end end
            end
        end
        nav.aim(prompt,config.aimTable)
        local ok,message=nav.trigger(prompt,valid)
        if not ok then nav.clearAim() tableRetry[prompt]=os.clock()+3 snapshotAt=0 return false,message end
        local fast=config.opAutoFinish and config.opFastPrompts and prompt.HoldDuration==0
        local confirmed,why=waitUntil(isCutting,math.min(fast and 1.25 or 3,config.actionTimeout),valid)
        if not confirmed and valid() and prompt.Enabled then
            local tried=nav.trigger(prompt,valid,{method="hold"})
            if tried then confirmed,why=waitUntil(isCutting,math.min(2,config.actionTimeout),valid) end
        elseif not confirmed and fast and valid() then
            confirmed,why=waitUntil(isCutting,0.75,valid)
        end
        nav.clearAim()
        if confirmed then lastTable=prompt cutDriving=true else tableRetry[prompt]=os.clock()+3 snapshotAt=0 end
        return confirmed,why
    end
    local function cool(valid)
        coolingRetryAt=os.clock()+2
        local root=nav.actor()
        local previous=root and root.Position
        interactionTool()
        local prompt=get(world,{"Map","Water","WaterTerminal","3","Button","WaterPrompt"})
        if not prompt then return false,"WaterPrompt nao encontrado." end
        local initialHeat=resolver.heat()
        local originalHold=prompt.HoldDuration
        nav.aim(prompt,config.aimCooling)
        local confirmed,reason=false,nil
        local attempts={{method="hold",holdSeconds=config.coolHoldSeconds},{method="native"}}
        if config.coolHoldFallback and config.coolHoldSeconds<originalHold then table.insert(attempts,{method="hold",holdSeconds=originalHold}) end
        for attempt,options in ipairs(attempts) do
            local ok,message=nav.trigger(prompt,valid,options)
            if not ok then reason=message
            else
                confirmed,reason=waitUntil(function()
                    local heat,flowing=resolver.heat()
                    return flowing or heat and (heat<=config.heatStop or initialHeat and heat<initialHeat-1)
                end,attempt==1 and 1 or 2,valid)
            end
            if confirmed or not valid() then break end
        end
        nav.clearAim()
        snapshotAt=0
        if confirmed then
            counts.cooled+=1 log("Valvula confirmada: agua fluindo ou calor diminuindo.")
            coolingRetryAt=os.clock()+config.coolingRetry
            if config.returnAfterCooling and previous and valid() then nav.goTo(previous,valid,true) end
        end
        return confirmed,reason
    end
    local function crank(valid)
        cancelCut()
        local prompt=get(world,{"Map","PeelingMachines","PeelingMachine","CrankPromptPart","Crank"})
        if not prompt or not prompt.Enabled then return false,"Cortador manual indisponivel." end
        local before=prompt.ObjectText
        local ok,message=nav.trigger(prompt,valid)
        if not ok then return false,message end
        return waitUntil(function() return not prompt.Parent or not prompt.Enabled or prompt.ObjectText~=before end,config.actionTimeout,valid)
    end
    local function buy(valid,selected)
        local item=selected or nextPurchase()
        if not item then return true end
        local beforeState=state()
        local beforeCash=cash()
        local beforeRank=beforeState and bestCutRank(beforeState)
        local beforeCarry=beforeState and beforeState.CarryLevel
        local shared=modules["Shared.ToolUpgradeShared"] or {}
        local beforeLevel=item.group=="upgrade" and Chapter.level(shared,beforeState,item.tool,item.upgrade) or nil
        local previous=nav.actor()
        previous=previous and previous.Position
        local wasCutting=isCutting()
        local function confirmed()
            local data=state()
            if not data then return false end
            if item.group=="machine" then return data[item.unlock]==true end
            if item.group=="upgrade" then
                local current=Chapter.level(shared,data,item.tool,item.upgrade)
                return current~=nil and beforeLevel~=nil and current>beforeLevel
            end
            if item.group=="cut" and beforeRank and bestCutRank(data)>beforeRank then return true end
            if item.group=="storage" and beforeCarry and data.CarryLevel>beforeCarry then return true end
            if item.group=="collect" and Chapter.owns(data,item.id=="P0T4T0-3000" and "PotatoSucker" or item.id) then return true end
            local current=cash()
            return current and beforeCash and current<beforeCash-0.001
        end
        local function finish(success,message,deferred)
            if item.group=="upgrade" then
                if restoreHeadless then restoreHeadless() restoreHeadless=nil end
            else safeCall(storeView,"Close") end
            if success and not deferred then
                counts.purchases+=1
                if #purchases<100 then table.insert(purchases,{name=item.name,group=item.group}) end
                if afterSale and item.group=="cut" then postSaleWeaponBought=true end
                log("Compra confirmada: "..item.name..".")
            end
            if item.group=="upgrade" and not deferred then upgradeGuard.result(item.name,beforeLevel,success) end
            if item.group=="upgrade" and not success then
                deniedOffers[item.name]={cash=math.max((beforeCash or 0)*1.5,(beforeCash or 0)+math.max(0.1,(item.price or 0)*0.5)),level=beforeLevel}
            elseif success and not deferred then deniedOffers[item.name]=nil end
            clearMenuBlur()
            offerRetry[item.name]=success and not deferred and 0 or os.clock()+20
            buyRetryAt=os.clock()+(success and 0.15 or 1)
            cachedPurchase=nil purchaseCacheAt=0 snapshotAt=0
            if wasCutting and previous and valid() and item.group~="upgrade" and not afterSale then nav.goTo(previous,valid,true) end
            return success,message
        end
        if item.group=="upgrade" then
            local definition=Chapter.definition(shared,item.tool,item.upgrade)
            local definitionOk=definition~=nil
            local maximum=definitionOk and Chapter.maximum(shared,definition)
            if maximum==nil or beforeLevel==nil or beforeLevel>=maximum or not upgradeGuard.allowed(item.name,beforeLevel) then return finish(true,"Melhoria concluida ou bloqueada para reavaliacao.",true) end
            -- Prices/buttons are read without opening or selecting the game's tabs.
            -- Native upgrade callbacks had side effects on unrelated game ScreenGuis.
            if beforeLevel==nil then return finish(true,"Nivel de melhoria indisponivel.",true) end
            local ok,button=safeCall(upgradeController,"GetUpgradeButton",item.tool,item.upgrade)
            if ok and typeof(button)=="Instance" and button:IsA("GuiButton") then item.button=button end
            item.price=upgradePrice(state(),item.tool,item.upgrade,beforeLevel,item.button) or item.price
            if not valid() then return finish(false,"cancelado") end
            if not item.price or not Core.affordable(config,cash(),item.price,"Cash") then return finish(true,"Aguardando saldo para "..item.name,true) end
            local fired,why
            if protocol.matches("ToolUpgradePurchase",{"String","String"}) then
                fired,why=protocol.fire("ToolUpgradePurchase",item.tool,item.upgrade)
            elseif item.button then fired,why=bridge.activate(item.button,true)
            else return finish(true,"Botao de melhoria ainda indisponivel.",true) end
            if not fired then return finish(false,why) end
            local success,message=waitUntil(confirmed,math.min(3,config.actionTimeout),valid)
            return finish(success,message)
        end
        if not Core.affordable(config,beforeCash,item.price,"Cash") then return finish(true,"Aguardando saldo.",true) end
        interactionTool()
        local approached,why=nav.trigger(item.prompt,valid)
        if not approached then return finish(false,why) end
        local button,message
        local ready,reason=waitUntil(function()
            if confirmed() then return true end
            button,message=bridge.buyButton(item.price)
            return button~=nil
        end,2,valid)
        if confirmed() then return finish(true) end
        if protocol.matches("StorePurchase",{"Instance","String"}) then
            local model=item.prompt:FindFirstAncestorOfClass("Model")
            if model then
                local sent=protocol.fire("StorePurchase",model,"Buy")
                if sent then
                    local accepted=waitUntil(confirmed,1.5,valid)
                    if accepted then return finish(true) end
                end
            end
        end
        if not ready then return finish(false,message or reason) end
        if not Core.affordable(config,cash(),item.price,"Cash") then return finish(true,"Saldo alterado.",true) end
        local activated,why2=bridge.activate(button)
        if not activated then return finish(false,why2) end
        local success,reason2=waitUntil(confirmed,math.min(3,config.actionTimeout),valid)
        return finish(success,reason2)
    end
    local function manualUpgrade(tool,id,valid)
        if not table.find(Chapter.allowed[tool] or {},id) then return false,"Melhoria desconhecida." end
        local data=state()
        if not Chapter.owns(data,tool) then return false,"Ferramenta ainda nao adquirida." end
        local shared=modules["Shared.ToolUpgradeShared"] or {}
        local level=Chapter.level(shared,data,tool,id)
        local maximum=Chapter.maximum(shared,Chapter.definition(shared,tool,id))
        if level==nil or maximum==nil then return false,"O jogo ainda nao informou o nivel da melhoria." end
        if level>=maximum then return false,"Melhoria ja esta no maximo." end
        local ok,button=safeCall(upgradeController,"GetUpgradeButton",tool,id)
        if not ok or typeof(button)~="Instance" or not button:IsA("GuiButton") then button=nil end
        local price=upgradePrice(data,tool,id,level,button)
        if not price then return false,"O jogo ainda nao informou o preco." end
        if not Core.affordable(config,cash(),price,"Cash") then return false,"Saldo ou limite de compra insuficiente." end
        return buy(valid,{group="upgrade",name=tool.."/"..id,tool=tool,upgrade=id,
            button=button,price=price,level=level})
    end
    local function sell(valid)
        local before=stockCount()
        if not before or before<=0 then return true end
        local root=nav.actor()
        resumePosition=config.returnAfterSell and root and root.Position or nil
        interactionTool()
        local prompt=get(world,{"Map","PeelingMachines","SellCrate","PotatoArea","SellPrompt"})
        sellRetryAt=os.clock()+3
        local ok,message=nav.trigger(prompt,valid)
        if not ok then return false,message end
        local function stockDecreased()
            local amount=stockCount()
            return amount~=nil and amount<before
        end
        local fast=config.opAutoFinish and config.opFastPrompts and prompt.HoldDuration==0
        local confirmed,why=waitUntil(stockDecreased,math.min(fast and 1.25 or 4,config.actionTimeout),valid)
        if not confirmed and fast and valid() then
            if prompt.Parent and prompt.Enabled and not stockDecreased() then
                nav.trigger(prompt,valid,{method="hold"})
            end
            confirmed,why=waitUntil(stockDecreased,math.min(1.75,config.actionTimeout),valid)
        end
        if confirmed then
            counts.sales+=1 counts.sold+=math.max(0,before-(stockCount() or before))
            afterSale=true postSaleWeaponBought=false
            cachedPurchase=nil purchaseCacheAt=0 snapshotAt=0
            log("Venda confirmada: "..tostring(before-(stockCount() or before)).." batatas.")
        end
        return confirmed,why
    end
    local function returnTable(valid)
        local position=resumePosition
        afterSale=false resumePosition=nil postSaleWeaponBought=false snapshotAt=0
        if not position or last.focusClear or last.needBuffer then return true end
        local ok,message=nav.goTo(position,valid,true)
        if not ok then return false,message end
        if Core.effective(config,"autoCut") and selectedTable(true) then return enterCut(valid) end
        return true
    end
    dynamite=function(valid)
        local data=state()
        if not Chapter.owns(data,"Dynamite") or not itemAlive(candidate) then return true end
        if not protocol.matches("DynamiteThrow",{"NumberU32"}) then return true end
        local remaining,interval,source=Chapter.pickTiming(modules["Shared.ToolUpgradeShared"] or {},toolController,pileController,data,"Dynamite")
        bombTiming={remaining=remaining,interval=interval,source=source}
        if remaining>0 then dynamiteAt=os.clock()+remaining return true end
        local root=nav.actor()
        if not root then return false,"personagem indisponivel" end
        local target=itemPosition(candidate)
        if (root.Position-target).Magnitude>18 then
            local moved,why=approachPart(candidate,valid)
            if not moved then return false,why end
        end
        local equipped=protocol.matches("ToolEquip",{"String"})
        if equipped then equip("Dynamite") end
        safeCall(pileController,"SetUseHeld",false)
        local before=dynamiteSerial
        local ok,message=protocol.fire("DynamiteThrow",candidate.slot)
        local localInterval=config.opAutoFinish and 0.1 or math.max(config.dynamiteInterval,config.dynamiteAggressive and 0.1 or 1)
        dynamiteAt=os.clock()+math.max(localInterval,interval or 0)
        if ok then bombPending={serial=before,deadline=os.clock()+0.8} end
        if equipped then
            local tool=Chapter.owns(data,"PotatoSucker") and "PotatoSucker" or Chapter.owns(data,"Shovel") and "Shovel" or "Hand"
            equip(tool)
        end
        collectTool()
        if equipped and Chapter.owns(data,"PotatoSucker") and protocol.matches("ToolUsing",{"Boolean"}) then protocol.fire("ToolUsing",true) end
        return ok,message

    end

    if cutting.PotatoCut and type(cutting.PotatoCut.Connect)=="function" then
        local ok,connection=pcall(cutting.PotatoCut.Connect,cutting.PotatoCut,function() counts.cuts+=1 end)
        if ok then table.insert(connections,connection) end
    end
    for _,item in ipairs({{"PeelingStarted","start"},{"PeelingNextPotato","next"},{"PeelingStopped","stop"}}) do
        local packet=packets[item[1]]
        local event=packet and packet.OnClientEvent
        if type(event)=="table" and type(event.Connect)=="function" then
                local eventKind=item[2]
                local ok,connection=pcall(event.Connect,event,function() cutEngine.event(eventKind) end)
            if ok then table.insert(connections,connection) end
        end
    end
    local pumpkinEvent=packets.PotatoPumpkinCollected and packets.PotatoPumpkinCollected.OnClientEvent
    if type(pumpkinEvent)=="table" and type(pumpkinEvent.Connect)=="function" then
        local ok,connection=pcall(pumpkinEvent.Connect,pumpkinEvent,function(first)
            if typeof(first)=="Instance" and first:IsA("Player") and first~=player then return end
            pumpkinSerial+=1
            counts.pumpkins+=1
        end)
        if ok then table.insert(connections,connection) end
    end
    local function watchReward(name,fn)
        local packet=packets[name]
        local event=packet and packet.OnClientEvent
        if type(event)=="table" and type(event.Connect)=="function" then
            local ok,connection=pcall(event.Connect,event,function(first)
                if typeof(first)=="Instance" and first:IsA("Player") and first~=player then return end
                fn()
            end)
            if ok then table.insert(connections,connection) end
        end
    end
    watchReward("PotatoDiamondCollected",function() gemSerial+=1 counts.gems+=1 end)
    watchReward("DynamiteThrown",function()
        dynamiteSerial+=1
        if bombPending then counts.throws+=1 bombPending=nil bombBackoff=math.max(0.1,bombBackoff*0.8) end
    end)
    local function stageCut(valid)
        local prompt=get(world,{"Map","PeelingMachines","PotatoCrate","PotatoArea","PlacePrompt"})
        local before=inventory()
        if not before or before<=0 then return true end
        local ok,message=nav.trigger(prompt,valid)
        if not ok then return false,message end
        return waitUntil(function() local n=inventory() return n and n<before end,config.actionTimeout,valid)
    end
    local function reset()
        burst.cancel()
        snapshotAt=0
        candidate=nil findAt=0 queue={} queueIndex=1 queueExpires=0 searchEmpty=false
        cachedPurchase=nil purchaseCacheAt=0
        variantCache=setmetatable({},{__mode="k"})
        specialCache={} specialAt=0 equippedTool=nil
    end
    local function recover(action,attempt)
        retryAt[action]=os.clock()+(action=="collect" and math.min(0.6,0.1*(attempt or 1)) or math.min(12,0.5*2^math.min(attempt or 1,4)))
        snapshotAt=0
        if action=="collect" or action=="dynamite" then candidate=nil findAt=0 end
        if action=="enterCut" or action=="cut" or action=="returnTable" then cancelCut() end
        if action=="deliver" or action=="stageCut" then
            if not deliveryPending or deliveryPending.total==0 then fastDeliverySuppressed=true placement.apply(false,config.placementDelay) end
            local count=inventory()
            if not count or count<=0 then deliveryPending=nil end
        end
        if action=="buy" then cachedPurchase=nil purchaseCacheAt=0 end
    end
    local function drone(valid)
        if not droneConsent or not config.autoBuyDrone then return true end
        local data=state()
        if data and data.HasDrone then return true end
        interactionTool()
        local prompt=get(world,{"Map","StoreItems","Robux","Drone","Price","PromptAttachment","ProximityPrompt"})
        if not prompt then return false,"Loja do drone indisponivel." end
        local reached,why=nav.trigger(prompt,valid)
        if not reached then return false,why end
        local selected=nil
        waitUntil(function()
            local screen=playerGui:FindFirstChild("StoreView")
            if not screen then return false end
            for _,button in ipairs(screen:GetDescendants()) do
                if button:IsA("GuiButton") and bridge.visible(button) and button.Active then
                    local text=string.upper(bridge.texts(button.Parent or button))
                    local gems=text:find("GEM",1,true) or text:find("DIAMOND",1,true) or text:find("💎",1,true)
                    local action=string.upper(bridge.texts(button).." "..button.Name)
                    local buyAction=action:find("BUY",1,true) or action:find("PURCHASE",1,true) or action:find("COMPRAR",1,true)
                    if buyAction and gems and not text:find("ROBUX",1,true) and not text:find("R$",1,true) and Core.parseAmount(text)==80 then selected=button return true end
                end
            end
            return false
        end,2,valid)
        local success=false
        if selected and valid() then
            local sent=bridge.activate(selected)
            if sent then success=waitUntil(function() local current=state() return current and current.HasDrone==true end,3,valid) end
        end
        safeCall(storeView,"Close")
        retryAt.drone=os.clock()+30
        if success then droneConsent=false counts.purchases+=1 log("Drone adquirido; melhorias de drone liberadas.") return true end
        return false,"Compra do drone nao confirmada: exige oferta visivel de 80 gemas e saldo suficiente."
    end
    local function restoreGame()
        interactionTool() nav.stop() safeCall(storeView,"Close")
        safeCall(upgradeController,"SetOpen",false)
        for _,name in ipairs({"Cash","Bag","Hotbar","ToolHotbar"}) do
            local screen=playerGui:FindFirstChild(name)
            if screen and screen:IsA("ScreenGui") then screen.Enabled=true end
        end
        clearMenuBlur()
        table.clear(retryAt) table.clear(tableRetry) reset()
    end
    local function upgradeLevels(shared,data,tool)
        local levels={}
        for _,id in ipairs(Chapter.allowed[tool]) do
            levels[id]={level=Chapter.level(shared,data,tool,id),
                maximum=Chapter.maximum(shared,Chapter.definition(shared,tool,id))}
        end
        return levels
    end
    return {
        recordAction=function(name,seconds,success)
            local entry=actionTimings[name] or {calls=0,seconds=0,failures=0,max=0}
            entry.calls+=1 entry.seconds+=seconds entry.max=math.max(entry.max,seconds)
            if not success then entry.failures+=1 end
            actionTimings[name]=entry
        end,
        dashboard=function()
            if os.clock()<dashboardAt then return dashboardCache end
            dashboardAt=os.clock()+1
            local known,open=safeCall(upgradeController,"IsOpen")
            if known and open and not upgradeMenuAt then
                upgradeMenuAt=os.clock() upgradeMenuStats.opens+=1
            elseif known and not open and upgradeMenuAt then
                upgradeMenuStats.closed_seconds+=os.clock()-upgradeMenuAt upgradeMenuAt=nil
            end
            local data=state()
            local shared=modules["Shared.ToolUpgradeShared"] or {}
            local cards,details={},{}
            local specs={{"Dynamite","DINAMITE"},{"Shovel","PA"},{"AutoPeeler","AUTOMATICO"},{"PotatoSucker","P0T4T0-3000"},
                {"Body","GERAL"},{"Hand","MAO"},{"Drone","DRONE"}}
            for _,spec in ipairs(specs) do
                local tool=spec[1]
                local owned=Chapter.owns(data,tool)
                local current,total=0,0
                local icon=nil
                for _,definition in ipairs(shared.Tools or {}) do if definition.Id==tool then icon=definition.Icon end end
                if owned then
                    local levels=upgradeLevels(shared,data,tool)
                    for _,id in ipairs(Chapter.allowed[tool]) do
                        local entry=levels[id]
                        current+=entry.level or 0 total+=entry.maximum or 0
                        local audit=upgradeAudit[tool.."/"..id]
                        table.insert(details,{tool=spec[2],toolId=tool,id=id,level=entry.level,maximum=entry.maximum,
                            icon=icon,price=audit and audit.price})
                    end
                end
                table.insert(cards,{id=tool,title=spec[2],owned=owned,current=current,total=total,icon=icon})
            end
            dashboardCache={tools=cards,details=details,production=config.opAutoFinish and opBulkReady or productionReady,phase=last.phase,cash=cash(),gemLuck=Chapter.level(shared,data,"Body","Luck") or 0,op=config.opAutoFinish,progress=config.autoProgress}
            return dashboardCache
        end,
        droneAsked=function() droneAsked=true end,droneConfirm=function(value) droneConsent=value==true snapshotAt=0 end,
        snapshot=snapshot,findCandidate=findCandidate,release=release,cancelCut=cancelCut,reset=reset,recover=recover,restoreGame=restoreGame,counts=counts,purchases=purchases,
        manualUpgrade=manualUpgrade,
        questMode=function(action)
            if action==questMode then return end
            questMode=action
            candidate=nil queue={} queueIndex=1 findAt=0 snapshotAt=0
        end,
        actions={keyProbe=keyProbe,drone=drone,collect=collect,deliver=deliver,cut=cut,enterCut=enterCut,cool=cool,buy=buy,crank=crank,stageCut=stageCut,sell=sell,returnTable=returnTable,dynamite=dynamite},
        stop=function()
            cancelCut() nav.stop()
            if restoreHeadless then restoreHeadless() restoreHeadless=nil end
            if openedUpgrade then safeCall(upgradeController,"SetOpen",false) openedUpgrade=false end
        end,
        defer=function(action,seconds)
            if action=="buy" then buyRetryAt=os.clock()+seconds end
            if action=="cool" then coolingRetryAt=os.clock()+seconds end
            if action=="escape" then retryAt.escape=os.clock()+seconds end
        end,
        close=function()
            closed=true
            placement.close()
            cancelCut() nav.close() resolver.close()
            if restoreHeadless then restoreHeadless() restoreHeadless=nil end
            for _,connection in ipairs(connections) do connection:Disconnect() end
        end,
        diagnostic=function()
            local snap=snapshot()
            local levels={}
            local data=state()
            local shared=modules["Shared.ToolUpgradeShared"] or {}
            for tool in pairs(Chapter.allowed) do
                if Chapter.owns(data,tool) then
                    for id,entry in pairs(upgradeLevels(shared,data,tool)) do levels[tool.."/"..id]=entry end
                end
            end
            return {place_id=game.PlaceId,place_version=game.PlaceVersion,bindings=resolver.stats,pile_progress=snap.pileProgress,op_funding=snap.opFunding,op_bulk=bulkStats,dynamite_timing=bombTiming,key_shortcut={results=keyProbeStats,guard=keyProbeGuard.records},
                upgrade_audit=upgradeAudit,upgrade_levels=levels,native_upgrade_menu={opens=upgradeMenuStats.opens,
                    seconds_open=upgradeMenuStats.closed_seconds+(upgradeMenuAt and os.clock()-upgradeMenuAt or 0)},
                state={cash=snap.cash,stock=snap.stock,goal=snap.goal and snap.goal.name,carried=snap.carried,capacity=snap.capacity==math.huge and "infinite" or snap.capacity,
                    heat=snap.heat,heat_source=snap.heatSource,cutting=snap.cutting,production_ready=productionReady,sucker_overheated=vacuumHot,sucker_retry_at=vacuumRetryAt,inventory_source=exactBagBound and "replicated Potatoes" or "UI",phase=snap.phase,upgrade_guard=upgradeGuard.records,water_flowing=snap.flowing,cut_units_per_second=snap.cutRate,delivery_pending=deliveryPending~=nil,equipped_request=equippedTool},counts=counts,op_burst=burst.stats,cut_engine=cutEngine.stats,placement_timing=placement.stats,action_timings=actionTimings,prompts=nav.stats,retry_at=retryAt,schemas={using=protocol.schema("ToolUsing"),upgrade=protocol.schema("ToolUpgradePurchase"),throw=protocol.schema("DynamiteThrow"),equip=protocol.schema("ToolEquip")},buttons=bridge.diagnostic()}
        end,
    }
end

return Adapter

end)()

local BOOT_VERSION="0.36.0"


local function bootAnonymousPotato()
-- Luau · potato_main.luau · Anonymous Potato entry point · Roblox / Delta · Luau 0.745
-- Core, Session, Gate, UI, Navigation, Resolver, Bridge and Adapter are bundled above this entry point.
local VERSION=BOOT_VERSION
local EXPECTED_PLACE=116701845804918
local EXPECTED_GAME=10767408330
local loaderRoot="https://raw.githubusercontent.com/AnonymosScripts/"
local loaderPath="/main/loader.lua?v="..VERSION
local fetchLoader=string.format([[
    local run
    for _,url in ipairs({%q,%q}) do
        local ok,source=pcall(game.HttpGet,game,url)
        if ok and type(source)=="string" and string.find(source,%q,1,true) then
            run=loadstring(source)
            if run then break end
        end
    end
]],loaderRoot.."AnonHub"..loaderPath,loaderRoot.."Script-1-Evolvy-Hub"..loaderPath,
    'local version="'..VERSION..'"')

local services={}
for _,name in ipairs({"Players","Workspace","ReplicatedStorage","HttpService","RunService",
    "Lighting","ProximityPromptService","UserInputService","TweenService","PathfindingService","StarterGui","TeleportService"}) do services[name]=game:GetService(name) end
local idleServiceOk,idleService=pcall(game.GetService,game,"VirtualUser")
if idleServiceOk then services.VirtualUser=idleService end
local coreOk,coreGui=pcall(game.GetService,game,"CoreGui")
if coreOk then services.CoreGui=coreGui end
local player=services.Players.LocalPlayer
assert(player,"Execute o hub no cliente Roblox dentro da experiencia.")
if game.PlaceId~=EXPECTED_PLACE or game.GameId~=EXPECTED_GAME then
    pcall(services.StarterGui.SetCore,services.StarterGui,"SendNotification",{
        Title="AnonHub",Text="Este arquivo e para Descasque a Batata, PlaceId "..EXPECTED_PLACE,Duration=8})
    return
end
local environment=type(getgenv)=="function" and getgenv() or _G
local previous=environment.AnonymousPotatoSession
if type(previous)=="table" and type(previous.close)=="function" then pcall(previous.close) end
local lifecycle=Session.lifecycle()
local cancellation=Core.newCancellation()
local registry={close=lifecycle.close,version=VERSION}
environment.AnonymousPotatoSession=registry
hub.attach(lifecycle.close)
lifecycle.add(function() if environment.AnonymousPotatoSession==registry then environment.AnonymousPotatoSession=nil end end)
local json={encode=function(value) return services.HttpService:JSONEncode(value) end,
    decode=function(value) return services.HttpService:JSONDecode(value) end}
local files={read=type(readfile)=="function" and readfile or nil,write=type(writefile)=="function" and writefile or nil}
local queueTransfer=type(queue_on_teleport)=="function" and queue_on_teleport
    or type(queueonteleport)=="function" and queueonteleport
    or type(syn)=="table" and type(syn.queue_on_teleport)=="function" and syn.queue_on_teleport or nil
local transferBootstrap=string.format([[
    local deadline=os.clock()+35
    while (not game:IsLoaded() or game.GameId==0 or game.JobId==""
        or not game:GetService("Players").LocalPlayer) and os.clock()<deadline do task.wait(0.2) end
    local player=game:GetService("Players").LocalPlayer
    if game.PlaceId~=%d or game.GameId~=%d or not player or type(readfile)~="function" then return end
    local ok,data=pcall(function()
        return game:GetService("HttpService"):JSONDecode(readfile("Evolvy_Chapter2_Transfer_v1.json"))
    end)
    if not ok or type(data)~="table" or data.account~=player.UserId or data.game~=game.GameId
        or data.from==game.JobId or type(data.untilTime)~="number" or os.time()>data.untilTime then return end
    %s
    if run then run() end
]],EXPECTED_PLACE,EXPECTED_GAME,fetchLoader)
local handoff=Handoff.create({read=files.read,write=files.write,queue=queueTransfer,encode=json.encode,decode=json.decode,clock=os.time},
    {account=player.UserId,game=game.GameId,job=game.JobId},transferBootstrap)
local store=Session.create(Core,json,files)
local config=store.load()
local ui,adapter,activeAction=nil,nil,nil
local escapeDriver=nil
local endingSkipper=nil
local antiIdle=nil
local completionHandled,expiryHandled=false,false
local finishSeconds=nil
local modules={}
local lastRecovery=nil
local sessionStartedAt=os.clock()
local failures={}
local function log() end
local function notify(message)
    if config.notifications then
        pcall(services.StarterGui.SetCore,services.StarterGui,"SendNotification",{
            Title="AnonHub",Text=T(tostring(message)),Duration=5})
    end
end

local deadline=os.clock()+24
hub.progress(0.5,"Identificando lobby ou partida…","Identifying lobby or match…")
local expectedPhase=handoff.destination()
local phase=Lobby.stage(services.Workspace)
while (not phase or expectedPhase and phase~=expectedPhase) and lifecycle.alive() and os.clock()<deadline do
    task.wait(0.2)
    phase=Lobby.stage(services.Workspace)
end
if not phase or not lifecycle.alive() then
    notify("O hub nao encontrou o lobby nem a area de partida. Aguarde o mapa e execute novamente.")
    lifecycle.close()
    return
end
local function pause(message)
    Core.pause(config) cancellation.cancel()
    if adapter then adapter.stop() end
    if ui then ui.refresh() ui.status(message or "Rotinas pausadas.") end
    if message then log(message) end
end
lifecycle.add(function()
    cancellation.cancel()
    if adapter then adapter.close() end
end)
local function restoreInterface()
    cancellation.cancel()
    if adapter then adapter.restoreGame() end
    lastRecovery=Recovery.restore(services,modules)
    table.clear(failures)
    if ui then ui.show() ui.refresh() ui.recoveryInfo(lastRecovery) end
    log("Recuperacao de interface: "..lastRecovery.restored.." componentes; "..#lastRecovery.cloned.." telas recriadas; "..lastRecovery.errors.." falhas.")
    if #lastRecovery.missing>0 then
        local message="O jogo ainda nao disponibilizou: "..table.concat(lastRecovery.missing,", ")..". Nenhum modelo recuperavel foi encontrado."
        log(message,"error")
    end
end
if phase=="chapter" and config.autoRepairGui then restoreInterface() end
local resume=handoff.take(phase)
local memberAccess={plan=hub.access.plan or "Member",keyLabel=hub.access.keyLabel or "••••",expiresAt=hub.access.expiresAt}
local gate={
    membership=function() return Membership.describe(memberAccess,os.time()) end,
    expired=function() return Membership.expired(memberAccess,os.time()) end,
}
local quickStartOP=hub.startNow==true
local function reconnect(settings)
    if gate.expired() then return false,"A licenca expirou." end
    local nextOptions=Handoff.options(settings)
    if nextOptions.reconnectCount>=2 then return false,"Limite de reconexoes atingido. Abra o jogo novamente." end
    nextOptions.reconnectCount+=1
    local armed,why=handoff.arm("lobby",nextOptions)
    if not armed then handoff.clear() return false,why end
    local ok=pcall(services.TeleportService.Teleport,services.TeleportService,EXPECTED_PLACE,player)
    if not ok then handoff.clear() return false,"O Roblox recusou a reconexao." end
    return true
end
local function attachIdle(active)
    local idle=AntiIdle.create(services.VirtualUser and player.Idled,
        function() return lifecycle.alive() and config.antiAfk and active() end,function()
            services.VirtualUser:CaptureController()
            services.VirtualUser:ClickButton2(Vector2.new(0,0))
        end,log)
    lifecycle.add(idle.close)
    return idle
end
if phase=="lobby" then
    hub.progress(0.8,"Abrindo a central do lobby…","Opening the lobby panel…")

    local lobbyConfig=Core.validate({movement="Walk",travelTimeout=20},true)
    local nav=Navigation.create(services,lobbyConfig,log)
    lifecycle.add(nav.close)
    local bridge=Bridge.create(services,Core)
    Lobby.open(services,lifecycle,gate,bridge,nav,handoff,Handoff.options,resume,
        quickStartOP or resume~=nil,{
            idle=attachIdle,reconnect=reconnect,
            watch=function(active,onError) Reconnect.watch(services,lifecycle,active,onError) end,
            features=LobbyExtras.create(services,bridge,nav,lifecycle),
            settings=lobbySettings({read=files.read,write=files.write,encode=json.encode,decode=json.decode},player.UserId),
            view=LobbyView.create,rarest=LobbyExtras.rarest,language=hub.chooseLanguage,
        })
    hub.ready()
    return
end
quickStartOP=quickStartOP or resume~=nil
local pendingOP=quickStartOP
local autoStartedCharacter=nil
local pendingUpgrade=nil
local selectedQuest,questAction=nil,nil
local questRows,nextQuestPoll={},0
local function clearQuest()
    selectedQuest=nil questAction=nil
    if adapter then adapter.questMode(nil) end
end
local loopEnabled=resume and resume.repeatRun==true or false
if resume then
    config.skipEndingScene=resume.skipOutro
    config.releaseEndingCamera=resume.skipOutro
    if resume.autoCrates then config.collectPumpkins=true end
end
local loopAttempted,reportAt=false,nil
local returning=false
local loopStatus=nil
local function stopLoop()
    loopEnabled=false
    pendingOP=false
    pendingUpgrade=nil
    clearQuest()
    handoff.clear()
end

local moduleNames={
    "Shared.PlayerStateShared","Shared.PotatoPileShared","Shared.PotatoKindShared","Shared.PotatoHoldShared",
    "Shared.PotatoTableShared","Shared.CarryUpgradeShared","Shared.CutToolShared","Shared.ToolUpgradeShared","Shared.FireShared",
    "Modules.Resources.Prices","Modules.Resources.Packets","Controllers.SyncController","Controllers.PotatoPileController",
    "Controllers.PotatoTableController","Controllers.PeelingController","Controllers.CuttingController",
    "Controllers.FireController","Controllers.StoreViewController","Controllers.ToolUpgradeController","Controllers.ToolEquipController",
    "Controllers.Chapter2OutroController",
    "ModifiedPackages.Packet._Types",
}

for index,path in ipairs(moduleNames) do
    if not lifecycle.alive() then return end
    if index==1 or index%4==0 then
        hub.progress(0.5+0.35*(index-1)/#moduleNames,"Carregando funções do jogo…","Loading game features…")
    end
    local instance=services.ReplicatedStorage
    for name in string.gmatch(path,"[^%.]+") do instance=instance and instance:FindFirstChild(name) end
    if instance and instance:IsA("ModuleScript") then
        local completed,ok,value=false,false,nil
        task.spawn(function() ok,value=pcall(require,instance) completed=true end)
        local deadline=os.clock()+6
        while not completed and lifecycle.alive() and os.clock()<deadline do task.wait(0.05) end
        if completed and ok and type(value)=="table" then modules[path]=value end
    end
end
if not lifecycle.alive() then return end
local nav=Navigation.create(services,config,log)
local resolver=Resolver.create(modules,services,log,Observer,Spatial,nil,NativeMap)
lifecycle.add(resolver.close)
local nativeOk,nativeError=pcall(resolver.discover)
if not nativeOk then log("Leitura do mapa nativo indisponivel: "..tostring(nativeError),"error") end
resolver.requestSync()
local syncDeadline=os.clock()+1.2
while lifecycle.alive() and not resolver.ready() and os.clock()<syncDeadline do task.wait(0.05) end
if not lifecycle.alive() then resolver.close() return end
local bridge=Bridge.create(services,Core)

adapter=Adapter.create(services,modules,Core,config,nav,resolver,bridge,log,CutEngine,Chapter,Protocol,TopK,Burst)
escapeDriver=Exit.create(services,modules,nav,log)
endingSkipper=Exit.endingSkipper(player.PlayerGui,bridge,os.clock,function()
    local camera=services.Workspace.CurrentCamera
    local character=player.Character
    local humanoid=character and character:FindFirstChildOfClass("Humanoid")
    if not camera or camera.CameraType~=Enum.CameraType.Scriptable or not humanoid or humanoid.Health<=0 then return false end
    camera.CameraSubject=humanoid
    camera.CameraType=Enum.CameraType.Custom
    return true
end,function()
    local camera=services.Workspace.CurrentCamera
    return camera and camera.CameraType.Name
end)
local endingPackets=modules["Modules.Resources.Packets"] or {}
for _,name in ipairs({"CinematicBarsEnabled","CinematicBarsDisabled","RunReportShown","EscapeFailed"}) do
    local packet=endingPackets[name]
    local signal=packet and packet.OnClientEvent
    if signal and type(signal.Connect)=="function" then
        local eventName=name
        local ok,connection=pcall(signal.Connect,signal,function()
            if eventName=="RunReportShown" then reportAt=os.clock() end
            endingSkipper.event(eventName)
        end)
        if ok and connection then lifecycle.add(function() connection:Disconnect() end) end
    end
end
local outro=modules["Controllers.Chapter2OutroController"] or {}
local function tryOutro(finishedAt)
    local stats=endingSkipper.stats
    if not finishedAt or stats.outro_attempted or stats.sent or os.clock()-finishedAt>12
        or type(outro.IsPlaying)~="function" or type(outro.Cancel)~="function" then return end
    local ok,playing=pcall(outro.IsPlaying)
    if not ok or playing~=true then return end
    stats.outro_attempted=true
    local canceled=pcall(outro.Cancel,nil)
    local checked,stillPlaying=pcall(outro.IsPlaying)
    stats.outro_stopped=canceled and checked and stillPlaying==false
    endingSkipper.event(stats.outro_stopped and "outro_cancel_confirmed" or "outro_cancel_unconfirmed")
end
local function nativeReturn()
    local gui=player.PlayerGui
    local candidate=nil
    local known={returntolobby=true,backtolobby=true,lobby=true,voltaraolobby=true}
    for _,screen in ipairs(gui:GetChildren()) do
        local name=screen.Name:lower()
        if screen:IsA("ScreenGui") and screen.Enabled and (name=="escape" or name=="victory"
            or name=="runreport" or name=="runresults" or name=="outro") then
            for _,item in ipairs(screen:GetDescendants()) do
                if item:IsA("GuiButton") and item.Active and bridge.visible(item) then
                    local label=bridge.texts(item):lower():gsub("[^%w]","")
                    local buttonName=item.Name:lower():gsub("[^%w]","")
                    if known[label] or known[buttonName] then
                        if candidate then return false end
                        candidate=item
                    end
                end
            end
        end
    end
    return candidate and bridge.activate(candidate) or false
end
local teleportFailed=services.TeleportService.TeleportInitFailed:Connect(function(who,_,_,place)
    if who==player and place==EXPECTED_PLACE and loopAttempted then
        stopLoop()
        loopStatus="O Roblox recusou a volta ao lobby. Retorne manualmente."
        log(loopStatus,"error")
    end
end)
lifecycle.add(function() teleportFailed:Disconnect() end)
local outgoing=player.OnTeleport:Connect(function(state,place)
    if loopAttempted and place==EXPECTED_PLACE and (state.Name=="RequestedFromServer"
        or state.Name=="Started" or state.Name=="InProgress") then returning=true end
end)
lifecycle.add(function() outgoing:Disconnect() end)
local function repeatAfterReport()
    if not loopEnabled or loopAttempted then return end
    local finishedAt=escapeDriver.finishTime()
    local age=os.clock()-finishedAt
    local canCheckScene,scenePlaying=false,true
    if age>=24 and type(outro.IsPlaying)=="function" then canCheckScene,scenePlaying=pcall(outro.IsPlaying) end
    if (not reportAt or reportAt<finishedAt-8) and not (canCheckScene and scenePlaying==false) then
        loopStatus="VITORIA CONFIRMADA / AGUARDANDO RESULTADO PARA VOLTAR"
        if finishSeconds and os.clock()-sessionStartedAt-finishSeconds>60 then
            stopLoop()
            loopStatus="O relatorio final nao chegou. Volte ao lobby manualmente."
        end
        return
    end
    loopAttempted=true
    loopStatus="VITORIA CONFIRMADA / VOLTANDO AO LOBBY"
    local nextOptions=Handoff.options(resume)
    nextOptions.reconnectCount=0
    local armed,why=handoff.arm("lobby",nextOptions)
    if not armed then stopLoop() loopStatus=why log(why,"error") return end
    local native=nativeReturn()
    task.delay(native and 5 or 2,function()
        if not lifecycle.alive() or not loopEnabled or returning or gate.expired() then return end
        local ok=pcall(services.TeleportService.Teleport,services.TeleportService,EXPECTED_PLACE,player)
        if not ok then
            stopLoop()
            loopStatus="A volta automatica falhou. Retorne ao lobby pelo jogo."
            log(loopStatus,"error")
        end
    end)
    task.delay(25,function()
        if lifecycle.alive() and loopEnabled and not returning then
            stopLoop()
            loopStatus="O Roblox nao confirmou a volta ao lobby."
            log(loopStatus,"error")
        end
    end)
end
Reconnect.watch(services,lifecycle,function()
    return loopEnabled and not loopAttempted and not completionHandled and not gate.expired()
end,function(code)
    loopAttempted=true
    pause("Conexao perdida ("..code.."); tentando voltar ao lobby.")
    local ok,why=reconnect(resume)
    if not ok then stopLoop() loopStatus=why log(why,"error") return end
    task.delay(25,function()
        if lifecycle.alive() and loopEnabled and not returning then
            stopLoop()
            loopStatus="O Roblox nao confirmou a reconexao."
            log(loopStatus,"error")
        end
    end)
end)
lifecycle.add(escapeDriver.close)
adapter.actions.escape=function(valid)
    adapter.cancelCut()
    local success,message=escapeDriver.step(valid)
    adapter.defer("escape",success and 2 or 5)
    return success,message
end
local binding=nil
local keyActions={keyProgress="autoProgress",keyCut="autoCut",keyFarm="autoFarm",keyCool="autoCool",
    keyBuy="autoBuyTools",keyDeliver="autoDeliver",keyPumpkin="collectPumpkins",keyStorage="autoBuyStorage",keyUpgrades="autoBuyUpgrades",keyCrank="autoCrank",keySell="autoSell",keyDynamite="autoDynamite"}
local combined={"autoFarm","autoDeliver","autoCut","autoCool","autoBuyTools","autoBuyUpgrades","autoBuyStorage","autoCrank","autoSell","autoDynamite","autoEscape"}
local combinedSet={}
for _,name in ipairs(combined) do combinedSet[name]=true end
local function displayed(field)
    return Core.displayed(config,field)
end
local function refreshAutomation()
    cancellation.cancel()
    adapter.stop()
    adapter.reset()
    table.clear(failures)
    if ui then ui.refresh() end
end
local function startProfile()
    if completionHandled or gate.expired() then
        ui.status(completionHandled and "Partida concluida." or "Licenca expirada.")
        return
    end
    clearQuest()
    Core.applyPartyProfile(config)
    refreshAutomation()
    log("Perfil iniciado: "..config.partyProfile..(config.partyProfile=="Team" and " / "..config.partyRole or ""))
end
local function change(field,value)
    if config[field]==nil then return end
    if field=="partyProfile" or field=="partyRole" or field=="partySize" or field=="partySlot" then
        config[field]=Core.validate({[field]=value},false)[field]
        if ui then ui.refresh() end
        return
    end
    if field=="autoBuyDrone" and value==true then adapter.droneConfirm(false) end
    if value==true and (field=="opAutoFinish" or field=="autoProgress" or combinedSet[field] or field=="collectPumpkins") and gate.expired() then
        if ui then ui.status("Licenca expirada. Valide uma key ativa para continuar.") end return
    end
    if config[field]==value and not (config.autoProgress and combinedSet[field]) then return end
    if field=="autoCool" and config.autoProgress and value==false then
        if ui then ui.status("O resfriamento faz parte do Auto Progress. Pause o ciclo para desliga-lo.") ui.refresh() end
        return
    end
    if config.autoProgress and combinedSet[field] and type(value)=="boolean" then
        for _,name in ipairs(combined) do config[name]=Core.effective(config,name) end
        config.autoProgress=false
        config.opAutoFinish=false
    end
    if field=="autoBuyTools" and value==false then config.cutBuyTools=false end
    local nextConfig=Core.clone(config) nextConfig[field]=value
    if value==true and field=="autoProgress" then nextConfig.opAutoFinish=false end
    if value==true and field=="opAutoFinish" then nextConfig.autoProgress=false end
    if value==true and (field=="opAutoFinish" or field=="autoProgress") then
        nextConfig.teamFunding=false nextConfig.teamLead=false nextConfig.supportCut=false nextConfig.nativeWalkUpgrade=false
    end
    local checked=Core.validate(nextConfig,false)
    for key,item in pairs(checked) do config[key]=item end
    if field=="opAutoFinish" and value or field=="autoProgress" and not value then clearQuest() end
    local layoutField=string.sub(field,1,2)=="ui" or string.sub(field,1,6)=="button"
    if not layoutField then refreshAutomation()
    elseif ui then ui.refresh() end
end
hub.progress(0.9,"Montando os controles…","Building the controls…")
ui=UI.create(services,config,{
    decorateLauncher=hub.decorateLauncher,
    value=displayed,change=change,parseNumber=Core.parseAmount,membership=gate.membership,startProfile=startProfile,
    manualUpgrade=function(tool,id)
        if gate.expired() or completionHandled then return end
        if pendingUpgrade then notify("Uma melhoria ja esta na fila.") return end
        pendingUpgrade={tool,id}
        notify(T("Solicitada melhoria ")..tool.." / "..id..".")
    end,
    selectQuest=function(id)
        if gate.expired() or completionHandled then return end
        if selectedQuest==id then clearQuest() notify("Prioridade de missao removida.") return end
        for _,row in ipairs(questRows) do
            if row.id==id then
                if row.done then notify("O jogo ja confirmou essa missao.") return end
                if not row.action then notify("Objetivo sem rota automatica confirmada.") return end
                change("autoProgress",true)
                selectedQuest=id questAction=row.action adapter.questMode(row.action)
                notify(T("Prioridade: ")..row.title)
                return
            end
        end
    end,
    save=function() local ok,message=store.save(config) log(message,ok and "info" or "error") notify(message) end,
    pause=function() stopLoop() pause("Pausado pelo painel.") end,
    bind=function(field)
        if not services.UserInputService.KeyboardEnabled then ui.status("Use os controles por toque; atalhos sao opcionais para teclado.") return end
        if binding==field then binding=nil ui.status("Edicao de atalho cancelada.") return end
        binding=field ui.status("Pressione uma tecla para o atalho; Esc cancela e Backspace remove.")
    end,
    language=hub.chooseLanguage,close=function() stopLoop() hub.unload() end,
    restore=restoreInterface,
    layout=function(values)
        local nextConfig=Core.clone(config)
        for key,value in pairs(values) do nextConfig[key]=value end
        local checked=Core.validate(nextConfig,false)
        for key,value in pairs(checked) do config[key]=value end
        if ui then ui.refresh() end
    end,
},Layout,Membership)
lifecycle.add(function() if ui then ui.close() end end)
antiIdle=attachIdle(function() return Core.anyActive(config) end)
ui.refresh()
if lastRecovery then ui.recoveryInfo(lastRecovery) end
hub.ready()
if quickStartOP then
    ui.status("Aguardando o personagem para iniciar o OP.")
else
    ui.status("Pronto. Configure um modo e ative a rotina desejada.")
end

local inputConnection=services.UserInputService.InputBegan:Connect(function(input,processed)
    if not lifecycle.alive() then return end
    if binding then
        if input.UserInputType~=Enum.UserInputType.Keyboard then return end
        local field=binding binding=nil
        if input.KeyCode==Enum.KeyCode.Escape then ui.status("Atalho cancelado.") return end
        local value=input.KeyCode==Enum.KeyCode.Backspace and "None" or input.KeyCode.Name
        for key,existing in pairs(config) do
            if key~=field and string.sub(key,1,3)=="key" and value~="None" and existing==value then
                ui.status(string.format(T("Essa tecla ja esta em uso por %s."),key)) return
            end
        end
        change(field,value) ui.status("Atalho atualizado.") return
    end
    if services.UserInputService:GetFocusedTextBox() then return end
    local name=input.KeyCode.Name
    if name==config.keyPause and name~="None" then stopLoop() pause("Pausado pelo atalho.") return end
    if processed then return end
    if name==config.keyMenu and name~="None" then ui.toggle() return end
    for key,field in pairs(keyActions) do
        if config[key]~="None" and name==config[key] then change(field,not displayed(field)) return end
    end
    if activeAction and config.pauseOnMovement and ({W=true,A=true,S=true,D=true,Space=true,Up=true,Down=true,Left=true,Right=true})[name] then
        stopLoop()
        pause("Pausado por entrada manual de movimento.")
    end
end)
lifecycle.add(function() inputConnection:Disconnect() end)
local respawnConnection=player.CharacterAdded:Connect(function(character)
    if pendingOP or character==autoStartedCharacter then return end
    pause("Personagem recarregado; rotinas pausadas.") adapter.reset()
    if loopEnabled and not completionHandled then pendingOP=true end
    if config.autoRepairGui then
        local character=player.Character
        task.delay(1,function() if lifecycle.alive() and player.Character==character then restoreInterface() end end)
    end
end)
lifecycle.add(function() respawnConnection:Disconnect() end)

local actionNames={keyProbe="Testando chave antecipada",escape="Indo para a saida com a chave",drone="Comprando drone",cool="Resfriando",collect="Coletando",deliver="Entregando",cut="Cortando",enterCut="Indo para a mesa",buy="Comprando",crank="Girando cortador",search="Indexando e selecionando",stageCut="Abastecendo a mesa",sell="Vendendo",returnTable="Retornando a mesa",dynamite="Lancando dinamite"}
local nextUi=0
local heartbeat=services.RunService.Heartbeat:Connect(function()
    if not lifecycle.alive() or os.clock()<nextUi then return end
    nextUi=os.clock()+0.5
    if pendingOP and not completionHandled and not gate.expired() and nav.actor() then
        pendingOP=false
        autoStartedCharacter=player.Character
        change("opAutoFinish",true)
        log(resume and "OP retomado apos confirmar o personagem da partida." or "OP iniciado pela tela da key.")
    end
    nav.updateCamera()
    local member=gate.membership()
    if os.clock()>=nextQuestPoll then
        nextQuestPoll=os.clock()+1.5
        local ok,rows=pcall(Quests.scan,player.PlayerGui)
        if ok then questRows=rows end
        if selectedQuest then
            local found=nil
            for _,row in ipairs(questRows) do if row.id==selectedQuest then found=row break end end
            if found and found.done then
                log("Missao confirmada pelo jogo: "..found.title)
                notify("Missao concluida. Voltando ao Auto Progress normal.")
                clearQuest()
            end
        end
        ui.quests(questRows,selectedQuest)
    end
    if ui.membership then ui.membership(member) end
    if member.expired and not expiryHandled then expiryHandled=true pause("Licenca expirada; rotinas pausadas.") end
    local ok,snapshot=pcall(adapter.snapshot)
    if not ok then log("Falha de leitura: "..tostring(snapshot),"error") return end
    if snapshot.askDrone then
        adapter.droneAsked()
        ui.confirmDrone(function(accepted) adapter.droneConfirm(accepted) end)
    end
    local goal=snapshot.deliveryGoal or Core.deliveryGoal(config,snapshot.capacity)
    local money=snapshot.cash and string.format("$%.2f",snapshot.cash) or "indisponivel"
    local capacity=snapshot.capacity==math.huge and "∞" or snapshot.capacity and tostring(snapshot.capacity) or "?"
    local bag=snapshot.carried and tostring(snapshot.carried).."/"..capacity or "indisponivel"
    local heat=snapshot.heat and string.format("%.0f%%",snapshot.heat) or "somente aviso do jogo"
    local message=activeAction and actionNames[activeAction] or "Aguardando rotina ou recurso disponivel"
    local stock=snapshot.stock and tostring(snapshot.stock) or "?"
    local target=snapshot.goal and snapshot.goal.name or "coletar e cortar"
    ui.summary(string.format(T("%s  |  Bolsa: %s\nEntrega: %s  |  Cortadas: %s/%d\nMeta: %s\nCalor: %s  |  Gemas: %d\n%.1f cortadas/s | %s | vendas: %d"),
        T(money),T(bag),goal and tostring(goal) or "?",stock,config.sellThreshold,T(target),T(heat),adapter.counts.gems,snapshot.cutRate or 0,T(message),adapter.counts.sales))
    if ui.dashboard then
        local panelData=adapter.dashboard()
        local exitState=escapeDriver.diagnostic()
        endingSkipper.poll(exitState.started or exitState.finished,config.skipEndingScene and not member.expired)
        if config.skipEndingScene and not member.expired then tryOutro(escapeDriver.finishTime()) end
        endingSkipper.afterVictory(exitState.finished,config.skipEndingScene and config.releaseEndingCamera and not member.expired)
        if exitState.finished and not completionHandled then
            completionHandled=true
            finishSeconds=(escapeDriver.finishTime() or os.clock())-sessionStartedAt
            pause("Capitulo 2 concluido; rotinas pausadas.")
        end
        if exitState.finished and not member.expired then repeatAfterReport() end
        panelData.hasKey=exitState.has_key panelData.finished=exitState.finished
        panelData.role=nil
        if Core.anyActive(config) then
            if config.teamLead then panelData.role="EQUIPE  /  LIDER OP"
            elseif config.teamFunding then panelData.role="EQUIPE  /  COLETA E ENTREGA"
            elseif config.supportCut then panelData.role=config.nativeWalkUpgrade and "GRUPO MISTO  /  APOIO" or "EQUIPE  /  CORTE E VENDA" end
        end
        ui.dashboard(panelData,finishSeconds or os.clock()-sessionStartedAt)
    end
    if completionHandled or loopStatus then message=loopStatus or "CAPITULO II CONCLUIDO  /  ROTINAS PAUSADAS"
    elseif member.expired then message="LICENCA EXPIRADA  /  ROTINAS PAUSADAS"

    end
    if not binding then ui.status(message) end
    if activeAction and activeAction~="cool" and snapshot.needCooling and Core.effective(config,"autoCool")
        and os.clock()>=snapshot.coolingRetryAt then cancellation.cancel() adapter.stop() end
end)
lifecycle.add(function() heartbeat:Disconnect() end)

task.spawn(function()
    while lifecycle.alive() do
        local token=cancellation.current()
        local function valid() return lifecycle.alive() and cancellation.valid(token) and not gate.expired() end
        local ok,errorMessage=pcall(function()
            if completionHandled or escapeDriver.finishTime() or gate.expired() then return end
            local snapshot=adapter.snapshot()
            snapshot.hasKey=escapeDriver.ready()
            snapshot.questAction=config.autoProgress and questAction or nil
            local hasActor=nav.actor()~=nil
            if not hasActor then return end
            if pendingUpgrade and not snapshot.needCooling then
                local requested=pendingUpgrade
                pendingUpgrade=nil
                activeAction="buy"
                local success,message=adapter.manualUpgrade(requested[1],requested[2],valid)
                activeAction=nil
                if valid() then notify(message or (success and "Melhoria confirmada." or "Melhoria nao confirmada.")) end
                return
            end
            local action=Core.choose(config,snapshot,os.clock())
            if action=="idle" and not snapshot.mountainEmpty and (Core.effective(config,"autoFarm") or Core.effective(config,"autoDynamite"))
                and not (Core.batchCollect(config) and snapshot.opBurst and snapshot.opBurst.pending>0)
                and (Core.effective(config,"autoDynamite") or config.collectPumpkins or snapshot.carried and snapshot.capacity and snapshot.carried<snapshot.capacity) then
                activeAction="search"
                local current,why=adapter.findCandidate(valid)
                activeAction=nil
                if why then log(why,"error") end
                if not valid() then return end
                snapshot=adapter.snapshot()
                snapshot.hasKey=escapeDriver.ready()
                snapshot.questAction=config.autoProgress and questAction or nil
                snapshot.hasCandidate=current~=nil
                action=Core.choose(config,snapshot,os.clock())
            end
            if action=="idle" or not valid() then return end
            activeAction=action
            local began=os.clock()
            local success,message=adapter.actions[action](valid)
            adapter.recordAction(action,os.clock()-began,success)
            activeAction=nil
            if not valid() then return end
            if success then failures[action]=0
            else
                failures[action]=(failures[action] or 0)+1
                log((actionNames[action] or action)..": "..tostring(message),"error")
                if action=="buy" then adapter.defer(action,3) end
                if action=="cool" then adapter.defer(action,config.coolingRetry) end
                if config.autoRecover then
                    adapter.recover(action,failures[action])
                    if failures[action]==3 then log("Recuperacao automatica de "..(actionNames[action] or action).."; outras etapas continuam.") end
                elseif failures[action]>=3 and action~="buy" and action~="enterCut" and action~="sell" and action~="dynamite" then
                    pause(string.format(T("Rotinas pausadas apos tres falhas em %s."),T(actionNames[action] or action)))
                    notify("Rotina pausada. Reative para tentar novamente.")
                end
                if failures[action]>=3 and (action=="buy" or action=="enterCut" or action=="sell" or action=="dynamite") then
                    failures[action]=0 log("A etapa foi adiada; as outras rotinas continuam.")
                end
            end
        end)
        if not ok then
            local failed=activeAction or "collect"
            activeAction=nil adapter.stop()
            log("Falha de execucao: "..tostring(errorMessage),"error")
            if config.autoRecover then
                failures[failed]=(failures[failed] or 0)+1 adapter.recover(failed,failures[failed])
            else pause("Falha de execucao; controles restaurados.") end
        end
        task.wait(Core.tickInterval(config))
    end
end)

end

bootAnonymousPotato()
