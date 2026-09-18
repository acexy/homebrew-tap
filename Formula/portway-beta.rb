class PortwayBeta < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.11.beta"
  license "Apache-2.0"
  conflicts_with "portway", because: "both install the portway binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.11.beta/portway-darwin-arm64.tar"
      sha256 "6cd7a0aef9d169676558406f9b93e12508f63d9cf6013bd2107b92e1ed46125b"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.11.beta/portway-darwin-amd64.tar"
      sha256 "50ea2fd767b8adc5a6d2d51f30faa90068eca03929c365e467db61359ac2be3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.11.beta/portway-linux-arm64.tar"
      sha256 "2fa4db9ba445c67ba3bf767152cb5ad1648948e57bed323813fab1e22a8fbb21"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.11.beta/portway-linux-amd64.tar"
      sha256 "99154fe0af7b3811208c5e0a17f5eb8e5c18786938e409e2521afce24e4fae49"
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
