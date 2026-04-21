# typed: false
# frozen_string_literal: true

class Muxx < Formula
  desc "Minimal tmux session automation CLI"
  homepage "https://github.com/harshsandhu44/muxx"
  version "1.9.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.9.2/muxx-aarch64-apple-darwin.tar.gz"
      sha256 "69e711e06bf183b56323182a29082c9d1195d951739388a199c7d9b858854253"
    else
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.9.2/muxx-x86_64-apple-darwin.tar.gz"
      sha256 "01517881df111ce8c422427efbe7160d67e49156ae6f323a57ea5f89ed2d7957"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.9.2/muxx-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2a0010ee79e3673c37e907409bc7e69c4ea52e0fa81d0ebafb0cd52d043beaff"
    end
  end

  def install
    bin.install "muxx"
  end

  test do
    system "#{bin}/muxx", "--version"
  end
end
