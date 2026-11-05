# Evolvy / Anonymous 0.15.0 — OP Alto Zerar (experimental)

Chave: Anonymous. Capitulo 2, PlaceId 116701845804918.

Ative **Ajustes → ultimo cartao → OP Alto Zerar**. O modo inicia o ciclo completo; nao precisa ativar Auto Progress junto. PAUSAR desliga os dois. As ativacoes ficam desligadas ao carregar ou renascer.

Esta e uma tentativa de acelerar a limpeza, sem tempo de conclusao demonstrado. Nao existe nesta versao um comando comprovado que apague a montanha em segundos ou conceda a chave. A saida so e marcada como concluida apos o evento real Escaped.

## O que muda no modo OP

- Coleta qualquer raridade e prefere os alvos proximos. Evita a varredura completa de tipos e desvios por especiais. A preferencia de aboboras continua configuravel.
- Depois de confirmar o mapeamento dos indices e obter o contador replicado de inventario, usa ondas de 2 ate 16 IDs unicos, somente de pecas expostas e dentro do raio configurado (maximo 18 studs).
- Uma onda fica pendente por ate 0,35 s. O agendador continua livre para outras etapas. Ganhos reais aumentam gradualmente a janela; ausencia de progresso reduz a janela e introduz recuo. Pedidos repetidos ao mesmo ID aguardam 1 s. Nao interpreta envio como coleta aceita.
- A dinamite aproveita o alvo da propria rodada, sem depender de ele sobreviver ate a proxima passagem pelo agendador. Mantem uma tentativa pendente, confirmacao do jogo, recuo quando recusada e troca para a melhor ferramenta adquirida. Reduz a espera local; nao remove o cooldown do servidor.
- Antes de todos os equipamentos completos, continua cortando, vendendo e comprando para gerar renda. Depois de dinamite, pa, automatico e sugador no maximo, prioriza esvaziar a montanha.
- No modo OP, a capacidade vem do estado/contador real; a marcacao manual de bolsa infinita nao substitui essa leitura. Com bolsa infinita confirmada, nao volta a cada 500 durante essa limpeza: guarda ate terminar a pilha. Com bolsa finita, entrega ao encher. Ao final, descarrega e processa o restante; uma chave confirmada interrompe essa etapa e prioriza a saida.
- Resfriamento, orcamento e melhorias continuam ativos, com prioridade para a chave real e para o calor. Sorte permanece liberada somente depois do sugador no maximo. Nao altera dinheiro, capacidade ou propriedade.

## Comparar sem esperar outra partida inteira

O rodape mostra ganhos de inventario por segundo, pedidos e ondas sem resposta. Depois de aproximadamente 60 segundos com o OP ativo, use **Registros → EXPORTAR DIAGNOSTICO**. Compare `op_burst.inventory_gain`, `requests`, `timeouts`, `limit`, `gain_per_second`, `action_timings` e `session_elapsed_seconds`. Ganhos de uma onda nao provam que todos os IDs foram aceitos e podem incluir a dinamite. Se muitos pedidos nao produzirem ganhos, a janela recua; aumentar pedidos cegamente nao e tratado como sucesso.

No inicio, o mapeamento ainda precisa de confirmacoes; nesse periodo, usa a coleta anterior. O servidor pode manter limites que este cliente nao consegue reduzir. A entrega nativa e a animacao/controlador do jogo ainda podem limitar o tempo total.

## Validacao e publicacao

Compilacao oficial Luau 0.745 e 14 suites locais, incluindo limites, duplicacao de IDs, cancelamento, falta de resposta, bolsas finitas/infinitas e prioridade da chave/resfriamento/compras. Sem teste real pelo agente no Delta/iPhone. Os testes locais nao demonstram desempenho no servidor.

Para publicar, execute PUBLICAR_V015.cmd no seu Windows. O publicador verifica repositorio e commit preparados, faz push normal e compara chapter2.lua e loader.lua com as URLs publicas. O pacote local e independente da publicacao.
