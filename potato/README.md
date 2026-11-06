# AnonHub · Peel THE Potato

O AnonHub detecta o jogo e abre o módulo do Capítulo II. No lobby, **Configurar → Capítulos** abre o seletor da fila. Para mudar o idioma, use **Idioma** no lobby ou **Ajustes → Conta → Idioma** durante a partida.

- **Caixas** aciona **Pular** durante a abertura assim que o botão fica disponível, inclusive em um lote de uma só caixa. O próximo pedido espera a saída da animação e a confirmação do débito e da recompensa.
- **Classes** aguarda o botão ficar pronto antes de cada giro. A repetição continua quando um giro debitado devolve a mesma classe. Ela para no alvo escolhido, quando falta saldo ou se o jogo deixa de confirmar uma tentativa.
Abra o hub pelo loader universal.

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonymosScripts/AnonHub/main/loader.lua"))()
```
