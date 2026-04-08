class TobiaLink < Formula
  desc "Tobia local bridge for Codex session relay"
  homepage "https://github.com/ihou/tobia-link-releases"
  version "0.1.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.13/tobia-link_0.1.13_darwin_arm64.tar.gz"
      sha256 "00e23f96c4f5e94faf59034c13c4bb6f5198327834d4ede8a761f873e3165259"
    else
      url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.13/tobia-link_0.1.13_darwin_amd64.tar.gz"
      sha256 "e5cb62cf1353b601ccd88345dbdf9ac4bab98053bdea411557155a90fa34d545"
    end
  end

  on_linux do
    url "https://github.com/ihou/tobia-link-releases/releases/download/v0.1.13/tobia-link_0.1.13_linux_amd64.tar.gz"
    sha256 "ddf07d8cf5f73ca6aacca3eae5a0f062e7c33ca787a594b3394bad9dca8b9280"
  end

  def install
    bin.install "tobia-link"
  end

  test do
    output = shell_output("#{bin}/tobia-link invalid-command 2>&1", 1)
    assert_match "usage:", output
  end
end
