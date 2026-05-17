# typed: false
# frozen_string_literal: true

class Muxx < Formula
  desc "Minimal tmux session automation CLI"
  homepage "https://github.com/harshsandhu44/muxx"
  version "1.12.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.12.1/muxx-aarch64-apple-darwin.tar.gz"
      sha256 "0b7063d994b92704ee98779a6108cbaf2a83d059095e4fc2a06582165d348821"
    else
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.12.1/muxx-x86_64-apple-darwin.tar.gz"
      sha256 "55cbe78772d7706993853f284c80da4bebc9266d7d3a5b8bef2478c8e31f4de9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.12.1/muxx-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f1bc9060999445c313815367ece73643a8665ef2d16d0639481de877c2e106cc"
    end
  end

  def install
    bin.install "muxx"
  end

  test do
    system "#{bin}/muxx", "--version"
  end
end
