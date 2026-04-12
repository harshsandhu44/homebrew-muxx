# typed: false
# frozen_string_literal: true

class Muxx < Formula
  desc "Minimal tmux session automation CLI"
  homepage "https://github.com/harshsandhu44/muxx"
  version "1.9.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.9.1/muxx-aarch64-apple-darwin.tar.gz"
      sha256 "d64ea94d8a4d7b0770281b7e016c1e5319948a3e837e3eb33e0e12fa00d058cd"
    else
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.9.1/muxx-x86_64-apple-darwin.tar.gz"
      sha256 "1b4a4c825d5db1390ebac5e2f26c3ba01cb24484a14f3885524b6db238b532a5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.9.1/muxx-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b68391960469a3daa3ae1d51b12fb7511b3311123d8e6ebbe6009306597e5212"
    end
  end

  def install
    bin.install "muxx"
  end

  test do
    system "#{bin}/muxx", "--version"
  end
end
