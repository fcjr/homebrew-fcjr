# Template for the Grumble cask. release.yml fills in the version and sha256
# from the built .dmg and pushes the result to fcjr/homebrew-fcjr.
cask "grumble" do
  version "0.1.6"
  sha256 "731453a63724e44f4544c4132b86ec49e81e9d66f5647d1bfa4fa77d992b4185"

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
