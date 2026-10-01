cask "copypasta" do
  version "1.0.0"
  sha256 "143f98d2b7ab38a5046f26ce7c34dea07d5a93f69da2b5eee873136f164941ce"

  url "https://github.com/havefish/copypasta-releases/releases/download/v#{version}/CopyPasta-macOS-universal.zip"
  name "CopyPasta"
  desc "Modern cross-platform clipboard manager"
  homepage "https://github.com/havefish/copypasta"

  app "CopyPasta.app"

  zap trash: [
    "~/Library/Application Support/CopyPasta",
    "~/Library/Preferences/com.havefish.copypasta.plist",
  ]

  caveats <<~EOS
    If macOS displays an unidentified developer warning on first launch,
    either right-click CopyPasta.app in Finder and choose "Open", or run:
      xattr -d com.apple.quarantine /Applications/CopyPasta.app
  EOS
end
