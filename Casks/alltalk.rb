cask "alltalk" do
  version "0.1.0"
  sha256 "aa6a769b7a46d689d0965d723d1b17d186821a75d145f3c7123852c7a5d7504a"

  url "https://github.com/greenstevester/alltalk/releases/download/v#{version}/AllTalk-#{version}.zip"
  name "AllTalk"
  desc "Push-to-talk dictation for macOS that runs entirely on your own machine"
  homepage "https://github.com/greenstevester/alltalk"

  depends_on macos: ">= :ventura"

  app "AllTalk.app"

  caveats <<~EOS
    AllTalk #{version} is not yet notarized, so macOS Gatekeeper will block it on
    first launch. Allow it with either:

      xattr -dr com.apple.quarantine "/Applications/AllTalk.app"

    or System Settings -> Privacy & Security -> "Open Anyway". You can also skip the
    quarantine entirely by installing with:

      brew install --cask --no-quarantine greenstevester/tap/alltalk

    AllTalk drives a local llama.cpp server (which it starts and stops for you). Install
    the server and download the Voxtral model first:

      brew install llama.cpp

    See https://github.com/greenstevester/alltalk for the model download.
  EOS
end
