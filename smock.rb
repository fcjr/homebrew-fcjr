# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Smock < Formula
  desc "Smock Image Editor"
  homepage "https://www.leftshift.com"
  version "0.0.3"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fcjr/smock/releases/download/v0.0.3/smock_0.0.3_macOS_x86_64.tar.gz"
      sha256 "7d05b6d1a1dbcb1ea4751d9fdbbc3918fc868969b881d5959002083b5c7835be"
    end
    if Hardware::CPU.arm?
      url "https://github.com/fcjr/smock/releases/download/v0.0.3/smock_0.0.3_macOS_arm64.tar.gz"
      sha256 "502983051f741c12f7928879055cf5744a22011f2988a437b796516a2f179321"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/fcjr/smock/releases/download/v0.0.3/smock_0.0.3_linux_x86_64.tar.gz"
      sha256 "056d41a566d20a193daa355f016778c573965fdec6b99d9d11c23242f5419c91"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fcjr/smock/releases/download/v0.0.3/smock_0.0.3_linux_arm64.tar.gz"
      sha256 "d3204b7b72c1b7e08de1d0d55a96209066687665f2b90191131ee7e1ef67c6ac"
    end
  end

  def install
    bin.install "smock"
  end
end
