# greenstevester/homebrew-tap

Homebrew tap for [AllTalk](https://github.com/greenstevester/alltalk) and other tools.

## AllTalk

```sh
brew install --cask greenstevester/tap/alltalk
```

AllTalk is not yet notarized, so macOS will block it on first launch. After installing,
run `xattr -dr com.apple.quarantine "/Applications/AllTalk.app"`, or allow it under
System Settings → Privacy & Security → "Open Anyway".
