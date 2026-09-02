class PortwayBeta < Formula
  desc "Secure reverse tunneling client (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.7.beta"
  license "Apache-2.0"
  conflicts_with "portway", because: "both install the portway binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.7.beta/portway-darwin-arm64.tar"
      sha256 "869da2a9d18d84217213f5f6aac3cfb92116d1548e4fcf28938af930db13fff6"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.7.beta/portway-darwin-amd64.tar"
      sha256 "2bd7aa0391ad840440f818d3e902cd4fd88ec409ccd663e81477f30948639857"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.7.beta/portway-linux-arm64.tar"
      sha256 "32e7adf27105814f2f5c463a55e2d861e8cf1b6bc65dbaa6eb978d0a178fa564"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.7.beta/portway-linux-amd64.tar"
      sha256 "fc42e8ca6343e0dd06db153ea060a0b404edd6b5c33b16963bf1cb93de6072ce"
    end
  end

  def install
    bin.install "portway"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portway version")
  end
end
