# PentagonToy Homebrew tap

Install [Baker](https://github.com/PentagonToy/Baker), a local capture and OCR app for Apple Silicon:

```sh
brew install --cask pentagontoy/tap/baker
```

Requires Homebrew, Apple Silicon and macOS 26.0 or later. Optional PDF conversion requires macOS 26.2 or later and a one-time engine download. The cask uses the same DMG and SHA-256 as the [Baker release](https://github.com/PentagonToy/Baker/releases/latest).

Baker is ad-hoc signed and not notarised. Follow the [first-launch guidance](https://pentagontoy.github.io/Baker/help/troubleshooting.html) if macOS blocks opening it. This tap does not remove quarantine or change privacy permissions.

## Update or remove

```sh
brew update
brew upgrade --cask baker
brew uninstall --cask baker
```

Removal keeps captures, models and preferences. Quit Baker before replacing or removing its app. If the same release is already in Applications, `brew install --cask --adopt pentagontoy/tap/baker` lets Homebrew adopt an identical copy; a different copy must be moved aside first.

This is a third-party tap maintained by Baker’s developer, separate from the official Homebrew cask collection. Copyright © 2026 PentagonToy. The tap source is AGPL-3.0-only; Baker and bundled components retain their documented licences.
