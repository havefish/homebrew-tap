cask "copypasta" do
  version "1.0.0"
  sha256 "fe1ffe78f3a5b4a32a776bccaa26c2f6e6d1529b745028757c5163470cedba47"

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
