# Template for the Grumble cask. release.yml fills in the version and sha256
# from the built .dmg and pushes the result to fcjr/homebrew-fcjr.
cask "grumble" do
  version "0.1.9"
  sha256 "8e7cdda463e657238693c4012f01a831f560cad5c0458bd1d1335822a824a0fc"

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
