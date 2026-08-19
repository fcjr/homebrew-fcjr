# typed: strict
# frozen_string_literal: true

# Template for the Grumble cask. release.yml fills in the version and sha256
# from the built .dmg and pushes the result to fcjr/homebrew-fcjr.
cask "grumble" do
  version "0.1.11"
  sha256 "dca52b4f02cf307a54e2897b5333f381fd9d17a49d890458a759d90b045fae2f"

  url "https://github.com/fcjr/grumble/releases/download/v#{version}/Grumble-#{version}.dmg"
  name "Grumble"
  desc "Local, on-device dictation"
  homepage "https://grumble.computer/"

  auto_updates true
  depends_on macos: :sonoma

  app "Grumble.app"

  zap trash: [
    "~/Library/Application Support/FluidAudio",
    "~/Library/Caches/com.leftshift.grumble",
    "~/Library/HTTPStorages/com.leftshift.grumble",
    "~/Library/Preferences/com.leftshift.grumble.plist",
  ]
end
