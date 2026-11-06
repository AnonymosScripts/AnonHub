# Evolvy 0.25 · Lobby do Capítulo II

No lobby, execute o loader, informe a key local **Anonymous** e toque em **Abrir hub**. Arraste o cabeçalho para mover o painel. O botão **A** abre e oculta o mesmo painel. A interface usa largura base de 760 px, escala de 65% e rolagem nas telas menores.

## Capítulos e configuração

- **Cap. 2 → Entrar + OP** prepara a próxima partida. **Ciclo completo** também retorna ao lobby e repete. O OP é retomado quando a partida e o personagem carregam.
- **Configurar** reúne tamanho da equipe, fila só de amigos, opções de cenas, repetição e melhorias do lobby. O controle da cena final depende da confirmação do jogo. O registro anterior confirmou o retorno ao lobby e a retomada do OP, mas o jogo não confirmou que cancelou a cena final.
- Os Capítulos I e III ficam marcados como **Em breve**.

## Caixas de abóboras

1. Abra **Caixas** e arraste o seletor de **1 a 10**. O painel mostra o saldo e o custo total. Uma caixa custa **80** abóboras. Dez custam **800**.
2. Ative **Auto Caixas** e inicie o ciclo. Com saldo suficiente, o lobby abre o lote antes de entrar na fila. Enquanto junta o saldo, o ciclo segue para o Capítulo II.
3. Use **Abrir lote** para testar sem entrar na fila. Cada caixa só entra no histórico quando o jogo informa o débito de 80 e o resultado. Se a confirmação falhar, o lote para. Nesse caso, use **Cap. 2 → Copiar log do lobby**.

## Classes e histórico

- **Classes** tem uma faixa rolável de cartões e destaca um alvo por vez. Os cartões mostram os ícones disponíveis no jogo. **Girar até o alvo** usa os giros gratuitos e para ao confirmar a classe escolhida.
- **Histórico** mostra rodadas concluídas, abóboras, gemas, melhorias, caixas, giros e as classes obtidas. Ele começa na v0.25 e é salvo por conta no dispositivo quando o executor permite gravar arquivos. A aba também permite copiar o histórico e o diagnóstico da última partida.

O painel segue as referências do Roblox para [animações de interface](https://create.roblox.com/docs/ui/animation) e [áreas com rolagem](https://github.com/Roblox/creator-docs/blob/main/content/en-us/ui/scrolling-frames.md).

## Publicar e testar

As 20 suítes de Luau e os quatro testes do serviço de keys passaram. O novo lobby e a abertura em lote ainda precisam ser testados no Delta. Execute **PUBLICAR_V025.cmd** no Windows. Use o loader quando aparecer **PUBLICADO E VERIFICADO**.
