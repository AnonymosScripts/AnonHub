# Evolvy / Anonymous 0.11.0 — coleta ao redor e leitura de maximos
Chave: Anonymous. PlaceId 116701845804918.

O diagnostico da v0.10 mostrou nivel 5 nas duas melhorias de dinamite e no sugador, mas nenhum maximo resolvido. A fase continuava fund dynamite. Esta versao resolve a definicao passando pelo objeto real da ferramenta e sua lista Upgrades; GetMaxLevel tambem pode receber a lista Values quando essa for a assinatura aceita. Sem maximo verificavel nao declara uma ferramenta como maximizada. Os testes cobrem especificamente definicoes cujo GetUpgrade exige o objeto da ferramenta e cujo GetMaxLevel exige Values.

O inventario agora prefere PlayerState.Potatoes, incluindo zero, em vez de esperar a animacao visual da bolsa. Isto permite concluir a etapa quando o estado real ja mudou. O contador visual permanece somente como alternativa se o campo replicado estiver indisponivel. A capacidade e o tipo de bolsa continuam sendo verificados separadamente.

Coletar ao redor sem mirar vem ativado. O raio local padrao e 16 studs, configuravel entre 5 e 18. Usa os IDs mapeados de alvos proximos, sem SetUseHeld que depende do raio da camera. Quando o alvo esta distante, o teleporte/caminhada configurado faz a aproximacao. Nao e coleta a distancia ilimitada: o servidor continua validando alcance, alvo e recarga. A rotacao da peca tambem pode confirmar qual dos dois IDs candidatos coincide com a rotacao nativa; sem coincidencia exata, permanece o mecanismo de confirmacao anterior.

O sugador e a primeira escolha em Auto. Sinais SuckerOverheated/PotatoSuckerOverheated ou texto visivel de superaquecimento provocam troca para pa adquirida. Duas coletas sem confirmacao com o sugador tambem provocam pausa de dois segundos com a pa antes de tentar novamente. Isto contorna a indisponibilidade da ferramenta pelo uso de outra ferramenta; nao remove cooldown do servidor.

Depois do maximo confirmado da dinamite, a reserva de 400 continua desativada e as fases de maquinas/sugador sao priorizadas conforme v0.10. Bombas continuam com uma tentativa pendente, confirmacao de DynamiteThrown e recuo quando recusadas; nao bloqueiam a coleta aguardando a resposta. A selecao de ferramenta e sincronizada tambem durante a troca para dinamite para preservar a pa quando o sugador estiver quente.

Mantidos menus, resfriamento com alinhamento da camera, confirmacao do drone e limite contra compras repetidas. Os novos diagnosticos incluem fonte do inventario, maximos resolvidos e estado de superaquecimento.

Validacao: compilacao Luau 0.745 e 11 suites locais, 67 verificacoes de coordenacao e 45 de layout. Sem teste pelo agente no Delta/iPhone, sem comprovacao de cooldown zero, alcance ilimitado ou conclusao em 6–8 minutos.
