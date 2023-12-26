# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aiac < Formula
  desc "Artificial Intelligence Infrastructure-as-Code Generator"
  homepage "https://github.com/gofireflyio/aiac"
  version "4.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gofireflyio/aiac/releases/download/v4.0.0/aiac_4.0.0_macOS-ARM64.tar.gz"
      sha256 "c4f1ef5d33e971714ac0764f8330eaf29f9f07e7d7fb986c9f03311765cd0044"

      def install
        bin.install "aiac"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gofireflyio/aiac/releases/download/v4.0.0/aiac_4.0.0_macOS-64bit.tar.gz"
      sha256 "f2bae50beb750df1c3232edb63b633970b45efb750b3bbb6fb299b36e672c9f6"

      def install
        bin.install "aiac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gofireflyio/aiac/releases/download/v4.0.0/aiac_4.0.0_Linux-64bit.tar.gz"
      sha256 "91eafd615d36389f55427c5bfb48cb01c68b3dff4911e81aaec188e51336b35c"

      def install
        bin.install "aiac"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gofireflyio/aiac/releases/download/v4.0.0/aiac_4.0.0_Linux-ARM64.tar.gz"
      sha256 "43d3bffe6c4cd24597d1c5ead6dcbb12d0e7c7c62f4443d2373697545f3e32f9"

      def install
        bin.install "aiac"
      end
    end
  end

  test do
    system "#{bin}/aiac", "--help"
  end
end
