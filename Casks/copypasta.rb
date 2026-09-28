cask "copypasta" do
  version "1.0.0"
  sha256 "74cf84d687aac1d38682b2163e55fc421a6c9276aeeb13186b88a9cbbff81577"

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
