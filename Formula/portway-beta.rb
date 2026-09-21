class PortwayBeta < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.11.beta.3"
  license "Apache-2.0"
  conflicts_with "portway", because: "both install the portway binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.11.beta.3/portway-darwin-arm64.tar"
      sha256 "fafddfcbc4460b782829c9b820b21a1f451ab8506b478e7b850fbd3544c5693c"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.11.beta.3/portway-darwin-amd64.tar"
      sha256 "2dbebbd4b3762564cb397b4d43ea174fd2310e5e18ea196c6c69391c92bf4032"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.11.beta.3/portway-linux-arm64.tar"
      sha256 "869215dce3007dcbf509f93abd40f089f49f10c74f7af464e589e77cf4179582"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.11.beta.3/portway-linux-amd64.tar"
      sha256 "32947d19ab7f60fe7e11adf0a10511fa41b988bf50c221d4843415f39315d4a2"
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
