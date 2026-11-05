# Evolvy / Anonymous 0.17.0 — teste de chave antecipada

Chave do hub: Anonymous. Capitulo 2, PlaceId 116701845804918.

Ative **Ajustes → ultimo cartao → OP Alto Zerar** e mantenha **Testar chave antecipada** ligado. Nao precisa ativar Auto Progress junto. PAUSAR interrompe as rotinas.

## Hipotese investigada

Uma fonte publica de codigo consulta `KeyPotatoId` no estado da pilha e acompanha `PotatoKeyMoved`. Isso mostra uma forma de localizar uma chave que o cliente conheca. Nao demonstra que o servidor permita pega-la antes do requisito da partida. A v0.17 testa essa possibilidade com o ID real divulgado, sem exigir as APIs de upvalues que estavam indisponiveis nos registros do Delta.

O resolvedor examina somente as tabelas de pilha recebidas nas chamadas nativas ja observadas e o evento do jogo. Se houver ID valido e posicao pelo mapeamento nativo, a rotina vai ate o local e envia uma coleta direcionada, inclusive quando a peca estiver coberta. Se o cliente nao divulgar o ID ou a posicao, nao envia um pedido inventado. Se o servidor confirmar `HasKey`, prioriza a saida. `KeyRevealed` sozinho nao e tratado como propriedade da chave nem como conclusao.

Sao no maximo duas tentativas por ID/estado, separadas por pelo menos 10 segundos. Uma mudanca real do ID, um evento de revelacao ou o fim da pilha permite reavaliar. Uma recusa devolve o controle a progressao normal. O contador de vitórias nao e alterado localmente; a conclusao continua dependendo do evento real `Escaped`.

## Como avaliar

Depois de aproximadamente 60 segundos, exporte em **Registros → EXPORTAR DIAGNOSTICO**. Confira:

- `bindings.key`: ID divulgado, origem e motivo quando indisponivel.
- `key_shortcut.results`: tentativas e `confirmed`, que exige `HasKey` real.
- `key_shortcut.guard`: limites e proximas tentativas por estado.
- `pile_progress`: fracao removida lida do contador nativo da partida.
- `op_burst` e `action_timings`: coleta e tempo gasto por etapa.

Nao foi demonstrada conclusao em 1 minuto. Esta versao introduz uma tentativa de atalho sustentada pelo codigo publico consultado. O teste real de aceitacao pelo servidor continua pendente. Os recursos e a ordem do OP da v0.16 foram preservados.

## Pesquisa e validacao

Veja **PESQUISA_ATALHOS.md** no pacote para as fontes, resultados e limitacoes. Nenhum loader de terceiros foi executado. Compilacao oficial Luau 0.745 e 14 suites locais; casos novos cobrem captura da chave por contexto/evento, ocultacao, mapeamento, limites, prioridades e limpeza dos listeners. Sem teste real pelo agente no Delta/iPhone.

Para publicar, execute PUBLICAR_V017.cmd no seu Windows. Ele solicita a conta AnonymosScripts e verifica os arquivos publicos apos o push. O plugin conectado a Lucasxshttp nao possui permissao de escrita neste repositorio.
