class TobiaLink < Formula
  desc "Tobia local bridge for Codex session relay"
  homepage "https://github.com/ihou/tobia-link-releases"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.5/tobia-link_0.1.5_darwin_arm64.tar.gz"
      sha256 "6dbf1554aab9e5ddbec470df665a4b6e5860af122bf621cbe4b646b7b47c9add"
    else
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.5/tobia-link_0.1.5_darwin_amd64.tar.gz"
      sha256 "6b1b44f92da6b87e60f333ad30cb72f26a264e220714f8fb249537477bdfbb7c"
    end
  end

  on_linux do
    url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.5/tobia-link_0.1.5_linux_amd64.tar.gz"
    sha256 "e5b5937d74ec24517f6feec8e30444e3bbee451351cb6382abc1414ba1d0c92d"
  end

  def install
    bin.install "tobia-link"
  end

  test do
    output = shell_output("#{bin}/tobia-link invalid-command 2>&1", 1)
    assert_match "usage:", output
  end
end
