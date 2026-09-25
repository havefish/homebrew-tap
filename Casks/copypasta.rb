cask "copypasta" do
  version "1.0.0"
  sha256 "8f205c7ee58d0e66adc8c8976ccab55d6235123edd885e8d7ff875319f7ed693"

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
