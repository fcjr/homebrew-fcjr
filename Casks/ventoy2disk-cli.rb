cask "ventoy2disk-cli" do
  version "0.1.2"
  sha256 "4d586ae5b1ae495dc3e8e35c46fcdad7d8bba23aa4c4c92d048818d7189c140b"

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
