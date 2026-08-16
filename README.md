# hormē

> ὁρμή — o impulso da alma que precede a ação.

`horme` é um espelho socrático para o terminal. Não é um assistente: ele não conclui, não aconselha, não decide por você. Ele devolve perguntas, aponta padrões e reflete o que você já trouxe — para que o movimento continue sendo seu.

## Filosofia

Inspirado na maiêutica socrática — o método pelo qual Sócrates ajudava outros a "dar à luz" ideias que já existiam neles, sem nunca as entregar prontas.

`horme` segue três regras fixas:

1. **Nunca conclui.** Sem conselhos, sem resumos interpretativos, sem "eu acho que você quis dizer X".
2. **Só devolve perguntas ou observações de padrão.** ("O que te fez pensar nisso?", "essa é a terceira vez essa semana que você escreve sobre X".)
3. **O processo pertence a você.** Notas geradas a partir de uma sessão preservam seus próprios trechos, literalmente — não uma síntese da IA.

O nome carrega o impulso, não o resultado. Esse "resultado" — o novo fôlego depois do movimento — tem nome próprio, guardado para outro momento do projeto: *pneuma* (πνεῦμα), o sopro.

## Como funciona

`horme` conecta a qualquer fonte de texto que você já tem — arquivos, stdin, clipboard — ou permite uma sessão de conversa livre direto no terminal. Você escolhe o provedor de IA: nuvem (Anthropic, OpenAI) ou local (Ollama), sem depender de nenhum serviço específico.

```
Source (arquivo, stdin, clipboard, sessão livre)
        ↓
Reflection Engine (monta contexto, consulta histórico)
        ↓
Provider (cloud ou local)
        ↓
Guardrail (garante que a resposta é pergunta, não conclusão)
        ↓
TUI (exibe a reflexão, registra a sessão)
```

## Status

🚧 Em desenvolvimento inicial. Estrutura do projeto e primeiras interfaces (`Source`, `Provider`) sendo construídas.

## Stack

- [Go](https://go.dev/)
- [Bubble Tea](https://github.com/charmbracelet/bubbletea) — TUI
- [SQLite](https://modernc.org/sqlite) — persistência local
- Providers plugáveis: Anthropic, OpenAI, Ollama

## Desenvolvimento

```bash
go run ./cmd/horme    # ou: make run
make test
make lint
```

## Licença

[MIT](LICENSE)