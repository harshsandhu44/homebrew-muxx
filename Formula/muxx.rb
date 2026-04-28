# typed: false
# frozen_string_literal: true

class Muxx < Formula
  desc "Minimal tmux session automation CLI"
  homepage "https://github.com/harshsandhu44/muxx"
  version "1.9.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.9.3/muxx-aarch64-apple-darwin.tar.gz"
      sha256 "58cf3a5495ade0f612234036222f7e28c07992fa16299c87ac61a498fd72062b"
    else
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.9.3/muxx-x86_64-apple-darwin.tar.gz"
      sha256 "5d6e12890a8a8e5a687bcbacecee894069b3504ad3cab2f7e7ab797d7d8d2ab6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/harshsandhu44/muxx/releases/download/v1.9.3/muxx-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c29c68db0eee80ef3178d5e717f83b57c667ed8fcea867a5d3a34f223bd68720"
    end
  end

  def install
    bin.install "muxx"
  end

  test do
    system "#{bin}/muxx", "--version"
  end
end
