class TobiaLink < Formula
  desc "Tobia local bridge for Codex session relay"
  homepage "https://github.com/ihou/tobia-link-releases"
  version "0.1.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.8/tobia-link_0.1.8_darwin_arm64.tar.gz"
      sha256 "297f110b6b8738fcf3776451744c843b4b704f816532165108ae3de6b3ac549a"
    else
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.8/tobia-link_0.1.8_darwin_amd64.tar.gz"
      sha256 "4ccacb9c35c07ce1430a318937cc955462830c5b9fc275cf01f89cd1863dd56c"
    end
  end

  on_linux do
    url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.8/tobia-link_0.1.8_linux_amd64.tar.gz"
    sha256 "bdc6f1d7a360ef80b6fd26a66d8338f3423199d8cadad6b36a422dc85725e146"
  end

  def install
    bin.install "tobia-link"
  end

  test do
    output = shell_output("#{bin}/tobia-link invalid-command 2>&1", 1)
    assert_match "usage:", output
  end
end
