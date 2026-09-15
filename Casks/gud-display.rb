cask "gud-display" do
  version "0.2.2"
  sha256 "3953190e6cf9d1a073055b74060cb2c77f7b0d602b9394f115038305e57de4e7"

  url "https://github.com/fcjr/gud-display-mac/releases/download/v#{version}/GUD-Display-#{version}.zip"
  name "GUD Display"
  desc "Driver for GUD (Generic USB Display) devices"
  homepage "https://github.com/fcjr/gud-display-mac"

  depends_on macos: ">= :sonoma"

  app "GUD Display.app"

  zap trash: [
    "~/Library/Preferences/com.leftshift.gud.plist",
    "~/Library/Caches/com.leftshift.gud",
  ]
end
