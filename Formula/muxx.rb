# typed: false
# frozen_string_literal: true

class Muxx < Formula
  desc "Minimal tmux session automation CLI"
  homepage "https://github.com/harshsandhu44/muxx"
  version "1.12.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.12.4/muxx-aarch64-apple-darwin.tar.gz"
      sha256 "16b050b8acc32d848608a066c7f51513934ee7c2252452f801a1b0aa42d8d6ab"
    else
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.12.4/muxx-x86_64-apple-darwin.tar.gz"
      sha256 "dec82291fb1398b9c1e5888a08adc354cccb970a77a15986ac0138edb58706d2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.12.4/muxx-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eb8ca1ac749d475be60e16d9d5748a20c91ded1c606628bcad088141117f4e79"
    end
  end

  def install
    bin.install "muxx"
  end

  test do
    system "#{bin}/muxx", "--version"
  end
end
