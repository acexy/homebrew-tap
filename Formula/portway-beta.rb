class PortwayBeta < Formula
  desc "Secure reverse tunneling client (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.6.beta"
  license "Apache-2.0"
  conflicts_with "portway", because: "both install the portway binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.6.beta/portway-darwin-arm64.tar"
      sha256 "52a0772ab2bf8687942f883a1ae0e5cfd98e2c40032513ddb0b009a7565accbb"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.6.beta/portway-darwin-amd64.tar"
      sha256 "b42dfe0d0745a9408f9d13bb485478d08bcacd4733f1afd5d0026a133e0a3c0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.6.beta/portway-linux-arm64.tar"
      sha256 "6b10c71c0b965423fb08be0d028e8e2f695c0939edfbd391f5470bf2dfb421d8"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.6.beta/portway-linux-amd64.tar"
      sha256 "7bf439712ffbc7b6b6af92fe33915a9e661f2cb1658e7940cb8e782f1f8be096"
    end
  end

  def install
    bin.install "portway"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portway version")
  end
end
