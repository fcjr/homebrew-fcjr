cask "ventoy2disk-cli" do
  version "0.1.3"
  sha256 "3c9cc13f782730ccc30a62bb2c867fb6e8bfcdaa4bfbc9660030c5602723231a"

  url "https://github.com/fcjr/ventoy-mac/releases/download/v#{version}/ventoy2disk-#{version}-macos.tar.gz"
  name "ventoy2disk"
  desc "Install Ventoy on a USB drive from the command-line"
  homepage "https://github.com/fcjr/ventoy-mac"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "ventoy2disk"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/ventoy2disk"]
  end

  zap trash: "~/Library/Caches/com.leftshift.ventoy"

  caveats <<~EOS
    Writing to a raw disk device requires root:
      sudo ventoy2disk -i /dev/diskN
  EOS
end
