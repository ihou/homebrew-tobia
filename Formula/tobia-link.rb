class TobiaLink < Formula
  desc "Tobia local bridge for Codex session relay"
  homepage "https://github.com/ihou/tobia-link-releases"
  version "0.1.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.10/tobia-link_0.1.10_darwin_arm64.tar.gz"
      sha256 "4573a6cf8a21d4a9d8b8eb48f5d5784dd4a0f363bb772ceb0f4d5f57a3dc900f"
    else
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.10/tobia-link_0.1.10_darwin_amd64.tar.gz"
      sha256 "7f99d98959190f776288e067d94cd49882e4942a7508c35f7ee6d82085107e4e"
    end
  end

  on_linux do
    url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.10/tobia-link_0.1.10_linux_amd64.tar.gz"
    sha256 "05a955404d52ee9cf875ccca0fd4a67aa8001a0ffd9920c1740b8dc15db7039a"
  end

  def install
    bin.install "tobia-link"
  end

  test do
    output = shell_output("#{bin}/tobia-link invalid-command 2>&1", 1)
    assert_match "usage:", output
  end
end
