class PortwaydBeta < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.12.beta.3"
  license "Apache-2.0"
  conflicts_with "portwayd", because: "both install the portwayd binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.12.beta.3/portway-darwin-arm64.tar"
      sha256 "f69488646008ceda4443bc46a8b24ffd57061e39c48e52069eafc8fbe72978fc"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.12.beta.3/portway-darwin-amd64.tar"
      sha256 "e7d8cccf3dac95fa6e6f2ae3b02ae8280c0e60f7838826bf5c0835975f2ff33f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.12.beta.3/portway-linux-arm64.tar"
      sha256 "4c09d033fd74ed6ec903a0bb75bbb2ab3e941999178ab2387c70eb0009b3cc3f"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.12.beta.3/portway-linux-amd64.tar"
      sha256 "a29bedc4294610b9b0932b8a5352edecaf1f2b9e0d98dd4d14a74fd838030392"
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
