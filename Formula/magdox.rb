class Magdox < Formula
  desc "Scans source code locally for security issues and reports findings to MAGDOX"
  homepage "https://magdox.io"
  version "1.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.3/magdox_1.3.0_darwin_arm64.tar.gz"
      sha256 "f32fb511009c122ec36389e8ee210facdaed8612130bdfad0090c40f33b0710d"
    end
    on_intel do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.3/magdox_1.3.0_darwin_amd64.tar.gz"
      sha256 "e2cc97e7dfe19fa3757b77b9737010360124e6fbf9b41196cd432e282f6b88b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.3/magdox_1.3.0_linux_arm64.tar.gz"
      sha256 "5524d974196060d128919b747c4cf9d7e6a8e80b22620181ed46f9f882275223"
    end
    on_intel do
      url "https://github.com/Magdox/magdox-cli/releases/download/v1.3/magdox_1.3.0_linux_amd64.tar.gz"
      sha256 "3ac832bc2edcccace58f15ed67c84968c9e928f42876144fc44bc4736289d7be"
    end
  end

  def install
    bin.install "magdox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/magdox version")
  end
end
