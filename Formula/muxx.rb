# typed: false
# frozen_string_literal: true

class Muxx < Formula
  desc "Minimal tmux session automation CLI"
  homepage "https://github.com/harshsandhu44/muxx"
  version "1.13.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.13.1/muxx-aarch64-apple-darwin.tar.gz"
      sha256 "fc62a1aa4432dba1455c9e46c37c1cc934e66d4af09e15597e482d959e9138f6"
    else
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.13.1/muxx-x86_64-apple-darwin.tar.gz"
      sha256 "2db7311584819f7d8f2f52c80c06f7aac995bb86640685c97108a62630d5aae3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.13.1/muxx-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4793ae847e320ae5a35c05f5d2227f08b0e5f1499fd2bd15f20e0757ab352a91"
    end
  end

  def install
    bin.install "muxx"
  end

  test do
    system "#{bin}/muxx", "--version"
  end
end
