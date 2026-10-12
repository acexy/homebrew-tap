class PortwayBeta < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.13.beta.2"
  license "Apache-2.0"
  conflicts_with "portway", because: "both install the portway binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.13.beta.2/portway-darwin-arm64.tar"
      sha256 "e0a80d3f56db83f9a752c3b5a94e7c67214db19cad85fd4c21aef4e68c1defef"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.13.beta.2/portway-darwin-amd64.tar"
      sha256 "899761f99ee7f06e45d3cf6233fc896ed2e65cc447c57e8a2bdbb9038d0ed2fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.13.beta.2/portway-linux-arm64.tar"
      sha256 "2d1e8751ae3718dd65a88a271da90dce389dbc0e6cb03fe6c2af9d2c50aa3af0"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.13.beta.2/portway-linux-amd64.tar"
      sha256 "328a0fcbc81db2279fc31232aa411eec21bce7351d81076e32cbd9f69875d028"
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
