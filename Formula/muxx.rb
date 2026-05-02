# typed: false
# frozen_string_literal: true

class Muxx < Formula
  desc "Minimal tmux session automation CLI"
  homepage "https://github.com/harshsandhu44/muxx"
  version "1.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.11.0/muxx-aarch64-apple-darwin.tar.gz"
      sha256 "e6c36003dcdfc42e804fc0a91fc347a2f4b27829881be3b744809013481d366c"
    else
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.11.0/muxx-x86_64-apple-darwin.tar.gz"
      sha256 "90299c4614b0206905cde2213998efa322c684f4468385490dcb678fe82615df"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.11.0/muxx-x86_64-unknown-linux-musl.tar.gz"
      sha256 "617f436fa10613d6c4ac9eb1712ce1e905692385b317266902c99dfd079c5f82"
    end
  end

  def install
    bin.install "muxx"
  end

  test do
    system "#{bin}/muxx", "--version"
  end
end
