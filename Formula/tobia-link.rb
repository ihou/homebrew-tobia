class TobiaLink < Formula
  desc "Tobia local bridge for Codex session relay"
  homepage "https://github.com/ihou/tobia-link-releases"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.3/tobia-link_0.1.3_darwin_arm64.tar.gz"
      sha256 "12c185e6f6e5aca103a543e2dda4cef93ea5d4b2c7a2b23a8fee7cee029758ad"
    else
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.3/tobia-link_0.1.3_darwin_amd64.tar.gz"
      sha256 "45338e892eab84601be7e22bb98deb722ac9da84c25e778032cbd12ee472bf5b"
    end
  end

  on_linux do
    url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.3/tobia-link_0.1.3_linux_amd64.tar.gz"
    sha256 "38664864b94d56095a3cd14d6fd8aa58604036a4537a1d3cf377e9587797d6bf"
  end

  def install
    bin.install "tobia-link"
  end

  test do
    output = shell_output("#{bin}/tobia-link invalid-command 2>&1", 1)
    assert_match "usage:", output
  end
end
