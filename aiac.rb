# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aiac < Formula
  desc "Artificial Intelligence Infrastructure-as-Code Generator"
  homepage "https://github.com/gofireflyio/aiac"
  version "4.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gofireflyio/aiac/releases/download/v4.1.0/aiac_4.1.0_macOS-64bit.tar.gz"
      sha256 "85bb75aeb7f0c5a0ee47e47236e319118858166bf6ef07416a86499e179cdcd5"

      def install
        bin.install "aiac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/gofireflyio/aiac/releases/download/v4.1.0/aiac_4.1.0_macOS-ARM64.tar.gz"
      sha256 "2135d2a9327e0b4d9f8a44472f68c05d9584453817ed461c91b6ec7d6597adb2"

      def install
        bin.install "aiac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gofireflyio/aiac/releases/download/v4.1.0/aiac_4.1.0_Linux-ARM64.tar.gz"
      sha256 "4a78dce8335d662eb05d518e9a82442099b83ceef44c4e1b1fd273123c3a1513"

      def install
        bin.install "aiac"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gofireflyio/aiac/releases/download/v4.1.0/aiac_4.1.0_Linux-64bit.tar.gz"
      sha256 "12a8cbc0de68f5a643c5605dd2c1c6e1abf3cba8e29ee6cfa24614121bd3ce32"

      def install
        bin.install "aiac"
      end
    end
  end

  test do
    system "#{bin}/aiac", "--help"
  end
end
