cask "ventoy2disk-cli" do
  version "0.1.1"
  sha256 "b2753e84144460e89296e0e8e52955d229e2f93edc915495ded2718800750bc3"

  url "https://github.com/fcjr/ventoy-mac/releases/download/v#{version}/ventoy2disk-#{version}-macos.tar.gz"
  name "ventoy2disk"
  desc "Install Ventoy on a USB drive from the command line"
  homepage "https://github.com/fcjr/ventoy-mac"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "ventoy2disk"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{staged_path}/ventoy2disk"]
  end

  zap trash: "~/Library/Caches/com.leftshift.ventoy"

  caveats <<~EOS
    Writing to a raw disk device requires root:
      sudo ventoy2disk -i /dev/diskN
  EOS
end
