class TobiaLink < Formula
  desc "Tobia local bridge for Codex session relay"
  homepage "https://github.com/ihou/tobia-link-releases"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.4/tobia-link_0.1.4_darwin_arm64.tar.gz"
      sha256 "45070dfca85503293466c3a0455f0a471d05374ec5bb4abadcd6ef7197c5f2ae"
    else
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.4/tobia-link_0.1.4_darwin_amd64.tar.gz"
      sha256 "04e7603c257e5c4471ddfb902f6f0a23ee8c245ecfc64faf6155f325bbfd4d52"
    end
  end

  on_linux do
    url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.4/tobia-link_0.1.4_linux_amd64.tar.gz"
    sha256 "9ca20445fa2188fab9878c4dc45c9d2b64a40ffc6c9b671d6252f7a4badf6495"
  end

  def install
    bin.install "tobia-link"
  end

  test do
    output = shell_output("#{bin}/tobia-link invalid-command 2>&1", 1)
    assert_match "usage:", output
  end
end
