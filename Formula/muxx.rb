# typed: false
# frozen_string_literal: true

class Muxx < Formula
  desc "Minimal tmux session automation CLI"
  homepage "https://github.com/harshsandhu44/muxx"
  version "1.11.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.11.1/muxx-aarch64-apple-darwin.tar.gz"
      sha256 "a9d5966d6db2b759d632f2a99b1dbf79233434a699609cec666d98800fd46b8f"
    else
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.11.1/muxx-x86_64-apple-darwin.tar.gz"
      sha256 "6abddd225e9bc96756f13a9f1dd502d87ab182c1da283fd5dac89ddb7e334a8d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.11.1/muxx-x86_64-unknown-linux-musl.tar.gz"
      sha256 "93e552621c89f70767367459d03303f4543a326898c1b1929a13395e2d9ee222"
    end
  end

  def install
    bin.install "muxx"
  end

  test do
    system "#{bin}/muxx", "--version"
  end
end
