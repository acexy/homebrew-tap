class PortwayBeta < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.10.beta"
  license "Apache-2.0"
  conflicts_with "portway", because: "both install the portway binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.10.beta/portway-darwin-arm64.tar"
      sha256 "7eb2a61f6c98cca80002b147e555d450e4dfd25647bd80d43c05f57aef1149c2"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.10.beta/portway-darwin-amd64.tar"
      sha256 "aceb63621d5a886424a4211eec1f32bc9fdb307d4d8522369d80519994466c65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.10.beta/portway-linux-arm64.tar"
      sha256 "11157e3c5b358acb685207d7bd626bddb7a45a32c3d325cd7ba6d708543b08a7"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.10.beta/portway-linux-amd64.tar"
      sha256 "cd85fb457784527b34543f296736301e96042e7b22bf32d2800e6e2cf9d5cb2c"
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
