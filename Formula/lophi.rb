class Lophi < Formula
  desc "Feature reduction using missing value, Gini/IV, and correlation analysis"
  homepage "https://github.com/neelsbester/lo-phi"
  version "1.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/neelsbester/lo-phi/releases/download/v1.1.0/lophi-macos-aarch64.tar.gz"
    sha256 "799a686f6ad7a6ae258ceef758651c011e6ce7188f4dcd24b195a65b045a8ea5"
  end

  on_linux do
    url "https://github.com/neelsbester/lo-phi/releases/download/v1.1.0/lophi-linux-x86_64.tar.gz"
    sha256 "b5102e747ffc9543888167a35b04f19f9b3a8a32b7f00ae5d7f30fe340f5842f"
  end

  def install
    bin.install "lophi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lophi --version")
  end
end
