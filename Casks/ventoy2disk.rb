cask "ventoy2disk" do
  version "0.1.3"
  sha256 "001c846b112b506ad0ca5e4adccb2ce223617862b839a152ddd1c3ca3bbe0fdd"

  url "https://github.com/fcjr/ventoy-mac/releases/download/v#{version}/Ventoy2Disk-#{version}.zip"
  name "Ventoy2Disk"
  desc "Install Ventoy on a USB drive"
  homepage "https://github.com/fcjr/ventoy-mac"

  depends_on macos: :sonoma

  app "Ventoy2Disk.app"

  zap trash: [
    "~/Library/Caches/com.leftshift.ventoy",
    "~/Library/Preferences/com.leftshift.ventoy.app.plist",
  ]
end
