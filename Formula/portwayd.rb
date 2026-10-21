class Portwayd < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes"
  homepage "https://github.com/acexy/portway"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.14/portway-darwin-arm64.tar"
      sha256 "b4cbd75dab3177d27a3738fbcbe6a356f0079e0e61da41207e9ecaed923b12b0"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.14/portway-darwin-amd64.tar"
      sha256 "2c826150cefaf7eb5037bc5bc7ce2b0e2523659c225ec9f82de90ba40de186a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.14/portway-linux-arm64.tar"
      sha256 "53841c900ac2c1aeaccf42b746beb4e57e0551fde6f56524f1dc54d7f16f54f6"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.14/portway-linux-amd64.tar"
      sha256 "33439aa443bf6f6413c92f5c0da57f3b2f3d7dbfa98c026dabdcb8fc0831db49"
    end
  end

  def install
    bin.install "portwayd"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portwayd version")
  end
end
