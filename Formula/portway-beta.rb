class PortwayBeta < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.18.beta"
  license "Apache-2.0"
  conflicts_with "portway", because: "both install the portway binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.18.beta/portway-darwin-arm64.tar"
      sha256 "177aaad6108927e54f01b9e8f82ce344738fb297676b5340cfd3d0039e951be1"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.18.beta/portway-darwin-amd64.tar"
      sha256 "3f2d678448516cfdc52b273243bd0c9c302e99d9a92f94e45603e4fe6bcb43f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.18.beta/portway-linux-arm64.tar"
      sha256 "1d9ea98c891dfd817df1caa78826754abb95af285b35683d25a88c4abe912584"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.18.beta/portway-linux-amd64.tar"
      sha256 "5db1da24d57760acd0105adf5784afbbaf677c191859ff7bba760c07de1c1260"
    end
  end

  def install
    bin.install "portway"
  end

  test do
    output = shell_output("#{bin}/portway version")
    assert_match "version: v#{version}", output
    assert_match(/^core-protocol: \d+$/, output)
  end
end
