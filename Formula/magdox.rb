class Magdox < Formula
  desc "Scans source code locally for security issues and reports findings to MAGDOX"
  homepage "https://magdox.io"
  version "1.3.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.3.2/magdox_1.3.2_darwin_arm64.tar.gz"
      sha256 "1fb55aa826bd825068ea129363dc549d3b775d717c31ca76d427aec1957483fd"
    end
    on_intel do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.3.2/magdox_1.3.2_darwin_amd64.tar.gz"
      sha256 "243a7bea1d64fcdb9e7e088decd3d5468e5ef06388b71c970f544f72cf90805b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.3.2/magdox_1.3.2_linux_arm64.tar.gz"
      sha256 "97f35745b48e667b1ecc8a732db94a9ea8cc1b0df2b0d23871c0e18e31d570eb"
    end
    on_intel do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.3.2/magdox_1.3.2_linux_amd64.tar.gz"
      sha256 "9705c49073b4928936a401f9a4e45525a916eef8f6767c5f1bc87f48b682a452"
    end
  end

  def install
    bin.install "magdox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/magdox version")
  end
end
