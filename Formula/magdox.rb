class Magdox < Formula
  desc "Scans source code locally for security issues and reports findings to MAGDOX"
  homepage "https://magdox.io"
  version "1.3.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.3.1/magdox_1.3.1_darwin_arm64.tar.gz"
      sha256 "306cd2ec9d0ff5dee8363b1d77d62c31ed3afb6ab943a824b94502d9d68a5f6e"
    end
    on_intel do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.3.1/magdox_1.3.1_darwin_amd64.tar.gz"
      sha256 "afeeccc1a4ef1792be3b55e2cfb83c1e912e6eb2e4355ba086e0b5db6edd9678"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.3.1/magdox_1.3.1_linux_arm64.tar.gz"
      sha256 "82c9aefc1150e3d38e153e3eef66e13619f330c83a3c992dc5fbc691c1f3f652"
    end
    on_intel do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.3.1/magdox_1.3.1_linux_amd64.tar.gz"
      sha256 "14f12aea246c524d446636b27d9292ab88cb3a1e46262aab9a74302181523ff6"
    end
  end

  def install
    bin.install "magdox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/magdox version")
  end
end
