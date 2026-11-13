# Distribuição local do AnonHub

Os seis arquivos registrados em `release-manifest.json` são artefatos gerados. Não editar esses arquivos para manutenção. Os fontes legíveis ficam fora deste repositório público.

O loader contém os módulos Superpower, Potato e Universal como funções locais. A seleção de idioma, a identificação do jogo e o Panda Auth continuam no fluxo original. A chave de usuário não é incluída no build. Os endpoints dos módulos continuam existindo para compatibilidade, com o marcador de versão esperado pelos loaders anteriores.

## Construir

Requisitos: Node.js, [darklua 0.19.0](https://github.com/seaofvoices/darklua/releases/tag/v0.19.0) e o compilador Luau usado na validação (bytecode 14 / tipos 3). O build recusa outras versões de bytecode até revisar o comparador.

```powershell
node tools/protection/build-protected-release.cjs C:/AnonHub-PrivateSource C:/AnonHub-Release C:/Tools/darklua.exe C:/Tools/luau-compile.exe
```

A pasta de fontes precisa conter `loader.lua`, `superpower/main.lua`, `superpower/module.lua`, `superpower/test.lua`, `potato/chapter2.lua` e `universal/main.lua` legíveis. Fonte e saída precisam ser pastas diferentes. Nunca publique a pasta `.build` da saída: ela contém intermediários legíveis.

O processo normaliza quebras de linha, renomeia variáveis e funções locais pelo AST, compacta o programa e usa escapes numéricos nas strings. Nomes públicos, propriedades e métodos não são renomeados. Não há criptografia ou máquina virtual adicional.

Cada resultado é compilado e comparado com a entrada: instruções e constantes exibidas pelo compilador, além da tabela binária completa de strings. Qualquer diferença interrompe a geração. Os seis resultados só são entregues depois que todas as comparações passam. O manifesto registra SHA-256 e tamanho de cada saída.

O pacote `superpower/test.lua` também recebe o loader completo protegido, mantendo o fluxo autenticado. Após gerar, testar a distribuição no Delta, incluindo idiomas, autenticação, roteamento, perfil, automações e encerramento. Só então publicar os arquivos listados no manifesto. A compilação local não executa o Roblox.

## Limites

Isto dificulta leitura e cópia casual; não impede extração ou engenharia reversa. A aplicação precisa receber o código para executá-lo. Os fontes de commits anteriores, forks, cópias e scripts legados fora dos seis arquivos continuam acessíveis. Este build não reescreve histórico nem altera a visibilidade do repositório.

Checksum SHA-256 do ZIP oficial darklua Windows x86_64 0.19.0 utilizado:

`e099313a768a0628bce861123dff6959f0c7dc49b5c353d9523a144c1fa2124e`
