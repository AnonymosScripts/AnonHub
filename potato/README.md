# Evolvy 0.22 · Lobby e Capítulo II

O mesmo loader abre o painel do lobby ou o hub do capítulo. A distinção vem dos objetos carregados no mapa. O lobby e a partida gravados usam o PlaceId `116701845804918`.

1. Abra o loader no lobby e informe a key local **Anonymous**. Escolha **Abrir hub** para configurar a fila.
2. No painel do lobby, ajuste de um a quatro jogadores, apenas amigos e a introdução. Para o primeiro teste, use um jogador, introdução pulada e repetição desligada.
3. Toque em **Entrar e iniciar OP**. A automação vai até uma área de fila livre, abre o Capítulo II, aplica as opções e usa o botão nativo **DEPLOY**. O seletor, a marca da introdução e a solicitação real de teleporte são verificados.
4. Se o Delta aceitar retomar scripts entre servidores, o OP começa na partida. Se o Delta salvar arquivos mas não aceitar retomar scripts, abra o mesmo loader ao chegar. O pedido de retomada vale por 150 segundos, uma vez, para a mesma conta e a fase esperada. A key não é gravada nesse pedido.

Para jogar com amigos, o painel configura a fila do anfitrião. Os amigos podem entrar nessa fila pelo jogo. A seleção do tamanho é enviada ao botão nativo. A gravação atual não expõe um indicador que confirme qual tamanho ficou selecionado.

## Cena final e repetição

Depois da fuga confirmada, **Pular cena final** tenta o `Cancel` do `Chapter2OutroController` uma vez quando o controlador indica que a cena está rodando. O diagnóstico informa se a cena deixou de rodar. A função tem um parâmetro cuja semântica ainda não foi identificada, por isso a chamada usa o valor padrão. O resultado depende do teste no Delta.

**Repetir após vitória** é opcional. Quando ligado no lobby, espera o relatório da partida e tenta voltar ao lobby para repetir com as mesmas opções. Se a transferência falhar ou faltar o relatório, o fluxo automático para. **Parar** no lobby e **Pausar tudo** no hub cancelam a retomada. O retorno usa a transferência do cliente Roblox e precisa de teste no jogo publicado. [Documentação do Roblox sobre transferências](https://create.roblox.com/docs/projects/teleport)

A key atual é local. A integração com um provedor remoto de licenças depende do endereço e do contrato desse provedor.

Compilado com Luau 0.745. As 18 suítes locais cobrem, entre outros casos, ordem do `DEPLOY`, opção de pular introdução, teleporte sem confirmação, uso único e expiração da retomada. A entrada automática, o retorno, o efeito de `Cancel` e a retomada no Delta ainda aguardam teste em partida.

Execute **PUBLICAR_V022.cmd** no PowerShell com a conta **AnonymosScripts**. O publicador verifica os arquivos públicos e imprime o loader.
