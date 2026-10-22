# PentagonToy Homebrew tap

Install [Baker](https://github.com/PentagonToy/Baker), a local capture and OCR app for Apple Silicon:

```sh
brew install --cask pentagontoy/tap/baker
```

Requires Homebrew, Apple Silicon and macOS 26.0 or later. Optional PDF conversion requires macOS 26.2 or later and a one-time engine download. The cask uses the same DMG and SHA-256 as the [Baker release](https://github.com/PentagonToy/Baker/releases/latest).

Baker is self-signed and not notarised. Follow the [first-launch guidance](https://pentagontoy.github.io/Baker/help/troubleshooting.html) if macOS blocks opening it. This tap does not remove quarantine or change privacy permissions.

## remile.

Install [remile.](https://github.com/PentagonToy/remile), a local document workspace for Markdown, PDF search, LaTeX and Overleaf:

```sh
brew install --cask PentagonToy/tap/remile
```

Requires Apple Silicon and macOS 14 or later. The cask also installs the bundled `remile` CLI. LaTeX requires a separate TeX installation. Optional Apple Intelligence needs macOS 26 or later on an eligible Mac.

remile. 0.1.2 is ad hoc signed and is not notarised by Apple. Read its [installation requirements](https://github.com/PentagonToy/remile#install) before the first launch. This cask does not remove quarantine or change security settings. Its version and checksum refer to the [0.1.2 release](https://github.com/PentagonToy/remile/releases/tag/v0.1.2).

```sh
brew upgrade --cask remile
brew uninstall --cask remile
```

Quit remile. before upgrading. Removal keeps documents and preferences.

## Update or remove Baker

```sh
brew update
brew upgrade --cask baker
brew uninstall --cask baker
```

Removal keeps captures, models and preferences. Quit Baker before replacing or removing its app. If the same release is already in Applications, `brew install --cask --adopt pentagontoy/tap/baker` lets Homebrew adopt an identical copy; a different copy must be moved aside first.

This is a third-party tap maintained by the apps’ developer, separate from the official Homebrew cask collection. Copyright © 2026 PentagonToy. The tap source is AGPL-3.0-only. Baker, remile. and bundled components retain their documented licences.
