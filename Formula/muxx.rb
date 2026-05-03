# typed: false
# frozen_string_literal: true

class Muxx < Formula
  desc "Minimal tmux session automation CLI"
  homepage "https://github.com/harshsandhu44/muxx"
  version "1.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.12.0/muxx-aarch64-apple-darwin.tar.gz"
      sha256 "2e93706a79bd60a3b4f9607a340ac166b789973e491fc4e752c9680043083bfe"
    else
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.12.0/muxx-x86_64-apple-darwin.tar.gz"
      sha256 "e78f638e18afcb5fd7280267e80e00f019ce7fd95c70f030aaab4dd83d40a645"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.12.0/muxx-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0fe42f17ca6de3b5413e949145d21882b72180712a3a8a82486505142a7884d8"
    end
  end

  def install
    bin.install "muxx"
  end

  test do
    system "#{bin}/muxx", "--version"
  end
end
