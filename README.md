# 🍺 Ryz3nPlayZ/tap

Homebrew tap for [zWork](https://github.com/Ryz3nPlayZ/zWork) — the desktop AI agent
that runs on your schedule and works across your apps.

## Install

```bash
brew install Ryz3nPlayZ/tap/zwork
```

That's it — Homebrew adds the tap automatically. If you prefer the explicit form:

```bash
brew tap Ryz3nPlayZ/tap
brew install zwork
```

## Update

```bash
brew upgrade zwork
```

The cask is bumped automatically within a day of each
[zWork release](https://github.com/Ryz3nPlayZ/zWork/releases) (or immediately via
the [bump workflow](./actions/workflows/bump-cask.yml)).

## Uninstall

```bash
brew uninstall --zap zwork   # also removes app data
brew untap Ryz3nPlayZ/tap
```

> `--zap` removes settings, chats, and local state. It cannot remove the
> Keychain-stored API key or macOS privacy (TCC) grants — see the app's docs.
