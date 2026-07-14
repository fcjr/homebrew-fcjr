# Template for the RestoreKit app cask. release-app.yml fills in the version and
# sha256 from the built .dmg and pushes the result to fcjr/homebrew-fcjr.
cask "restorekit" do
  version "0.5.4"
  sha256 "b478f8d755972de4ffeddfbdf4935762a02f5b2a9bf727023b0742d04c8aaec5"

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
