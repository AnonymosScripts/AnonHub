# Serviço de keys do Evolvy

O Worker expõe `POST /v1/license` com JSON. Ele aceita uma key ou uma sessão assinada, mais o ID de conta informado pelo cliente. As keys são cadastradas pelo hash. Uma key pode ter vencimento ou duração ilimitada, e uma sessão de retomada vence em até uma hora. O Worker consulta o cadastro também na renovação, inclusive para revogação.

## Configuração

1. Execute `node --test worker.test.mjs` com Node 24.
2. Execute `node issue-key.mjs ID_DO_ROBLOX 30` ou use `lifetime` no lugar de `30`. Entregue a key gerada em privado. O comando imprime separadamente o registro pelo hash.
3. Na pasta do Worker, publique com `npx wrangler deploy` na sua conta. Configure os segredos `EVOLVY_LICENSES` com um objeto JSON reunindo os registros e `EVOLVY_SIGNING_KEY` com pelo menos 32 caracteres aleatórios. Use `npx wrangler secret put NOME` para cada um. [Segredos do Cloudflare Workers](https://developers.cloudflare.com/workers/configuration/secrets/)
4. Para apontar o hub ao Worker, defina o endereço antes do loader. Use HTTPS e termine em `/v1/license`.

```lua
getgenv().EvolvyLicenseEndpoint = "https://evolvy-license.SEU-SUBDOMINIO.workers.dev/v1/license"
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonymosScripts/Script-1-Evolvy-Hub/main/potato/loader.lua?v=0.27.0"))()
```

O servidor recebe a key no primeiro acesso. Ao transferir de servidor, o hub usa a sessão assinada e exibe apenas o rótulo mascarado. O ID de conta serve para vincular a licença ao valor enviado pelo cliente. O hub publicado é código cliente, portanto essa validação não protege o código público contra cópia.

Para testar o ciclo do jogo antes de conectar um Worker, use o loader sem o endereço e entre com `Anonymous`. Esse modo é local.
