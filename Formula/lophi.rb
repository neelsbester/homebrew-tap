class Lophi < Formula
  desc "Feature reduction using missing value, Gini/IV, and correlation analysis"
  homepage "https://github.com/neelsbester/lo-phi"
  version "1.0.1"
  license "MIT"

  on_macos do
    url "https://github.com/neelsbester/lo-phi/releases/download/v1.0.1/lophi-macos-aarch64.tar.gz"
    sha256 "1dfee4fb46aca24f56df0b40c388273425e4fafa6d6ecb83c3a030845b5e3688"
  end

  on_linux do
    url "https://github.com/neelsbester/lo-phi/releases/download/v1.0.1/lophi-linux-x86_64.tar.gz"
    sha256 "5737fb4734809f29a2feaad8a86ca7047f74f79af171c22b595b08c3ab781007"
  end

  def install
    bin.install "lophi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lophi --version")
  end
end
