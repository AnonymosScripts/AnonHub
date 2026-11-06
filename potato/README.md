# Evolvy 0.28.2

Use a key local **Anonymous**. No lobby, **Configurar → Capítulos** abre o seletor da fila.

- **Caixas** aciona **Pular** durante a abertura assim que o botão fica disponível, inclusive em um lote de uma só caixa. O próximo pedido espera a saída da animação e a confirmação do débito e da recompensa.
- **Classes** aguarda o botão ficar pronto antes de cada giro. A repetição continua quando um giro debitado devolve a mesma classe. Ela para no alvo escolhido, quando falta saldo ou se o jogo deixa de confirmar uma tentativa.
- **Configurar → Copiar log do lobby** inclui a rota identificada e o resultado da tentativa.

Os testes locais simulam duas caixas com **Pular** aparecendo depois da compra e dois giros, com a mesma classe no primeiro. Os fluxos ainda precisam ser confirmados no Delta. Execute **PUBLICAR_V0282.cmd** e espere **PUBLICADO E VERIFICADO** antes de usar o loader.
