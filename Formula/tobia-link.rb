class TobiaLink < Formula
  desc "Tobia local bridge for Codex session relay"
  homepage "https://github.com/ihou/tobia-link-releases"
  version "0.1.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.11/tobia-link_0.1.11_darwin_arm64.tar.gz"
      sha256 "e902bf399253c5362e4e5bef5df0b0aad544f6f9394e79aa5067ebb22b4600b7"
    else
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.11/tobia-link_0.1.11_darwin_amd64.tar.gz"
      sha256 "b1878900c82e5869f6b9286187375d84a463ffe3a7d35c68044f3a12f1ab9980"
    end
  end

  on_linux do
    url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.11/tobia-link_0.1.11_linux_amd64.tar.gz"
    sha256 "2950f58c1d5b914235cf367900ca31fc3bcea8fb17351e43fc70660bfd2f983b"
  end

  def install
    bin.install "tobia-link"
  end

  test do
    output = shell_output("#{bin}/tobia-link invalid-command 2>&1", 1)
    assert_match "usage:", output
  end
end
