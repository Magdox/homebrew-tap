class Magdox < Formula
  desc "Scans source code locally for security issues and reports findings to MAGDOX"
  homepage "https://magdox.io"
  version "1.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.3/magdox_1.3.0_darwin_arm64.tar.gz"
      sha256 "d8c21da61898aaae17fabe11400ff2c167a8f0a4c5935ca78286302ee0162ad7"
    end
    on_intel do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.3/magdox_1.3.0_darwin_amd64.tar.gz"
      sha256 "f5f5fafc1824e6a552dfa913d9f2e6d8423a5ea749325857c4009147b3eb0f46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.3/magdox_1.3.0_linux_arm64.tar.gz"
      sha256 "e06040b8e7db0c796803e0c945ced98e58022881ba2ae70d039806d0ee7b30d8"
    end
    on_intel do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.3/magdox_1.3.0_linux_amd64.tar.gz"
      sha256 "ba6a858428c7ea5e06228df8ae21a746a8bf5b98e8db3c7e32e181ffb912b998"
    end
  end

  def install
    bin.install "magdox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/magdox version")
  end
end
