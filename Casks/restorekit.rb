# Template for the RestoreKit app cask. release-app.yml fills in the version and
# sha256 from the built .dmg and pushes the result to fcjr/homebrew-fcjr.
cask "restorekit" do
  version "0.6.1"
  sha256 "9bfdaeb26aa4330f57b88d9e8b18b141e14eddda970a2dd471b4c3f0bf275217"

  url "https://github.com/fcjr/restorekit/releases/download/v#{version}/RestoreKit_#{version}_aarch64.dmg"
  name "RestoreKit"
  desc "Reformat and restore Apple Silicon Macs over USB"
  homepage "https://github.com/fcjr/restorekit"

  depends_on macos: :ventura
  depends_on arch: :arm64

  auto_updates true

  app "RestoreKit.app"

  zap trash: "~/.config/restorekit"
end
