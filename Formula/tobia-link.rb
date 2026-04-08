class TobiaLink < Formula
  desc "Tobia local bridge for Codex session relay"
  homepage "https://github.com/ihou/tobia-link-releases"
  version "0.1.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.14/tobia-link_0.1.14_darwin_arm64.tar.gz"
      sha256 "27bafea498274e9dfec0877c8d2f1e4c6106746eb1aa076d7fb08f6c03fbe24f"
    else
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.14/tobia-link_0.1.14_darwin_amd64.tar.gz"
      sha256 "f3228e93b926bd6f63b56eaba8fa3c505b90883d9d942219bf358221f9f4c317"
    end
  end

  on_linux do
    url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.14/tobia-link_0.1.14_linux_amd64.tar.gz"
    sha256 "953f57c8c518ed4d2da1b1c37d4b5323233c7bc01082bf67b5c35eb0869d4fbc"
  end

  def install
    bin.install "tobia-link"
  end

  test do
    output = shell_output("#{bin}/tobia-link invalid-command 2>&1", 1)
    assert_match "usage:", output
  end
end
