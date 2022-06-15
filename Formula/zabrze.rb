# typed: false
# frozen_string_literal: true

# This file was generated by GitHub Actions. DO NOT EDIT.
class Zabrze < Formula
  desc "ZSH abbreviation expansion plugin"
  homepage "https://github.com/Ryooooooga/zabrze"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Ryooooooga/zabrze/releases/download/v0.2.0/zabrze-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "3a51562e5e2a3845b01af0f74c685f9d92a579a01d9665e640cee349c16a178f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Ryooooooga/zabrze/releases/download/v0.2.0/zabrze-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "f8479e98db3f4ddafdc229dfd12659257c186b5c3ca7c6f9d1257be213c487ad"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Ryooooooga/zabrze/releases/download/v0.2.0/zabrze-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0b2f8cf709952e86635e6a98307bb45c2d61c6dfad668fe90367d2b68417a96b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Ryooooooga/zabrze/releases/download/v0.2.0/zabrze-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "532e1c0c0687d836d9bf2bdf936d027e439372186c7375552848b7f341e433ab"
    end
  end

  def install
    bin.install "zabrze"
  end

  test do
    system "#{bin}/zabrze", "--version"
  end
end
