# Homebrew Palantir

Homebrew tap com a fórmula de instalação do [Palantir](https://github.com/monkfrodo/palantir) — live wallpapers nativos para macOS.

## O que é

Repositório do tipo Homebrew tap que permite instalar o Palantir via:

```bash
brew tap monkfrodo/palantir
brew install palantir
```

## Estrutura

```
Formula/palantir.rb  ← fórmula Homebrew
```

## Como funciona

A fórmula clona o repositório principal do Palantir (tag v1.0), copia os arquivos e executa o `install.sh` automaticamente no post-install.
