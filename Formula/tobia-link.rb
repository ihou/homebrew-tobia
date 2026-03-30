class TobiaLink < Formula
  desc "Tobia local bridge for Codex session relay"
  homepage "https://github.com/ihou/tobia-link-releases"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.2/tobia-link_0.1.2_darwin_arm64.tar.gz"
      sha256 "ebe00b24c070cc572f8968432de7fbe495291843352a2715776628922bec374f"
    else
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.2/tobia-link_0.1.2_darwin_amd64.tar.gz"
      sha256 "5ab1717bcc5993bbb35b76b86e7ddf1594621f2bf5f57d1d57514e5194b1487d"
    end
  end

  on_linux do
    url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.2/tobia-link_0.1.2_linux_amd64.tar.gz"
    sha256 "5fd5eda190b97e32d83b15348ade215d7d945db5c75a96bc98bc10341aa230a5"
  end

  def install
    bin.install "tobia-link"
  end

  test do
    output = shell_output("#{bin}/tobia-link invalid-command 2>&1", 1)
    assert_match "usage:", output
  end
end
