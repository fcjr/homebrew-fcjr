cask "local-translate" do
  version "0.1.9"

  url "https://github.com/fcjr/local-translate/releases/download/v#{version}/Local.Translate_#{version}_aarch64.dmg"
  sha256 "739b12220a4d09e851d8d4ea49d5bc5ca8d7ada8c4149eefde08c00fd520ac68"

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
