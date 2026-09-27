class Magdox < Formula
  desc "Scans source code locally for security issues and reports findings to MAGDOX"
  homepage "https://magdox.io"
  version "1.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.2/magdox_1.2.0_darwin_arm64.tar.gz"
      sha256 "63de719caa30c268ff1d8916ad74dca51cb44338138038036973649f03cbd5e5"
    end
    on_intel do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.2/magdox_1.2.0_darwin_amd64.tar.gz"
      sha256 "f150f539d27226defd87fec8f97ad20430aa4e97ddaf12c8564456b2ec67e991"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.2/magdox_1.2.0_linux_arm64.tar.gz"
      sha256 "2a09c4f7993ea7d02a7b6f849d3cece6ee85a1f9794e372bb5519e7d078e2c4a"
    end
    on_intel do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.2/magdox_1.2.0_linux_amd64.tar.gz"
      sha256 "223ed02d397464c20458bee78dc28d23cec7577d2edad31452cd2009931746ca"
    end
  end

  def install
    bin.install "magdox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/magdox version")
  end
end
