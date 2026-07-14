# Template for the RestoreKit app cask. release-app.yml fills in the version and
# sha256 from the built .dmg and pushes the result to fcjr/homebrew-fcjr.
cask "restorekit" do
  version "0.5.6"
  sha256 "245e973f8390464702bcc84ce5f01a56d607fcdb35a45075a095eb5aa7f10ac5"

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
