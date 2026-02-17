cask "local-translate" do
  version "0.1.16"

  url "https://github.com/fcjr/local-translate/releases/download/v#{version}/Local.Translate_#{version}_aarch64.dmg"
  sha256 "6c4075092879623379f8328987be0c2533801242e8caeb960b329cd93bab7b99"

  name "Local Translate"
  desc "Privacy-first, offline desktop translation app"
  homepage "https://github.com/fcjr/local-translate"

  auto_updates true

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
