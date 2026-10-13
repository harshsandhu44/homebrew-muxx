# typed: false
# frozen_string_literal: true

class Muxx < Formula
  desc "Minimal tmux session automation CLI"
  homepage "https://github.com/harshsandhu44/muxx"
  version "1.14.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.14.0/muxx-aarch64-apple-darwin.tar.gz"
      sha256 "2e827aab1153e1a27b8a4203753f4b0cdb57c0f893bdd59ecc5bc1760fcac80d"
    else
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.14.0/muxx-x86_64-apple-darwin.tar.gz"
      sha256 "5b46cdb5d2d7d52771066c822ad66812f585b64b7538ef8fcea7b0d2c6f7e4e1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.14.0/muxx-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bfa29d77e772f38c870ee80ddcaeca2facdca411c243bd9d431a74dd99c0f934"
    end
  end

  def install
    bin.install "muxx"
  end

  test do
    system "#{bin}/muxx", "--version"
  end
end
