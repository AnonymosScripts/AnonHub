# AnonHub 0.28.4

Use a key local **Anonymous**. No lobby, **Configurar → Capítulos** abre o seletor da fila.

- **Caixas** aciona **Pular** durante a abertura assim que o botão fica disponível, inclusive em um lote de uma só caixa. O próximo pedido espera a saída da animação e a confirmação do débito e da recompensa.
- **Classes** aguarda o botão ficar pronto antes de cada giro. A repetição continua quando um giro debitado devolve a mesma classe. Ela para no alvo escolhido, quando falta saldo ou se o jogo deixa de confirmar uma tentativa.
- **Configurar → Copiar log do lobby** inclui a rota identificada e o resultado da tentativa.

Publique este commit na `main` antes de renomear o repositório para `AnonHub`. O loader e a reconexão tentam o endereço novo primeiro e usam o endereço anterior se ele ainda for necessário.

Depois da renomeação, use o endereço novo no Delta.

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonymosScripts/AnonHub/main/potato/loader.lua"))()
```
