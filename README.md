# Exasol Studio — install from the command line

One command each — no separate `brew tap` / `scoop bucket add` step.

## macOS (Homebrew)

```sh
brew install --cask sheetaldharshan200/tap/exasol-studio
```

The fully-qualified name auto-adds this tap and installs, so `brew upgrade` works:

```sh
brew upgrade --cask exasol-studio      # update
brew uninstall --cask exasol-studio    # remove (add --zap to delete app data)
```

## Windows (Scoop)

```powershell
scoop install https://raw.githubusercontent.com/Sheetaldharshan200/homebrew-tap/HEAD/bucket/exasol-studio.json
scoop update exasol-studio             # update
scoop uninstall exasol-studio          # remove
```

### Don't have brew / scoop?

- **Homebrew:** `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- **Scoop:** `irm get.scoop.sh | iex`
- Or download the app directly from
  [Releases](https://github.com/Sheetaldharshan200/Exasol-studio/releases/latest) — no tooling needed.

> Demo build: not code-signed / notarized. The macOS cask strips the download
> quarantine flag so it launches cleanly; on Windows, SmartScreen may warn on
> first run (**More info → Run anyway**).
