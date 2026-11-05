# Evolvy / Anonymous 0.18.0 — mapa nativo, renda e chave

Chave do hub: Anonymous. Capitulo 2, PlaceId 116701845804918.

Ative **Ajustes → OP Alto Zerar** com **Testar chave antecipada** ligado. PAUSAR interrompe as rotinas. Confirme Anonymous Potato 0.18.0 no registro para evitar comparar com uma versao anterior em cache.

## Falhas do registro anterior

O metodo anterior nao encontrou um ID de chave: por isso houve zero tentativas. As 59 ondas de coleta tiveram 52 sem resposta. O OP tambem ficou sem gerar renda para a proxima melhoria, com $0,23, 85 batatas carregadas e 47 cortadas. A indicacao de upvalues indisponiveis era um valor fixo, e nao uma verificacao real da API.

## Correcoes

- Leitura real das upvalues disponiveis, com limites de funcoes, profundidade e amostragem. Procura o mapa BasePart → ID utilizado pelo controlador; nao usa posicao de array como ID nativo. A API ausente ou uma tabela nao reconhecida mantem o resolvedor espacial como alternativa.
- Quando o mapa nativo e encontrado, evita a indexacao teorica completa de posicoes na largada. O predicado nativo de exposicao e usado quando o estado esta disponivel. Partes removidas, outra pilha e IDs invalidos sao recusados.
- A chave pode ser lida tambem do estado interno do controlador. Um ID real nesse estado permite testar a coleta mesmo que o evento publico use zero. Se o ID nao estiver divulgado em nenhuma fonte, nao envia pedidos inventados. Posições sem modelo exigem uma transformacao validada em tres correspondencias reais.
- Quando falta dinheiro para a proxima melhoria, o OP vende estoque existente ou abastece/corta um lote de renda. Uma bolsa infinita nao impede esse abastecimento. Com a producao completa, deixa de interromper a limpeza para financiar compras opcionais.
- Equipamento usa o controlador nativo quando disponivel. GetPickCooldown recebe o nome da ferramenta. O intervalo nativo e o recuo apos ausencia de confirmacao reduzem lancamentos/coletas recusados.

## Conferir no proximo diagnostico

`bindings.native_discovery` informa API, funcoes inspecionadas, mapa e estado encontrados. `bindings.native_map` indica uso do mapa nativo. `bindings.key` e `key_shortcut` mostram a descoberta/tentativa da chave. `op_funding` mostra se a rotina precisa gerar renda. `dynamite_timing`, `op_burst` e `pile_progress` permitem comparar intervalo, ganhos e reducao da pilha. O contador da pilha pode incluir outros jogadores.

**Nao foi demonstrada vitoria em um minuto nem coleta da chave antes dos requisitos do servidor.** A v0.18 corrige falhas concretas e adiciona leitura nativa que a v0.17 nao tentava. Nao houve execucao real pelo agente no Delta/iPhone. A conclusao continua exigindo HasKey e o evento real Escaped.

## Validacao e publicacao

Compilacao oficial Luau 0.745 e 15 suites locais. Novos casos cobrem mapa nativo diferente do indice geometrico, tabela de partes confundida com mapa, ciclos de closures, IDs removidos, chave do controlador, posicao de chave sem modelo, alvo coberto, renda com os valores do registro e argumento correto de cooldown.

Publique com PUBLICAR_V018.cmd no seu Windows usando AnonymosScripts. O publicador verifica o commit preparado e compara chapter2.lua/loader.lua com as URLs publicas. O plugin conectado a Lucasxshttp nao possui permissao de escrita nesse repositorio. Veja PESQUISA_ATALHOS.md para as fontes e os limites da investigacao.
