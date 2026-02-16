cask "local-translate" do
  version "0.1.5"

  url "https://github.com/fcjr/local-translate/releases/download/app-v#{version}/Local.Translate_#{version}_aarch64.dmg"
  sha256 "df9daa2da8c667eb75754e1ab6584d54e8c688b95f077f7b3560cbac8f8301fb"

  name "Local Translate"
  desc "Privacy-first, offline desktop translation app"
  homepage "https://github.com/fcjr/local-translate"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Local Translate.app"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^app[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  zap trash: [
    "~/Library/Application Support/com.leftshift.local-translate.app",
    "~/.cache/local-translate",
  ]
end
