# Template for the RestoreKit app cask. release-app.yml fills in the version and
# sha256 from the built .dmg and pushes the result to fcjr/homebrew-fcjr.
cask "restorekit" do
  version "0.1.6"
  sha256 "ecf7c91023944be46c8600d680234a611a104c827b217a677e0788c0aafe492e"

  url "https://github.com/fcjr/restorekit/releases/download/v#{version}/RestoreKit_#{version}_aarch64.dmg"
  name "RestoreKit"
  desc "Reformat and restore Apple Silicon Macs over USB"
  homepage "https://github.com/fcjr/restorekit"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  auto_updates true

  app "RestoreKit.app"

  zap trash: "~/.config/restorekit"
end
