class Magdox < Formula
  desc "Scans source code locally for security issues and reports findings to MAGDOX"
  homepage "https://magdox.io"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.0.0/magdox_1.0.0_darwin_arm64.tar.gz"
      sha256 "1f0b0a3f71ec142bd8f3a586f920c038058e9742d49678aa7cd3fc0ecb96930a"
    end
    on_intel do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.0.0/magdox_1.0.0_darwin_amd64.tar.gz"
      sha256 "496cfad9b98c125a6efa5eefdaf6dd69735469e8d43928e1bca3b497df795893"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.0.0/magdox_1.0.0_linux_arm64.tar.gz"
      sha256 "b9d59ac6733001487130980bce4bd360218199bea5580130ee5cd477b2cc0dcc"
    end
    on_intel do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.0.0/magdox_1.0.0_linux_amd64.tar.gz"
      sha256 "9124c5d472e5276d42f17af8915a63242fd286d72215f481b7179e230a51f64f"
    end
  end

  def install
    bin.install "magdox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/magdox version")
  end
end
