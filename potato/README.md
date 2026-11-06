# Evolvy 0.21 · Capítulo II

PlaceId `116701845804918`. Key local **Anonymous**. Na tela de acesso, **Abrir hub** abre o painel com as rotinas pausadas. **Validar e iniciar OP** começa a partida assim que os componentes estiverem prontos. O rodapé mantém o avatar, o nome, a key e a validade. A integração com um provedor de licenças fica para a próxima etapa.

## Durante o teste

- Consulte **Início → Ver melhorias** ou **Compras → Melhorias em tempo real**. A lista lê os níveis das ferramentas do jogo. O hub não precisa abrir a aba de melhorias do Roblox para exibi-los.
- **Retentar mesa e venda mais cedo**, ligado no OP, troca o acionamento mais cedo quando um prompt instantâneo demora a responder. Venda e entrada na mesa continuam dependendo da confirmação do jogo. Em caso de regressão, desligue o ajuste para voltar à espera anterior.
- Os perfis Solo, Com o hub e Grupo misto continuam no Início. A divisão de papéis é feita em cada conta. Para quatro, use um líder OP, um coletor e dois cortadores em mesas diferentes.

O usuário mediu **14:07 na v0.20**. O diagnóstico marcou **14:03,7 desde a inicialização do hub até a vitória** e cerca de **6min43s** na limpeza com o sugador no máximo. A versão atual registra `run_timing` com o tempo de preparação, a espera antes de ativar e o tempo entre ativação e vitória. O campo `native_upgrade_menu` mede a abertura da aba do jogo. A duração da aba aberta não representa, por si só, tempo de automação perdido.

## Fim da partida

**Pular cena final** procura um botão nativo visível também nas telas de resultado. Depois da confirmação de fuga, **Liberar câmera após vitória** pode devolver a câmera ao personagem e fazer uma segunda tentativa caso o jogo a tome de volta. O diagnóstico `ending_scene` registra telas, câmera e eventos de conclusão. Devolver a câmera não encerra uma transição controlada pelo servidor. [Documentação da câmera do Roblox](https://create.roblox.com/docs/reference/engine/classes/Camera)

O lobby, a entrada automática em nova partida e a integração da validação ficam para depois deste teste. Compilei o hub com Luau 0.745 e executei 17 suítes locais. O novo tempo e a cena final ainda precisam de uma partida no Delta.

Para publicar, execute **PUBLICAR_V021.cmd** no PowerShell com a conta **AnonymosScripts**. O publicador verifica o commit e imprime o loader.
