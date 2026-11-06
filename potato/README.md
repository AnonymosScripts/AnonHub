# Evolvy 0.20 · Capítulo II

PlaceId `116701845804918`. A key local continua sendo **Anonymous**. O rodapé mostra o avatar, o nome, a key e a validade da conta. Licenças de um provedor usam a validade recebida na validação.

## Perfis de partida

Em **Início → Perfil da partida**, escolha o tipo de grupo e toque em **Iniciar perfil** para aplicar. Escolha o papel em cada conta. A seleção não altera as rotinas até tocar em Iniciar.

| Grupo | Recomendações |
| --- | --- |
| Solo | OP completo, desde as compras até a fuga. |
| Com o hub, 2 contas | Uma no OP e outra cortando e vendendo. |
| Com o hub, 3 contas | Um líder OP, um coletor e um cortador. |
| Com o hub, 4 contas | Um líder OP, um coletor e dois cortadores. Use uma mesa diferente para cada conta que corta. |
| Grupo misto | Corte nativo, venda, caminhada e compra de facas. Compra até dois níveis de velocidade pelo upgrade do jogo. |

O coletor usa o dinheiro das vendas da equipe para melhorar a coleta e entrega em lotes de até 100. Quando o contador nativo indicar montanha vazia, descarrega a bolsa restante. O líder OP também repõe a caixa quando ela estiver com menos de 100 durante a limpeza. Cortadores usam a mesa escolhida e quem encontrar a chave pode acionar a saída. O perfil atribui funções localmente em cada cliente.

## Tempo e final

O usuário registrou **15:07 na v0.19**. O diagnóstico marcou cerca de 6min35s de limpeza contínua com o sugador no máximo e 57 vendas confirmadas. Nesta versão, o OP tenta agrupar de 50 a 150 batatas conforme o valor que falta para a próxima compra e o limite de venda. Se o estoque de corte acabar antes do lote, vende o que já está pronto. Depois que a montanha esvazia, a rotina para de buscar alvos na pilha.

O painel fixa o tempo ao receber a confirmação da fuga. **Ajustes → Pular cena final** usa o botão do jogo quando disponível. Sem botão, **Liberar câmera após vitória** tenta devolver a câmera ao personagem, somente depois de receber a fuga e enquanto a câmera estiver em modo Scriptable. A cena e a transição do servidor podem continuar. O diagnóstico exporta `finish_seconds` e `ending_scene`. [Câmera do Roblox](https://create.roblox.com/docs/reference/engine/classes/Camera)

## Teste e publicação

Compilado com Luau 0.745 e verificado por 17 suítes locais. Teste de grupo, aspecto no celular, câmera final e novo tempo de conclusão dependem de uma partida no Delta. Lobby, reconexão e repetição automática serão trabalhados após esta validação do Capítulo II.

Execute **PUBLICAR_V020.cmd** no PowerShell, autorize com a conta **AnonymosScripts** se solicitado e use o loader quando aparecer **PUBLICADO E VERIFICADO**.
