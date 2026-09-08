class Portwayd < Formula
  desc "Secure reverse tunneling server"
  homepage "https://github.com/acexy/portway"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.8/portway-darwin-arm64.tar"
      sha256 "32b916d64b6355e15e082f61b0c5fd24986788108555e16dfeecbb0ce52e5aba"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.8/portway-darwin-amd64.tar"
      sha256 "86ad26391ec32262208a100dd2a03b187d494e1750319bd3964cdf88e556b901"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.8/portway-linux-arm64.tar"
      sha256 "84097f5135e74ded19631a4a91d271c408acbce5ce7c40e498663d62561cf505"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.8/portway-linux-amd64.tar"
      sha256 "7192a471bf2a8b418e45581ddb4ad5b17c812512452844866a205ccd9916ca43"
    end
  end

  def install
    bin.install "portwayd"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portwayd version")
  end
end
