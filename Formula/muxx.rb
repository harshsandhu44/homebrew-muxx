# typed: false
# frozen_string_literal: true

class Muxx < Formula
  desc "Minimal tmux session automation CLI"
  homepage "https://github.com/harshsandhu44/muxx"
  version "1.12.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.12.6/muxx-aarch64-apple-darwin.tar.gz"
      sha256 "3e5d3ba6fa4fb62e719a571966abb166722ebffb5a832e6ee96a595cdefaf393"
    else
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.12.6/muxx-x86_64-apple-darwin.tar.gz"
      sha256 "d8912440812dde17b470a9d4394a90e05d330c0aa23403060e79ad6f74a20671"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.12.6/muxx-x86_64-unknown-linux-musl.tar.gz"
      sha256 "05898685db3f63ad02f6d86ba3846acbae5f4db4bbe8d19bd22f7f95364d28d3"
    end
  end

  def install
    bin.install "muxx"
  end

  test do
    system "#{bin}/muxx", "--version"
  end
end
