class Magdox < Formula
  desc "Scans source code locally for security issues and reports findings to MAGDOX"
  homepage "https://magdox.io"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.1.0/magdox_1.1.0_darwin_arm64.tar.gz"
      sha256 "238ab3145031d2fa66e95b3ccc851d377a16a688336214a25fb3b572c9992922"
    end
    on_intel do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.1.0/magdox_1.1.0_darwin_amd64.tar.gz"
      sha256 "586135880605632d50c32639dfb2b1ca3e46ccaf1c5230a3e548b23ea25e44c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.1.0/magdox_1.1.0_linux_arm64.tar.gz"
      sha256 "125b94a5e0c225d6587f03d9d55cd9cd392ed443e1054516ce17421cae2fa6a3"
    end
    on_intel do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.1.0/magdox_1.1.0_linux_amd64.tar.gz"
      sha256 "b2961bfb4daf51875575610d2fa2f1ea3877e97214d99cc39efeddb44d9c62a2"
    end
  end

  def install
    bin.install "magdox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/magdox version")
  end
end
