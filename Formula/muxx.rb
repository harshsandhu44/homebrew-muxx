# typed: false
# frozen_string_literal: true

class Muxx < Formula
  desc "Minimal tmux session automation CLI"
  homepage "https://github.com/harshsandhu44/muxx"
  version "1.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.9.0/muxx-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.9.0/muxx-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.9.0/muxx-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "muxx"
  end

  test do
    system "#{bin}/muxx", "--version"
  end
end

