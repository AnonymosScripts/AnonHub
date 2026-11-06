# Evolvy / Anonymous 0.19.0 — OP, perfil e finalização do capítulo II

PlaceId 116701845804918. Key local: **Anonymous**. Na tela inicial, escolha **Ativar OP** ou **Auto Progress**. Os modos são independentes no painel e mutuamente exclusivos; iniciar um troca o outro. O OP coordena seus serviços internos sem marcar como ligadas as rotinas manuais.

## A mudança com maior impacto no tempo

O teste informado da v0.18 concluiu em cerca de 24 minutos, com mapa nativo encontrado e 801 ondas de coleta com ganho em 837. O registro mostra a última melhoria do P0T4T0-3000 por volta de 19:35 e melhorias do cortador automático até aproximadamente 19:44. O intervalo de cerca de nove minutos inclui o corte e as vendas feitos para outros equipamentos. Não é uma previsão exata do ganho da v0.19.

Assim que as três linhas do **P0T4T0-3000** estiverem no máximo confirmado, o OP pausa o financiamento de equipamentos adicionais e mantém a coleta até o contador nativo indicar montanha vazia. Compras, vendas, retornos à mesa e manivela aguardam. Resfriamento, dinamite, bolsa finita cheia e a saída com uma chave confirmada continuam sendo atendidos. Com bolsa infinita, não interrompe a coleta para descarregar lotes parciais. Ao esvaziar, entrega inclusive a última bolsa parcial e retoma o corte, priorizando as facas na fila de compra. A rota normal do Auto Progress mantém as metas anteriores.

`op_bulk` informa entrada, duração e conclusão da fase de coleta contínua. O registro marca quando o sugador chegou a MAX e quando a montanha esvaziou. Use essas marcações, `session_elapsed_seconds`, `action_timings` e `exit.finished` para comparar a próxima partida. Meta: primeiro abaixo de 20 minutos, depois 14–16. Esses tempos ainda não foram medidos nesta versão.

## Perfil, água e saída

- Nova tela da key, adaptada a telas pequenas. A conta mostra avatar, nome do Roblox, **Member**, key e **Life time** para o acesso local atual. Os cartões de equipamento preservam as imagens do catálogo e ganharam cores por ferramenta.
- **Resfriar → Tempo segurando a válvula:** 1–5 segundos, padrão 5. O ajuste local só é contado quando há água fluindo ou queda de calor. Se uma duração curta não for aceita, pode tentar o acionamento nativo e repetir com o tempo original. O valor original do botão é restaurado.
- **Ajustes → Anti-AFK:** atua no evento de inatividade enquanto alguma rotina estiver ativa. Depende da função de entrada disponível no executor; erros aparecem em `anti_afk`. Pausar desativa os pulsos.
- **Ajustes → Pular cena final:** durante a saída, procura um único botão nativo de pular, visível e ativo, nas telas de finalização. Se não houver esse botão, preserva a cena normal. `ending_scene` registra o botão e o resultado do acionamento. O evento real Escaped continua confirmando a vitória e pausa as rotinas da partida.
- Rejoin, fila no lobby, seleção automática de capítulo, pular a introdução e repetição ficam para a próxima etapa, após validar o capítulo 2.

## Integração futura da licença

A validação atual é local. O contrato preparado para `ACCESS.validate(key)` aceita retorno `accepted, message, metadata`. Em `metadata`, `plan` define o rótulo, `expiresAt` é um timestamp Unix em segundos e `lifetime=true` indica duração ilimitada se não houver expiração. A interface recalcula a duração restante, informa validade ausente quando o provedor não a informa e pausa ao expirar. A integração com um provedor real ainda não está conectada. Chaves não são incluídas no diagnóstico.

Referências do cliente: [avatar do Roblox](https://create.roblox.com/docs/reference/engine/classes/Players#GetUserThumbnailAsync), [evento de inatividade](https://create.roblox.com/docs/reference/engine/classes/Player#Idled) e [ProximityPrompt](https://create.roblox.com/docs/reference/engine/classes/ProximityPrompt).

## Validação e publicação

Compilação oficial Luau 0.745 e 17 suítes locais, com 73 verificações de coordenação e 50 de layout. Casos novos cobrem mudança para coleta contínua com o sugador no máximo, descarga antes do corte, separação dos modos, restauração do tempo da válvula, expiração, Anti-AFK e seleção de botão da cena final. O agente não executou esta versão no Delta/iPhone; aparência no aparelho, tempo da partida, resfriamento curto e presença do botão de pular ainda precisam de teste real.

Publique com PUBLICAR_V019.cmd usando AnonymosScripts. O publicador verifica o commit preparado e os arquivos públicos antes de mostrar o loader. A conexão atual do plugin GitHub usa uma conta sem permissão de escrita nesse repositório.
