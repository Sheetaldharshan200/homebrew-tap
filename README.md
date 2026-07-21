# Exasol Studio — Homebrew Tap

Install the desktop app from the command line:

```sh
brew tap sheetaldharshan200/tap https://github.com/Sheetaldharshan200/homebrew-tap
brew install --cask exasol-studio
```

Upgrade later with `brew upgrade --cask exasol-studio`, remove with
`brew uninstall --cask exasol-studio` (add `--zap` to also delete app data).

> Demo build: not yet Apple-notarized, so the cask strips the download
> quarantine flag on install. A notarized build will remove that step.
