class TobiaLink < Formula
  desc "Tobia local bridge for Codex session relay"
  homepage "https://github.com/ihou/tobia-link-releases"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.1/tobia-link_0.1.1_darwin_arm64.tar.gz"
      sha256 "ab6e5228863639c7e0ec8a6f9ba09467eefe1bce27212922daffa574c2d20ac1"
    else
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.1/tobia-link_0.1.1_darwin_amd64.tar.gz"
      sha256 "0f520b6ea0739565ca035f41b3ff9cbd991c58df194f513d16ca8c6d988eb28a"
    end
  end

  on_linux do
    url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.1/tobia-link_0.1.1_linux_amd64.tar.gz"
    sha256 "da631ecf7c0b7ddc2c695d681b58333f760485ebed1b7f40fc7651fdcc7fca7b"
  end

  def install
    bin.install "tobia-link"
  end

  test do
    output = shell_output("#{bin}/tobia-link invalid-command 2>&1", 1)
    assert_match "usage:", output
  end
end
