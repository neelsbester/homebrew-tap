class Lophi < Formula
  desc "Feature reduction using missing value, Gini/IV, and correlation analysis"
  homepage "https://github.com/neelsbester/lo-phi"
  version "1.0.2"
  license "MIT"

  on_macos do
    url "https://github.com/neelsbester/lo-phi/releases/download/v1.0.2/lophi-macos-aarch64.tar.gz"
    sha256 "277770a6babd32f7b8801a847f6a2a392b47d5efe9444b21a70a9bb93ceca7f3"
  end

  on_linux do
    url "https://github.com/neelsbester/lo-phi/releases/download/v1.0.2/lophi-linux-x86_64.tar.gz"
    sha256 "fd341de33722780641fac89ab68f2d39ced1f9305fc1263f81592a7e7758ed31"
  end

  def install
    bin.install "lophi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lophi --version")
  end
end
