cask "gud-display" do
  version "0.2.0"
  sha256 "275cdd1facf32b8ef8361157bddfc9f3db1a3e52cc5bab59d54785b6d819f467"

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
