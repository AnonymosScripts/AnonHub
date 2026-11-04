# Evolvy / Anonymous 0.8.0 — capitulo 2
Chave local: Anonymous. PlaceId 116701845804918.

Prioridades: depois de adquirir pa, nenhuma melhoria adicional da mao e comprada. WalkSpeed e excluido em todos os modos. A primeira faca comprada libera PotatoWorth ate o nivel inicial configurado (padrao 3). A ultima faca libera niveis adicionais. Dinamite, pa e suas melhorias recebem prioridade; sorte de gemas e priorizada sobre melhorias comuns. Compras continuam respeitando precos conhecidos, saldo e reserva.

Limpar antes de cortar: somente quando GetMaxLevel e os niveis atuais confirmam pa e dinamite no maximo, o ciclo deixa de entrar na mesa enquanto GetRemovedFraction indicar batatas restantes. Continua entregando conforme a capacidade real. Depois retoma o corte. Se o cliente nao permitir confirmar o maximo, o ciclo normal permanece.

Drone: ative Oferecer compra do drone a cada partida. O hub pergunta Deseja mesmo comprar o drone? Preco: 80 gemas. A resposta vale para a partida identificada por RunStartTime. A compra so segue se a oferta real visivel indicar 80 gemas, apresentar botao de compra e a propriedade HasDrone confirmar o resultado. Oferta sem moeda verificavel nao e comprada; Robux sao excluidos. O suporte a oferta real ainda precisa de teste no jogo. Melhorias de drone so sao liberadas apos propriedade confirmada.

Camera: Forcar terceira pessoa permite zoom entre 6 studs e a distancia maxima configurada. Apontar automaticamente para a valvula alinha a visao durante o resfriamento e restaura a camera ao terminar ou cancelar. Isto resolve a dependencia de enquadramento pelo proprio hub; nao foi confirmado no Delta pelo agente. Desative a opcao se preferir controlar a camera manualmente.

A recuperacao de guias e as verificacoes de compras anteriores foram preservadas. Chaves disponiveis recebem prioridade na selecao; nao foi implementado nem comprovado aparecimento antecipado de chave, bypass de cooldown ou explosoes ilimitadas. Tentativas de dinamite continuam configuraveis, aguardam confirmacao e recuam quando recusadas.

Validacao: compilacao oficial Luau 0.745, 11 suites locais, 63 verificacoes de coordenacao e 45 de layout, incluindo politicas de gastos e transicao para limpeza. Sem teste real no telefone, medicao de FPS ou garantia de velocidade de conclusao.
