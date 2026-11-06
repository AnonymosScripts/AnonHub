# Evolvy 0.23.1 · Ciclo completo

A versão 0.23.1 corrige a detecção do lobby e da partida no carregamento. Se houver outra falha, o painel mostra a etapa e o erro com o botão **Copiar erro**.

Abra o loader no lobby, use a key local **Anonymous** e toque em **Abrir hub**. Ajuste o tamanho da fila e **Apenas amigos** se precisar. Toque em **Iniciar ciclo completo** para ativar tudo no mesmo teste.

O ciclo seleciona o Capítulo II, confirma a opção de pular a introdução, aciona o `DEPLOY` nativo e tenta iniciar o OP no servidor da partida. O Anti-AFK acompanha a fila e o OP quando o executor disponibiliza o controle. Depois da fuga confirmada, o hub tenta cancelar a cena final pelo controlador observado e voltar ao lobby. Ele espera o relatório ou, na ausência do relatório, a confirmação do fim da cena com uma margem de 24 segundos após a fuga. Quando encontra um botão de retorno, tenta primeiro o botão do jogo.

Se o cliente mostrar erro de rede 266, 277 ou 279, o ciclo tenta retornar ao lobby. Há um limite de duas tentativas de reconexão por ciclo e ele só se renova quando uma partida é concluída. O progresso da partida desconectada depende do servidor do Roblox. **Parar** no lobby e **Pausar tudo** no capítulo cancelam o ciclo. [Códigos de erro do Roblox](https://en.help.roblox.com/hc/pt-br/articles/36639955031060-C%C3%B3digos-de-Erro-da-Roblox)

A passagem automática entre servidores depende de o Delta aceitar o agendamento de scripts na transferência. Se a entrada ocorreu mas o hub não abriu, execute o mesmo loader ao chegar. Se o Delta manteve o arquivo local, o hub reconhece o pedido de retomada da mesma conta por até 150 segundos. Para fila em equipe, os amigos entram pelo fluxo nativo da fila do anfitrião.

## Serviço de keys

O código do validador HTTPS, o emissor de keys e os testes estão em `license-service/`. O serviço aceita validade por prazo ou **Life time**, devolve o rótulo da key e renova a sessão nas trocas de servidor. A interface para o OP quando a validade expira. O serviço precisa ser publicado e conectado a um endereço HTTPS antes de validar keys reais no Delta. O [guia do serviço](license-service/README.md) explica como configurar. A key **Anonymous** continua sendo local para o teste do jogo.

O hub compilou com Luau 0.745. As 19 suítes de Luau e os quatro testes do serviço de keys passaram. A execução completa no Delta, o salto da cena e a reconexão dependem do teste no jogo publicado.

Publique com **PUBLICAR_V0231.cmd** no PowerShell e use o loader quando aparecer **PUBLICADO E VERIFICADO**.
