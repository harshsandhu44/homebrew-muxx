# typed: false
# frozen_string_literal: true

class Muxx < Formula
  desc "Minimal tmux session automation CLI"
  homepage "https://github.com/harshsandhu44/muxx"
  version "1.12.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.12.3/muxx-aarch64-apple-darwin.tar.gz"
      sha256 "463fbc86da904df020e8f46cc8451f63405478e65ad8818a65c8d87cc02f2f40"
    else
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.12.3/muxx-x86_64-apple-darwin.tar.gz"
      sha256 "c9b074445ac22fbe6f67ea4f594a3708e7a4e7c767decdbe9d78370c37a54f5f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.12.3/muxx-x86_64-unknown-linux-musl.tar.gz"
      sha256 "811140761d51e81a6240499b8fa2a0ec88af716d283583e0a12b55e42b846bb6"
    end
  end

  def install
    bin.install "muxx"
  end

  test do
    system "#{bin}/muxx", "--version"
  end
end
