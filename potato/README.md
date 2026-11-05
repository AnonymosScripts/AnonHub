# Evolvy / Anonymous 0.11.1 — auditoria de compras
Chave Anonymous. PlaceId 116701845804918.

A v0.11 nao estava validada no jogo e ainda permitia uma compra inferior quando faltava dinheiro para PotatoWorth. Esta correcao substitui a selecao anterior por uma ordenacao unica antes da fase final: valor de venda, facas, dinamite, drone adquirido, pa e demais melhorias. Uma oferta prioritaria com preco conhecido mas sem saldo permanece como meta; uma faca mais barata nao desvia a reserva. Se faltarem nivel/maximo/preco da melhoria de valor de venda, a meta mostra esse bloqueio e nenhuma compra inferior e feita por suposicao.

Foi adicionado Modules.Resources.Prices. Quando Get(player) retorna a tabela de precos da partida com Upgrades, os precos de Body sao lidos em General e o custo do proximo nivel usa level+1 (nivel base zero). Mantidas as alternativas de custo compartilhado e botao nativo. Nao usa precos Base como se fossem os precos atuais. A leitura dessa assinatura ainda precisa de confirmacao na partida.

O diagnostico agora inclui upgrade_audit, com nivel, maximo, preco e motivo de exclusao. Um maximo lido nao prova que a automacao comprou os niveis: compras so sao confirmadas por aumento posterior do nivel. Niveis que o usuario comprou manualmente sao reconhecidos como estado atual, sem serem atribuidos ao hub.

Mantidas as alteracoes de coleta, troca para pa, inventario replicado e fase final da v0.11. Publicar com PUBLICAR_V0111.cmd. Nao foi executado pelo agente no Delta/iPhone e nao ha garantia de 6–8 minutos ou cooldown zero.

Validacao: compilacao oficial Luau 0.745; 11 suites locais, 67 verificacoes de coordenacao e 45 de layout. Novos casos verificam especificamente que PotatoWorth sem saldo impede compra de faca mais barata, que a ordem permanece mesmo com lista embaralhada e que o custo muda com o nivel no perfil de precos.
