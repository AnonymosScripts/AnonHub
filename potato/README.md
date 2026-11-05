# Evolvy / Anonymous 0.16.0 — iniciar a limpeza cedo

Chave: Anonymous. Capitulo 2, PlaceId 116701845804918.

**Ajustes → ultimo cartao → OP Alto Zerar**. Inicia o ciclo completo. PAUSAR interrompe as rotinas. Ativacoes ficam desligadas ao carregar/renascer.

## Falha encontrada no teste anterior

O registro da v0.15 mostrou 137,59 segundos de sessao, 702 batatas vendidas, somente 9 coletadas e zero ondas OP enviadas. A rotina ficou cortando e comprando facas, com Mezzaluna como proxima meta. A janela OP nao foi exercitada nesse teste. Nao houve evidencia de limpeza instantanea.

## Mudanca da v0.16

O OP usa uma ordem de compras propria: valor de venda ate nivel 3, primeira faca adicional, bolsa de ate 50 se necessaria, pa, dinamite, melhorias da dinamite, sugador/melhorias, drone adquirido, melhorias da pa, maquinas e demais equipamentos. Ofertas indisponiveis nao sao inventadas. Preco, saldo, reserva, propriedade e maximos continuam sendo verificados. A progressao normal mantem a ordem anterior.

Assim que tiver dinamite ou sugador, o OP prioriza a montanha; nao exige todos os equipamentos no maximo. Vendas de estoque existente e compras confirmadas ainda tem prioridade quando disponiveis. A limpeza pode continuar com equipamento basico enquanto junta dinheiro. Com bolsa finita, entrega ao encher na caixa; o automatico vira destino apos os equipamentos completos. Com bolsa infinita detectada, permanece na montanha ate a pilha terminar. Uma chave real tem prioridade sobre as outras etapas. Depois da limpeza, processa o estoque restante.

Mantidas as ondas adaptativas da v0.15: 2 ate 16 IDs unicos de pecas expostas dentro do raio local (maximo 18 studs), com confirmacao pelo inventario replicado, janela pendente de ate 0,35 s, recuo em ausencia de progresso e protecao contra repeticao imediata do mesmo ID. A ativacao requer mapeamento previamente confirmado; antes disso, usa a coleta anterior. A dinamite aproveita o alvo da rodada e volta para a melhor ferramenta adquirida. Cooldowns impostos pelo servidor continuam podendo limitar o ritmo.

## Medir a limpeza real

`op_burst` registra pedidos, ondas, ganhos de inventario e ondas sem resposta. Ganhos de inventario podem incluir a dinamite e nao comprovam aceitacao de todos os IDs enviados. `pile_progress` registra a fracao removida lida do contador nativo, a diferenca desde o inicio do OP e o tempo observado. Esse contador da partida pode incluir outros jogadores. `action_timings` mostra o tempo gasto em cada etapa.

Teste por aproximadamente 60 segundos e exporte em **Registros → EXPORTAR DIAGNOSTICO**. O resultado esperado desta correcao e adquirir dinamite antes das ultimas facas e entrar na fase de limpeza cedo. Nao ha tempo de 1 minuto demonstrado. Pecas nao sao apagadas apenas no cliente; o contador do jogo e a chave dependem das acoes aceitas pelo jogo. A conclusao somente e marcada pelo evento real Escaped.

## Validacao e publicacao

Compilacao oficial Luau 0.745 e 14 suites locais. Casos novos cobrem compras OP antes de facas caras, bolsa pequena antes da dinamite, bolsas maiores sem bloquear explosivos e entrada na limpeza sem exigir equipamento maximo. Sem execucao real pelo agente no Delta/iPhone. Testes locais nao demonstram desempenho no servidor.

Execute PUBLICAR_V016.cmd no seu Windows para publicar o commit preparado e verificar os arquivos publicos. O plugin GitHub desta sessao esta conectado a Lucasxshttp, com permissao de leitura e sem permissao de push neste repositorio. O publicador solicita a conta AnonymosScripts, conforme as publicacoes anteriores.
