cask "gud-display" do
  version "0.1.3"
  sha256 "01d75bce8071b214a5a3e4ad729d1a040e5575d454e6548d253c3ff9ef5e5448"

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
