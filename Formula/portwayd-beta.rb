class PortwaydBeta < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.11.beta.2"
  license "Apache-2.0"
  conflicts_with "portwayd", because: "both install the portwayd binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.11.beta.2/portway-darwin-arm64.tar"
      sha256 "ed1b9475808a7774eae4da2fac2b713cc2c2326fe1ac27957d4ab7094aeaf1ff"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.11.beta.2/portway-darwin-amd64.tar"
      sha256 "688047bca083b0e73a9236ac1cf9db0840579d5b3514d69d0d62dd663e5577f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.11.beta.2/portway-linux-arm64.tar"
      sha256 "3f72ccf4f2b8013004195a89cbc37604a31c4ce1bfa036270735b20be655035b"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.11.beta.2/portway-linux-amd64.tar"
      sha256 "3995a9e07dbe6fa94840740165f0fc18f326090ebdf62c696e1f28495d327bf4"
    end
  end

  def install
    bin.install "portwayd"
  end

  test do
    output = shell_output("#{bin}/portwayd version")
    assert_match "version: v#{version}", output
    assert_match(/^core-protocol: \d+$/, output)
  end
end
