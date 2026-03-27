class TobiaLink < Formula
  desc "Tobia local bridge for Codex session relay"
  homepage "https://github.com/ihou/tobia-link-releases"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.0/tobia-link_0.1.0_darwin_arm64.tar.gz"
      sha256 "c98de0fc6618a578308e772e2e23c91bbf0f34878bbabfe904778dec38692b7f"
    else
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.0/tobia-link_0.1.0_darwin_amd64.tar.gz"
      sha256 "8ea6f33f790f071335ac9f7a9bac5f3aa52291ec014fcc580eeb993e0b78d43f"
    end
  end

  on_linux do
    url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.0/tobia-link_0.1.0_linux_amd64.tar.gz"
    sha256 "9c0672d86bcaa232f9d3c34c221a9fd81249e92fc0e372777af58bf5e68444cb"
  end

  def install
    bin.install "tobia-link"
  end

  test do
    output = shell_output("#{bin}/tobia-link invalid-command 2>&1", 1)
    assert_match "usage:", output
  end
end
