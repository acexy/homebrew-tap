class PortwaydBeta < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.10.beta.2"
  license "Apache-2.0"
  conflicts_with "portwayd", because: "both install the portwayd binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.10.beta.2/portway-darwin-arm64.tar"
      sha256 "ad0ee20081cd1ab248c4ba64de84adc4d0a3bdff0da8b51dac77142ba7bffb5c"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.10.beta.2/portway-darwin-amd64.tar"
      sha256 "b0944c589d22994782d83ae5f4eda7521d5c1ea17fb6f36f50e679e383fc92df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.10.beta.2/portway-linux-arm64.tar"
      sha256 "db6f44b56b892ebecc327f8079e532f73602f0a77a9cca735dfe620582bfc451"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.10.beta.2/portway-linux-amd64.tar"
      sha256 "810bc2b9aa1166ce5b76ca108c0609fff1305d23c0ada59136c517642f73d9a3"
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
