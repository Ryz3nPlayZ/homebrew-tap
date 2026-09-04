# 🍺 Ryz3nPlayZ/tap

Homebrew tap for:

- **[UltraCMD](https://github.com/Ryz3nPlayZ/ultracmd)** — native macOS command launcher & AI workspace
- **[zWork](https://github.com/Ryz3nPlayZ/zWork)** — the desktop AI agent that runs on your schedule and works across your apps

## Install

```bash
brew install Ryz3nPlayZ/tap/ultracmd
brew install Ryz3nPlayZ/tap/zwork
```

Homebrew adds the tap automatically. If you prefer the explicit form:

```bash
brew tap Ryz3nPlayZ/tap
brew trust Ryz3nPlayZ/tap   # required by newer Homebrew for third-party taps
brew install --cask ultracmd
```

## Update

```bash
brew update && brew upgrade --cask ultracmd
```

## Uninstall

```bash
brew uninstall --cask ultracmd
brew untap Ryz3nPlayZ/tap
```
