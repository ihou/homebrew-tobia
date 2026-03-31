class TobiaLink < Formula
  desc "Tobia local bridge for Codex session relay"
  homepage "https://github.com/ihou/tobia-link-releases"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.7/tobia-link_0.1.7_darwin_arm64.tar.gz"
      sha256 "4ece569a67d3a48b4c20e50780440afacd1b69281c302784bf946fb4dcb9de48"
    else
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.7/tobia-link_0.1.7_darwin_amd64.tar.gz"
      sha256 "810503e3abb94fc9e3583b7bc36f7b61bf3de90a807235f6b3fdf2996ddd54b2"
    end
  end

  on_linux do
    url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.7/tobia-link_0.1.7_linux_amd64.tar.gz"
    sha256 "49919d672b7ac6019a32d9f8cbbf4982ffccdb115a954bd260cfe68df538b02d"
  end

  def install
    bin.install "tobia-link"
  end

  test do
    output = shell_output("#{bin}/tobia-link invalid-command 2>&1", 1)
    assert_match "usage:", output
  end
end
