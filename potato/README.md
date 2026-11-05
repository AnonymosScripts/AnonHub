# Evolvy / Anonymous 0.12.0 — interface e recuperacao inicial
Chave Anonymous. PlaceId 116701845804918.

RESTAURAR GUI aparece fora do painel desde a abertura, antes da chave e da leitura dos modulos. Funciona tambem com o painel oculto. A primeira secao da tela Inicio oferece RESTAURAR GUI E CONTROLES. A opcao Recuperar ao iniciar e renascer vem ligada. A recuperacao encerra entradas de ferramentas, fecha menus, habilita novamente prompts e controles e restaura componentes conhecidos de dinheiro, bolsa, ferramentas e interacao. Nao habilita indiscriminadamente telas de introducao/cutscene. Ao renascer, a recuperacao espera um segundo e mantem a automacao pausada; reative Auto Progress.

Visual atualizado: fundo azul escuro, acentos verde-agua, marca Evolvy, faixa de estado, cartao de progresso com gradiente e recuperacao como primeira acao. Layout continua adaptavel com escala, arraste, redimensionamento e botao A para abrir/ocultar. Layout verificado por testes de limites; nao houve renderizacao real no Delta pelo agente.

Melhorias: dinamite (somente PickAmount e PickSpeed), automatico adquirido, pa e P0T4T0-3000 continuam na fila ate o maximo confirmado, respeitando as fases e o saldo. A pa volta a ser considerada depois das etapas de equipamento/automatico/sugador; nao e descartada definitivamente ao maximizar a dinamite. Sem melhorias da mao depois da pa, sem ThrowRange e sem melhorias do manual. Custos e niveis desconhecidos continuam sendo registrados no diagnostico em vez de gerar compras por suposicao.

O diagnostico enviado da v0.11.1 trouxe compras confirmadas de PotatoWorth, facas, dinamite e manual, mas tambem falhas na entrada da mesa e morte com calor alto. Esta versao nao declara resolvidas todas essas interacoes: preserva a recuperacao, alinhamento para resfriamento e verificacoes anteriores. O diagnostico agora inclui gui_recovery para mostrar quantos componentes foram restaurados e falhas encontradas.

Publicar com PUBLICAR_V012.cmd. Loader com v=0.12.0. Configuracoes antigas sao reaproveitadas; rotinas sempre comecam pausadas. A recuperacao visual nao executa farm sem ativacao.

Validacao: compilacao oficial Luau 0.745, 12 suites locais, 67 verificacoes de coordenacao e 45 de layout. Novo teste verifica restauracao seletiva de GUI, prompts e ausencia de StopPeeling em minigame inativo. Sem execucao real pelo agente no Delta/iPhone, sem garantia de 6–8 minutos ou cooldown zero.
