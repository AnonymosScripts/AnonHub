# Evolvy / Anonymous Potato — capítulo 2, versão 0.5.0

Key provisória: **Anonymous**.

Loader:

```lua
-- Luau · loader · Roblox / Delta
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonymosScripts/Script-1-Evolvy-Hub/main/potato/loader.lua"))()
```

O loader busca o arquivo completo no repositório informado e guarda uma cópia no armazenamento do executor, quando `writefile` estiver disponível. Nas próximas atualizações basta executar o mesmo loader. O arquivo `LOADSTRING.txt` contém a linha para copiar.

## Ciclo do Auto Progress

O ciclo coordena coleta, entrega, corte, venda, compra e retorno. O resfriamento mantém prioridade. Ao atingir o estoque de cortadas configurado, vende; depois prioriza uma ferramenta de corte melhor que caiba no saldo e retorna à mesa. Ao concluir a progressão de corte, passa às ferramentas de coleta e melhorias disponíveis.

Em **Vendas**, ative Auto Sell e configure o mínimo — por exemplo, **500**. O contador usa `SellCrate.PotatoArea.PotatoCount`, separado da mochila carregada. Há opções para comprar depois da venda, voltar ao trabalho e liquidar o restante quando a coleta terminar. As rotinas de venda e corte também podem ser ativadas separadamente.

Em **Coleta**, configure o lote de entrega e, se a sua conta já possui o recurso, marque **Tenho bolsa infinita**. A marcação altera o planejamento do hub; não concede o passe no servidor. Os atalhos 100, 500, 1000 e 5000 ajudam a definir o lote. Valores grandes são digitados: foi removida a barra que podia mudar o lote para centenas de milhares durante a rolagem no celular. Sem a marcação, a capacidade detectada continua prevalecendo.

## Correções de funcionamento e desempenho

- A entrada na mesa usa `fireproximityprompt`, quando oferecido pelo executor, com verificação de alcance. O caminho de entrada mantida fica como alternativa. Os comandos não precisam apontar a câmera para os botões do jogo.
- A coleta passou a usar um índice espacial: captura poucas amostras dos getters reais, identifica o argumento que muda por slot e confere as posições lógicas contra as peças físicas. Aceita coordenadas de mundo ou locais à pilha. Exige correspondência ampla antes de usar os índices.
- A captura dos getters é encerrada depois da identificação, com limite de 24 observações por função. Foi removida a varredura periódica de centenas de tabelas/upvalues. A sincronização da pilha foi limitada a duas tentativas por sessão.
- A escolha de alvos mantém apenas os 256 melhores, em vez de ordenar milhares de peças a cada busca. Consultas de estado e planejamento de compras possuem cache.
- Gemas possuem identificação e confirmação separadas da variante Diamond. Abóboras dependem do evento ativo. A confirmação de recompensa não usa mais o simples desaparecimento de uma peça como prova de crédito ao jogador.
- O corte rápido foi preservado, com recuperação do tamanho de bloco após uma sequência de confirmações. Não acrescenta animações artificiais ao caminho rápido.

O índice inicial pode levar alguns instantes para ser construído. O trabalho é dividido entre frames. O resultado aparece em Registros e no diagnóstico como quantidade de peças mapeadas e transformação utilizada. Caso a geometria ou os contratos não coincidam, a coleta aguarda; não utiliza índices inventados nem muda um filtro específico para Qualquer.

## Melhorias e ferramentas

As melhorias usam uma lista explícita do capítulo 2: Hand, Shovel, Dynamite, PotatoSucker, ferramentas/máquinas de corte, Body e Drone adquirido. **Truck/DriveSpeed e outras melhorias do capítulo 3 não são enfileiradas.** O drone é melhorado apenas quando `HasDrone` confirma a compra.

Os níveis são lidos do estado do jogador e conferidos após a ação. A interface nativa pode ser atualizada em segundo plano com o `ScreenGui` oculto; sua visibilidade e seleção anteriores são restauradas. Quando os tipos dos pacotes permitem identificar os dois argumentos de texto, a compra da melhoria usa os IDs do módulo. As outras variantes utilizam o botão nativo oculto. Nenhuma compra depende de tocar na aba de melhorias.

**Guardar para a próxima arma** preserva o saldo para a próxima ferramenta de corte quando ainda não pode pagá-la. Pode ser desligado para permitir outras melhorias antes. Compras em Robux não são acionadas.

A dinamite automática só atua com posse confirmada e com o pacote de lançamento identificado como um argumento Vector3. O intervalo é configurável; o modo acelerado reduz a espera local. Solicitações sem confirmação recebem um intervalo maior. Isso não comprova nem garante contornar um cooldown aplicado pelo servidor. O hub restaura a ferramenta de coleta após o lançamento quando identifica o pacote de equipamento.

## Interface e diagnóstico

O painel e o botão A continuam arrastáveis e ajustáveis. Valores numéricos grandes usam entrada de texto e atalhos. Deslizar verticalmente sobre controles não deve alterar seus valores imediatamente. A tela inicial mostra saldo, mochila, estoque cortado, meta de compra e vendas.

As rotinas começam pausadas. **SALVAR** mantém configurações e posições. **PAUSAR TUDO** interrompe comandos; **ENCERRAR HUB** remove a sessão. Em Registros, **COPIAR LOADER CURTO** copia a linha e tenta salvá-la como `Evolvy_Chapter2_Loader.lua` no executor.

**EXPORTAR DIAGNÓSTICO** inclui contratos capturados, correspondência espacial, formatos dos pacotes, estoque e falhas recentes. O relatório não é enviado para um serviço externo.

## Validação

Passaram a compilação oficial Luau 0.745 e dez suítes locais, incluindo 54 verificações de lógica, 45 de limites de tela, seleção limitada de alvos, índice espacial, captura limitada de getters, regras do capítulo 2, tipos de pacotes, corte e persistência.

Esta versão ainda precisa de validação no Delta/iPhone. Os testes locais usam cenários simulados e não medem FPS ou tempo de conclusão na experiência. A referência continua sendo o PlaceId `116701845804918`, versão 95, e o diagnóstico real fornecido da v0.4. Não há garantia de terminar em um minuto ou de o servidor aceitar intervalos menores.

Referências: [API de fireproximityprompt do sUNC](https://docs.sunc.io/Instances/fireproximityprompt/), [tipos e escritores da biblioteca Packet](https://github.com/mrchigurh/Suphi-Packet/blob/main/Packet/Types/init.lua) e [arquivos raw no GitHub](https://docs.github.com/en/repositories/working-with-files/using-files/viewing-and-understanding-files).
