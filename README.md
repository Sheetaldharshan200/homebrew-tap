# Exasol Studio — install from the command line

A Homebrew **tap** (macOS) and Scoop **bucket** (Windows) for Exasol Studio.

## macOS

```sh
brew tap sheetaldharshan200/tap https://github.com/Sheetaldharshan200/homebrew-tap
brew install --cask exasol-studio
```

## Windows

```powershell
scoop bucket add exasol https://github.com/Sheetaldharshan200/homebrew-tap
scoop install exasol-studio
```

Upgrade: `brew upgrade --cask exasol-studio` · `scoop update exasol-studio`
Remove:  `brew uninstall --cask exasol-studio` · `scoop uninstall exasol-studio`

### Don't have brew / scoop?

- **Homebrew:** `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- **Scoop:** `irm get.scoop.sh | iex`
- Or just download the app directly from
  [Releases](https://github.com/Sheetaldharshan200/Exasol-studio/releases/latest) — no tooling needed.

> Demo build: not yet code-signed / notarized. The macOS cask strips the
> download quarantine flag so it launches cleanly; on Windows, SmartScreen may
> warn on first run (**More info → Run anyway**).
