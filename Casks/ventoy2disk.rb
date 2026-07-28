cask "ventoy2disk" do
  version "0.1.1"
  sha256 "3b164dfc09a1dd7c58bd0e034f97456ddc7719d40b33ce06ec06d36c54be7752"

  url "https://github.com/fcjr/ventoy-mac/releases/download/v#{version}/Ventoy2Disk-#{version}.zip"
  name "Ventoy2Disk"
  desc "Install Ventoy on a USB drive"
  homepage "https://github.com/fcjr/ventoy-mac"

  depends_on macos: ">= :sonoma"

  app "Ventoy2Disk.app"

  zap trash: [
    "~/Library/Caches/com.leftshift.ventoy",
    "~/Library/Preferences/com.leftshift.ventoy.app.plist",
  ]
end
