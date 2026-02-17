cask "local-translate" do
  version "0.1.10"

  url "https://github.com/fcjr/local-translate/releases/download/v#{version}/Local.Translate_#{version}_aarch64.dmg"
  sha256 "082b68653a8e1412100951e30b1325d5395f322ccc4e1c62b59d655f0bcbb407"

  name "Local Translate"
  desc "Privacy-first, offline desktop translation app"
  homepage "https://github.com/fcjr/local-translate"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Local Translate.app"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  zap trash: [
    "~/Library/Application Support/com.leftshift.local-translate.app",
    "~/.cache/local-translate",
  ]
end
