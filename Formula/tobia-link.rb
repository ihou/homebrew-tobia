class TobiaLink < Formula
  desc "Tobia local bridge for Codex session relay"
  homepage "https://github.com/ihou/tobia-link-releases"
  version "0.1.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.12/tobia-link_0.1.12_darwin_arm64.tar.gz"
      sha256 "2fdd97fc8ab586edd34b1a69de30231c01f96217add574a1e2c1cd19533285d8"
    else
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.12/tobia-link_0.1.12_darwin_amd64.tar.gz"
      sha256 "c321259980d1798ab7cf1a8537cf87bfaa785ef26b5df0c3d24aed636d151fac"
    end
  end

  on_linux do
    url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.12/tobia-link_0.1.12_linux_amd64.tar.gz"
    sha256 "18879d3301fa6b99e7d0b0fd2a8cd85555f73517c5e7205c8b622a2e27133a4d"
  end

  def install
    bin.install "tobia-link"
  end

  test do
    output = shell_output("#{bin}/tobia-link invalid-command 2>&1", 1)
    assert_match "usage:", output
  end
end
