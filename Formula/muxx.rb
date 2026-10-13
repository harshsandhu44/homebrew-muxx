# typed: false
# frozen_string_literal: true

class Muxx < Formula
  desc "Minimal tmux session automation CLI"
  homepage "https://github.com/harshsandhu44/muxx"
  version "1.13.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.13.0/muxx-aarch64-apple-darwin.tar.gz"
      sha256 "29ec6a90a51cfafbf9e84a4a71a1969e138b80790063f7408e960a2c4f37443a"
    else
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.13.0/muxx-x86_64-apple-darwin.tar.gz"
      sha256 "2132e07f1fadfdbfd844c49c55907573262800f011ab038a9022a0e976a9f8a3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.13.0/muxx-x86_64-unknown-linux-musl.tar.gz"
      sha256 "68db465735c05874282dc00044549684998157e85227abcf9f0f0c4d693beab3"
    end
  end

  def install
    bin.install "muxx"
  end

  test do
    system "#{bin}/muxx", "--version"
  end
end
