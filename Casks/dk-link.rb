# Template for the DK Link cask. release.yml fills in the version and sha256
# from the notarized .dmg and pushes the result to fcjr/homebrew-fcjr.
cask "dk-link" do
  version "0.1.1"
  sha256 "28a93c148f442f110c83a1681853873ef6efab79db8d118faa318535adbad1c4"

  url "https://github.com/fcjr/dk-link/releases/download/v#{version}/DK-Link-#{version}.dmg"
  name "DK Link"
  desc "Azure Kinect DK for macOS, TouchDesigner and Syphon"
  homepage "https://github.com/fcjr/dk-link"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  auto_updates true

  app "DK Link.app"
  binary "#{appdir}/DK Link.app/Contents/MacOS/dklink"

  uninstall quit: "com.leftshift.dklink"

  zap trash: [
    "~/Library/Application Support/DK Link",
    "~/Library/Application Support/Derivative/TouchDesigner099/Plugins/DK Link",
    "~/Library/Caches/com.leftshift.dklink",
    "~/Library/HTTPStorages/com.leftshift.dklink",
    "~/Library/Preferences/com.leftshift.dklink.plist",
  ]
end
