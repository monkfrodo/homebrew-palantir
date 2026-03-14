# Homebrew Palantir

## O que e

Homebrew tap com a formula de instalacao do Palantir — app de live wallpapers nativos para macOS. Permite instalar o Palantir com um simples `brew install palantir`.

## Stack

- **Linguagem:** Ruby (formula Homebrew)
- **Ecossistema:** Homebrew (gerenciador de pacotes macOS)

## Como usar

```bash
# Instalar
brew tap monkfrodo/palantir
brew install palantir

# Atualizar
brew upgrade palantir

# Desinstalar
brew uninstall palantir
```

## Estrutura de Arquivos

```
homebrew-palantir/
├── Formula/
│   └── palantir.rb     # Formula Homebrew:
│                       # - desc: "Live wallpapers for macOS"
│                       # - url: repo palantir, tag v1.0
│                       # - depends_on :macos
│                       # - install: copia install.sh, uninstall.sh, src/, screensaver/
│                       # - post_install: executa install.sh automaticamente
│                       # - caveats: mostra instrucoes de uso
├── README.md           # Documentacao do tap
└── CLAUDE.md           # Este arquivo
```

## Regras de Desenvolvimento

### FAZER
- Atualizar a tag na formula quando houver nova versao do Palantir
- Testar `brew install` localmente antes de push
- Commits em ingles, conventional commits

### NAO FAZER
- Nunca incluir `Co-Authored-By` nos commits
- Nunca mudar o URL do repo sem atualizar a tag correspondente
- Nunca remover o `post_install` — e o que compila o app automaticamente

## Contexto

Este repo existe exclusivamente para que usuarios possam instalar o Palantir via Homebrew. O fluxo completo e:

1. Usuario roda `brew tap monkfrodo/palantir`
2. Homebrew clona este repo para `$(brew --prefix)/Library/Taps/monkfrodo/homebrew-palantir`
3. Usuario roda `brew install palantir`
4. Homebrew leia `Formula/palantir.rb`, clona o repo principal (tag v1.0)
5. `install` copia arquivos para o prefix do Homebrew
6. `post_install` executa `install.sh` que compila, baixa wallpapers e configura auto-start

### Quando atualizar
- Quando o repo `palantir` tiver uma nova release, criar nova tag la e atualizar `palantir.rb` com a nova tag.

### Repositorios relacionados
- **palantir** (`~/projetos/palantir`) — app principal, codigo-fonte
- **live-wallpaper** (`~/projetos/live-wallpaper`) — versao de dev

## Arquivos Importantes

| Arquivo | Descricao |
|---------|-----------|
| `Formula/palantir.rb` | Formula Homebrew — unico arquivo funcional do repo |

## Git

- **Branch:** main
- **Commits:** conventional commits em ingles
