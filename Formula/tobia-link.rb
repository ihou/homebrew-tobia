class TobiaLink < Formula
  desc "Tobia local bridge for Codex session relay"
  homepage "https://github.com/ihou/tobia-link-releases"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.6/tobia-link_0.1.6_darwin_arm64.tar.gz"
      sha256 "d5c07d65d9a2de1b9388ed9fbc6e25fe7a4c10c0676136aaba12b44cb46c9cab"
    else
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.6/tobia-link_0.1.6_darwin_amd64.tar.gz"
      sha256 "5b62ccdd18cc0ee2a6383f1154c3ae11483355c157d32d9e46df70ef382cb9f2"
    end
  end

  on_linux do
    url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.6/tobia-link_0.1.6_linux_amd64.tar.gz"
    sha256 "f079eca58891cb4ee21bd0c0bd83fb0850487bfd17ed0e12e557e196064a255d"
  end

  def install
    bin.install "tobia-link"
  end

  test do
    output = shell_output("#{bin}/tobia-link invalid-command 2>&1", 1)
    assert_match "usage:", output
  end
end
