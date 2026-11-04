# Evolvy / Anonymous 0.9.0 — capitulo 2
Chave: Anonymous. PlaceId 116701845804918.

Prioridades: PotatoWorth continua recebendo melhorias enquanto houver niveis e saldo depois da primeira faca adquirida; facas melhores seguem, depois dinamite e drone adquirido. As melhorias acessiveis restantes tambem continuam. Quando uma meta esta cara, outras ofertas acessiveis podem ser compradas. ThrowRange da dinamite e todas as melhorias do cortador manual foram removidas. O maximo da dinamite agora depende somente de PickAmount e PickSpeed.

Auto Progress: Tenho mochila infinita impede a fila de mochilas (nao concede a capacidade no servidor). Manter reserva para cortar usa 400 por padrao depois da ultima faca. A contagem usada e PotatoCrate.PotatoArea.PotatoCount, a caixa que abastece o corte. Coleta e entrega sao limitadas pelo deficit e pela capacidade real. Se ja houver mais batatas na bolsa que o deficit, o prompt nativo pode despejar o excedente; nao ha protocolo confirmado para entregar uma quantidade arbitraria exata.

Quando as duas melhorias da dinamite atingirem o maximo confirmado, a opcao Limpar antes de cortar prioriza a montanha. Com pa adquirida, a selecao automatica usa pa nessa etapa, junto com as tentativas de dinamite. Os intervalos do servidor continuam valendo.

Cortadores: apos maximizar essas melhorias de dinamite, Comprar cortadores busca primeiro o manual e depois o automatico, somente em ofertas BUY com preco em dinheiro verificavel. Se o manual estiver bloqueado e o automatico estiver acessivel, pode seguir para o automatico. Nao compra ofertas LOCKED nem Robux. O manual nao recebe melhorias; o automatico adquirido pode receber. Depois de esgotar a montanha, a entrega tenta abastecer o automatico quando LOAD estiver habilitado e envia o restante para a caixa de corte. O automatico processa em paralelo enquanto o personagem corta na mesa.

Corrigir desfoque zera BlurEffects em Lighting/camera fora do minigame de corte quando os controladores dos menus estao disponiveis, inclusive com menus abertos. E uma opcao visual reversivel; desative se quiser o desfoque original. O botao A alterna abrir/ocultar e continua arrastavel.

Drone: preservada a confirmacao por partida de 80 gemas, com verificacao da oferta real antes da compra. Camera de terceira pessoa, alinhamento na valvula e recuperacao de guias foram preservados. Sem geracao antecipada de chave ou bypass de cooldown comprovado.

Validacao: compilacao oficial Luau 0.745 e 11 suites locais, com 65 verificacoes de coordenacao e 45 de layout. Inclui exclusao de ThrowRange/manual, maximo de dinamite sem ThrowRange e reposicao do estoque de corte. Sem teste pelo agente no Delta/iPhone. A distribuicao real dos cortadores e os menus precisam de validacao na partida.
