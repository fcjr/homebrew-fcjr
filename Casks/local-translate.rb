cask "local-translate" do
  version "0.1.11"

  url "https://github.com/fcjr/local-translate/releases/download/v#{version}/Local.Translate_#{version}_aarch64.dmg"
  sha256 "6c5b97ade935d81a53276792bfb4f9b28b4e905df2160e344147846cba8d48d0"

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
