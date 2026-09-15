cask "gud-display" do
  version "0.2.1"
  sha256 "a7bdd8bd5e9e6ad41359707a5f0c3c992db0476636735f22ac8c344892ce53fb"

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
