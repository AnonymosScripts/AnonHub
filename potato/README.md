# Evolvy / Anonymous 0.10.0 — finalizacao do capitulo 2
Chave: Anonymous. PlaceId 116701845804918.

Depois de confirmar PickAmount e PickSpeed da dinamite no maximo, o planejamento muda de fase. A reserva de 400 fica desativada independentemente do valor salvo. A fila passa para cortador manual, automatico, melhorias do automatico, P0T4T0-3000 e melhorias do sugador (PickAmount primeiro). Compras dependem de oferta em dinheiro, saldo e estado verificaveis. O manual nao recebe melhorias. Se uma maquina nao expuser oferta BUY em dinheiro, o codigo nao inventa compra ou tenta Robux.

Enquanto faltam equipamentos, o automatico adquirido e abastecido durante a limpeza, permitindo produzir renda sem ficar voltando a mesa. Antes de haver automatico, a mesa ainda pode ser usada exclusivamente para financiar um equipamento que falta. Quando a fila estrategica estiver pronta, gastos gerais e facas deixam de interromper a limpeza. Ao esgotar a montanha, o corte final e retomado.

O sugador adquirido e a primeira escolha em Auto. Em raridade Qualquer, SetUseHeld permanece ligado na coleta, combinado com os pacotes de uso/coleta identificados. Entrega, compras, resfriamento, pausa e fechamento liberam as entradas. Filtros especificos mantem o modo direto para nao coletar uma raridade diferente pela mira nativa.

Lancar dinamite nao bloqueia a coleta por 1,2 segundo aguardando a resposta. O personagem envia o lancamento, restaura a ferramenta de coleta e contabiliza somente DynamiteThrown confirmado. Ha somente um lancamento pendente e recuo quando o servidor nao responde. Nao foi removido um cooldown do servidor; nao ha garantia de explosoes ilimitadas ou de conclusao em 6–8 minutos.

Melhorias exigem maximo conhecido e nivel abaixo dele. Duas recusas sem mudanca de nivel bloqueiam aquela melhoria ate mudar o nivel ou iniciar outra partida. Isso nao declara a melhoria como maximizada; evita repetir a mesma compra indefinidamente. O diagnostico inclui os niveis, maximos e recusas, sem abrir abas para inspeciona-los.

Mantidas a confirmacao de 80 gemas do drone, camera de terceira pessoa e alinhamento da valvula, correcao de desfoque e botao A para abrir/ocultar. Publicar usando PUBLICAR_V010.cmd. O loader passa a usar o parametro v=0.10.0 para reduzir cache antigo.

Validacao: compilacao oficial Luau 0.745; 11 suites locais, 65 verificacoes de coordenacao e 45 de layout. Testes adicionais cobrem limite de repeticoes por nivel e reinicializacao por partida. Sem execucao real no Delta/iPhone pelo agente. Taxas, compra das maquinas e tempo total precisam de verificacao no jogo.
