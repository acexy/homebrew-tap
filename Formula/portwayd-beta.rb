class PortwaydBeta < Formula
  desc "Secure reverse tunneling server (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.9.beta"
  license "Apache-2.0"
  conflicts_with "portwayd", because: "both install the portwayd binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.9.beta/portway-darwin-arm64.tar"
      sha256 "cf82ad92a6027c93868dd2bb111b829d4aba4838b8090ebe4351363069e4188f"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.9.beta/portway-darwin-amd64.tar"
      sha256 "785826254e67285079cda1232e6d71080af902d3626bb2fc413cdec34a401f14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.9.beta/portway-linux-arm64.tar"
      sha256 "47a20b566136fde6f71582be19feec195847b55c3698f266082be4700d88d498"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.9.beta/portway-linux-amd64.tar"
      sha256 "c67f37e70aa8764debb7992ec5af44bf6898934fe952c789cc3e7e4a97fd60ad"
    end
  end

  def install
    bin.install "portwayd"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portwayd version")
  end
end
