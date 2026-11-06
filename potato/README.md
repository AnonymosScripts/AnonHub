# Evolvy 0.24 · Lobby, coleções e missões

Use o loader no lobby, informe a key local **Anonymous**, toque em **Abrir hub** e escolha **Iniciar ciclo completo**. A retomada espera a fase esperada e o primeiro personagem da partida. Quando confirma a fuga, o hub salva o diagnóstico antes de voltar ao lobby. Consulte **Última partida** no lobby para copiar esse registro. A retomada automática depende de o Delta aceitar o agendamento de código entre servidores. Se o script não reaparecer, execute o mesmo loader ao chegar para consumir a retomada salva.

## Lobby

O painel abre a 65% com largura base de 760 px e se ajusta a telas menores. Arraste pelo título para mover. As opções de fila e de repetição continuam no mesmo painel.

- **Auto melhoria** verifica as ofertas nativas do lobby e tenta uma melhoria por vez com as gemas disponíveis. Se a interface ainda não carregou os preços ou o saldo, abra as melhorias do jogo uma vez.
- **Caixa do evento** usa o controle nativo identificado para a caixa de abóboras. Se o jogo não expuser esse controle, abra a tela da caixa uma vez. A recompensa vem do resultado do jogo.
- **Classes** aceita uma lista de nomes separados por vírgula. Quando o jogo expõe as classes e chances, o seletor permite adicionar nomes e escolher a mais rara. O giro automático usa apenas giros gratuitos, espera confirmação antes de continuar e para quando a classe ativa corresponde a um dos alvos.
- **Copiar log** inclui as ações da fila e os controles de classes, caixa e melhorias que estavam disponíveis.

## Capítulo II

Em **Compras**, a lista de níveis mostra imagens, tem rolagem e oferece um botão por melhoria. Um toque solicita uma compra. O hub lê o preço, verifica o saldo e aguarda o novo nível do jogo. A compra manual usa o fluxo do hub sem abrir o Tab.

Em **Missões**, escolha uma tarefa detectada no passe ou nas missões comuns. O **Auto Quest** ativa o Auto Progress e prioriza objetivos de coleta, gemas, corte, venda, resfriamento, dinamite ou fuga quando a tarefa for reconhecida. Depois que o progresso do jogo confirma a conclusão, o Auto Progress volta à ordem normal. Objetivos cujo requisito não foi identificado ficam marcados como manuais.

O controle da cena final continua dependendo do controlador do jogo. Devolver a câmera ao personagem pode ocultar a animação local sem encerrar a cena. O novo diagnóstico salvo ajuda a verificar essa diferença no próximo teste.

As 20 suítes de Luau e os quatro testes do serviço de keys passaram. As rotinas novas e a retomada ainda aguardam teste no Delta. Para publicar, execute **PUBLICAR_V024.cmd** e use o loader quando aparecer **PUBLICADO E VERIFICADO**.
