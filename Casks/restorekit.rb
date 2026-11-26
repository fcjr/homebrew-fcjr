# Template for the RestoreKit app cask. release-app.yml fills in the version and
# sha256 from the built .dmg and pushes the result to fcjr/homebrew-fcjr.
cask "restorekit" do
  version "0.7.0"
  sha256 "209ccba2e1209e810cc387b09faa4e4f3dc35acd6677f7252ba41fbb49904296"

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
