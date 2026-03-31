class TobiaLink < Formula
  desc "Tobia local bridge for Codex session relay"
  homepage "https://github.com/ihou/tobia-link-releases"
  version "0.1.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.9/tobia-link_0.1.9_darwin_arm64.tar.gz"
      sha256 "1c6cecf68168183413fe485140ba180a98f4289cccc01e83cc6a5a4329a32563"
    else
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.9/tobia-link_0.1.9_darwin_amd64.tar.gz"
      sha256 "270ef8d3ff2af81a3d1f5f145457fd6316e1e2f0c4a1568986e5c60fa0678815"
    end
  end

  on_linux do
    url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.9/tobia-link_0.1.9_linux_amd64.tar.gz"
    sha256 "49e4fd891f5b61643a2f99cfafcc04acc963d266bd803fca5361cbbd87e2db40"
  end

  def install
    bin.install "tobia-link"
  end

  test do
    output = shell_output("#{bin}/tobia-link invalid-command 2>&1", 1)
    assert_match "usage:", output
  end
end
