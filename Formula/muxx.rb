# typed: false
# frozen_string_literal: true

class Muxx < Formula
  desc "Minimal tmux session automation CLI"
  homepage "https://github.com/harshsandhu44/muxx"
  version "1.10.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.10.1/muxx-aarch64-apple-darwin.tar.gz"
      sha256 "1d99b54be74e9cce5f19480504c5b14b34e55c2471b143aa94ef00d63f7b39dd"
    else
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.10.1/muxx-x86_64-apple-darwin.tar.gz"
      sha256 "7008c1ef7e0e14a0bd2dc8ba1545b4bc0ed604a6aa05d91c1d593d7509127937"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.10.1/muxx-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6c994aef06fc6861babb9ece677dc7290b66443d9823f2c7e101753d835a15ea"
    end
  end

  def install
    bin.install "muxx"
  end

  test do
    system "#{bin}/muxx", "--version"
  end
end
