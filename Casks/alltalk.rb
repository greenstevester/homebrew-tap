cask "alltalk" do
  version "0.1.1"
  sha256 "debae22f7ea0071a298b9340ca6f75af65a1ac2f0fec2cd01681124d8012d77e"

  url "https://github.com/greenstevester/alltalk/releases/download/v#{version}/AllTalk-#{version}.zip"
  name "AllTalk"
  desc "Push-to-talk dictation for macOS that runs entirely on your own machine"
  homepage "https://github.com/greenstevester/alltalk"

  depends_on macos: ">= :ventura"

  app "AllTalk.app"

  caveats <<~EOS
    AllTalk drives a local llama.cpp server (which it starts and stops for you). Install
    the server and download the Voxtral model first:

      brew install llama.cpp

    See https://github.com/greenstevester/alltalk for the model download.
  EOS
end
