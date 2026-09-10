# homebrew-tap

Homebrew casks for [Aaron Peabody](https://aaronpeabody.dev)'s Mac apps. Every
app here ships as a dmg signed and notarized by Apple, so nothing is compiled on
your machine and nothing trips Gatekeeper.

## Redline

A floating vitals pill for Apple Silicon Macs: CPU, GPU, memory, die
temperature, and a warning the moment macOS reports thermal pressure.
[Source and screenshots](https://github.com/apeabody007/redline).

```
brew trust apeabody007/tap
brew install --cask apeabody007/tap/redline
```

Homebrew 6 refuses to load a cask from a tap you have not trusted, which is what
the first line is for. If you are on an older Homebrew that has no `brew trust`,
skip it and run the install on its own.

Requires macOS 14 or later on Apple Silicon. If you already installed Redline by
hand, either drag the old copy to the trash first or add `--force`, since
Homebrew will not overwrite an app it did not put there.

To update, uninstall, or remove it along with its preferences:

```
brew upgrade --cask apeabody007/tap/redline
brew uninstall --cask apeabody007/tap/redline
brew uninstall --zap --cask apeabody007/tap/redline
```
