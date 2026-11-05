# Evolvy / Anonymous 0.14.0 — ritmo de limpeza e painel de equipamentos
Chave Anonymous. PlaceId 116701845804918.

Sorte: Body/Luck so entra na fila quando o sugador inteiro estiver no maximo confirmado. Foi incluida tambem na fila da fase final, da qual antes estava ausente. Mantem reserva, preco verificavel, propriedade, maximos e confirmacao por aumento de nivel.

Ritmo de limpeza vem ligado. Na fase de equipamentos completos com raridade Qualquer, escolhe alvos proximos em vez de fazer desvios por gemas/variantes valiosas e nao varre especiais sem modelo. A chave continua prioritaria quando identificada. Fora dessa fase, os filtros e as prioridades escolhidos continuam valendo.

Entregas: Reduzir intervalo local ajusta Shared.PotatoTableShared.PLACEMENT_STAGGER de 0,08 s para 0,01 s por padrao, quando esse campo estiver disponivel. E uma mudanca da constante do cliente; pode nao acelerar se o controlador tiver copiado o valor ou se o servidor impuser outro ritmo. Em falha sem progresso, volta ao intervalo original. O fechamento restaura a constante, preservando uma alteracao externa posterior. Intervalo configuravel em Ajustes. Mantido o lote de producao de 500 para respeitar as configuracoes anteriores.

Recuperacao: o diagnostico anterior encontrou somente componentes Cash. Esta versao procura modelos de ScreenGui Hotbar e Bag em StarterGui e clona somente os conhecidos que estiverem ausentes. Restaura componentes existentes sem abrir cutscenes. Se nao houver modelo, o cartao informa quais telas ainda faltam; nao promete reconstruir controladores que o cliente nao disponibiliza. O diagnostico inclui nomes de telas, recriacoes e ausencias. A funcionalidade dos botoes recriados ainda precisa ser conferida no jogo.

Visual: cartoes de dinamite, pa, automatico e sugador, icones do catalogo nativo quando disponiveis, barras de niveis, marcacao MAX confirmada, linha das etapas RENDA/EQUIPAR/LIMPAR/SAIR, cronometro e nivel de sorte. Recuperacao acessivel no rodape e no seu cartao, sem botao flutuante adicional. O botao A continua abrindo/ocultando.

Desempenho: action_timings registra chamadas, segundos totais, maior duracao e falhas por etapa, e session_elapsed_seconds registra a duracao da sessao do hub. O proximo diagnostico permite comparar onde foi gasto o tempo, em vez de inferir isso pela distancia entre logs repetidos.

Validacao: compilacao oficial Luau 0.745 e 13 suites locais, 73 verificacoes de coordenacao e 45 de layout. Novos casos cobrem sorte apenas depois do sugador, alteracao/restauracao do intervalo e recriacao seletiva de GUI. Sem execucao real pelo agente no Delta/iPhone ou renderizacao do painel nesse ambiente. Nao ha ganho de tempo medido nem garantia de concluir em 6–8 minutos ou remover cooldown do servidor.
