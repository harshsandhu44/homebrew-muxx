# typed: false
# frozen_string_literal: true

class Muxx < Formula
  desc "Minimal tmux session automation CLI"
  homepage "https://github.com/harshsandhu44/muxx"
  version "1.12.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.12.2/muxx-aarch64-apple-darwin.tar.gz"
      sha256 "133d3fe7197e59f2c265d3d810f319a79ae185a04db8d32e745d3ced9cf9a5df"
    else
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.12.2/muxx-x86_64-apple-darwin.tar.gz"
      sha256 "da4ddd3c1f3ddc3cffde596419d49109a143f10ff9191ef35aad5449d3ea5510"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.12.2/muxx-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3071034d992dd86e261bd3bd8fd975edbf74100b1d2d30f3a9dae5e42015bd74"
    end
  end

  def install
    bin.install "muxx"
  end

  test do
    system "#{bin}/muxx", "--version"
  end
end
