# homebrew-tap

Homebrew casks for [Aaron Peabody](https://aaronpeabody.dev)'s Mac apps. Every
app here ships as a dmg signed and notarized by Apple, so nothing is compiled on
your machine and nothing trips Gatekeeper.

Homebrew 6 refuses to load a cask from a tap you have not trusted, so trust this
one first. Older Homebrew has no `brew trust` and does not need it.

```
brew trust apeabody007/tap
```

## Redline

A floating vitals pill for Apple Silicon Macs: CPU, GPU, memory, die
temperature, and a warning the moment macOS reports thermal pressure.
[Source and screenshots](https://github.com/apeabody007/redline).

```
brew install --cask apeabody007/tap/redline
```

Requires macOS 14 or later on Apple Silicon.

## TimeTurner

A menu bar hourglass drawn in keyboard characters. Real falling sand drains it
over the clock hour, it flips itself at :00, and pomodoro runs on the clock grid
with no start button.
[Source and screenshots](https://github.com/apeabody007/timeturner).

```
brew install --cask apeabody007/tap/timeturner
```

Requires macOS 13 or later on Apple Silicon.

## Updating and removing

Either cask name works in place of `redline`:

```
brew upgrade --cask apeabody007/tap/redline
brew uninstall --cask apeabody007/tap/redline
brew uninstall --zap --cask apeabody007/tap/redline
```

If you already installed one of these apps by hand, drag the old copy to the
trash before installing, or add `--force`. Homebrew will not overwrite an app it
did not put there.
