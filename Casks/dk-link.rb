# Template for the DK Link cask. release.yml fills in the version and sha256
# from the notarized .dmg and pushes the result to fcjr/homebrew-fcjr.
cask "dk-link" do
  version "0.1.0"
  sha256 "4d45b37dca8724a5f639c87f2e6662c741d334c7c185e469724d81c371f88638"

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
