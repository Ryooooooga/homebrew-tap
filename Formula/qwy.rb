# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Qwy < Formula
  desc "Zsh Fuzzy Completion Plugin"
  homepage "https://github.com/Ryooooooga/qwy"
  version "0.1.0-preview+3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Ryooooooga/qwy/releases/download/v0.1.0-preview+3/qwy_0.1.0-preview+3_darwin_amd64.tar.gz"
      sha256 "332d652723fad04966d1b65fec104098bb3c05cc4d0ce71e3710add335a191ee"

      def install
        bin.install "qwy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Ryooooooga/qwy/releases/download/v0.1.0-preview+3/qwy_0.1.0-preview+3_darwin_arm64.tar.gz"
      sha256 "6102e08e2a35ebb3d304f0f10d150e00277901dd4ea8f8156c0ac63769af5b39"

      def install
        bin.install "qwy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Ryooooooga/qwy/releases/download/v0.1.0-preview+3/qwy_0.1.0-preview+3_linux_amd64.tar.gz"
      sha256 "e90772791536d27e700f2c27b0baec089f03f5fb7b88bb94cc759e56515d2ad6"

      def install
        bin.install "qwy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Ryooooooga/qwy/releases/download/v0.1.0-preview+3/qwy_0.1.0-preview+3_linux_arm64.tar.gz"
      sha256 "93fdccad584f164d326820e2e62fedcb5725e1d1e94c8ea6684f9edc9e32cf71"

      def install
        bin.install "qwy"
      end
    end
  end

  test do
    system "#{bin}/qwy", "--version"
  end
end
