# Template for the Grumble cask. release.yml fills in the version and sha256
# from the built .dmg and pushes the result to fcjr/homebrew-fcjr.
cask "grumble" do
  version "0.1.8"
  sha256 "756f93873f298476c4e3e29bb77d6305f773e17b72b6b270c989a39eb7805d0c"

  url "https://github.com/fcjr/grumble/releases/download/v#{version}/Grumble-#{version}.dmg"
  name "Grumble"
  desc "Local, on-device dictation"
  homepage "https://grumble.computer"

  depends_on macos: ">= :sonoma"

  auto_updates true

  app "Grumble.app"

  zap trash: [
    "~/Library/Application Support/FluidAudio",
    "~/Library/Caches/com.leftshift.grumble",
    "~/Library/HTTPStorages/com.leftshift.grumble",
    "~/Library/Preferences/com.leftshift.grumble.plist",
  ]
end
