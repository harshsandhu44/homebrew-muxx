# typed: false
# frozen_string_literal: true

class Muxx < Formula
  desc "Minimal tmux session automation CLI"
  homepage "https://github.com/harshsandhu44/muxx"
  version "1.12.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.12.5/muxx-aarch64-apple-darwin.tar.gz"
      sha256 "7d38d1e6cc3b3c17888f0c5bb3fec3128310c471fa393e830882f531e3e77b3e"
    else
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.12.5/muxx-x86_64-apple-darwin.tar.gz"
      sha256 "d990729582079dd86b511d9deea6dabaecd7864dabe08989ae166d99d1eac4f3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.12.5/muxx-x86_64-unknown-linux-musl.tar.gz"
      sha256 "96be31b85126ce389f48549b90eeb27d0d10e056c1289327e9775d944ed9a33f"
    end
  end

  def install
    bin.install "muxx"
  end

  test do
    system "#{bin}/muxx", "--version"
  end
end
