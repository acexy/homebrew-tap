class PortwayBeta < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.15.beta"
  license "Apache-2.0"
  conflicts_with "portway", because: "both install the portway binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.15.beta/portway-darwin-arm64.tar"
      sha256 "002b48f330d23e4376963becb3d7100f922cce93388662a27d65bdea184de172"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.15.beta/portway-darwin-amd64.tar"
      sha256 "fc5c1c430d244e18c618300eaa89f4824072f7998565fe22297f96cc908f18ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.15.beta/portway-linux-arm64.tar"
      sha256 "fe41fc7eeef1b648d33fb8b74368cd7dfde34edce40b109a84780ccd2d47e8c2"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.15.beta/portway-linux-amd64.tar"
      sha256 "3959902e4594d68724a780ff2b91ec461ecb32c10725b7326fb1743475fd83fa"
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
