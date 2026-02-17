cask "local-translate" do
  version "0.1.13"

  url "https://github.com/fcjr/local-translate/releases/download/v#{version}/Local.Translate_#{version}_aarch64.dmg"
  sha256 "20429ef48461412bc67cb30266b1220893368eae9c29e576048e3799485140dc"

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
