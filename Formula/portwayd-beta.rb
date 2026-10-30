class PortwaydBeta < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.16.beta"
  license "Apache-2.0"
  conflicts_with "portwayd", because: "both install the portwayd binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.16.beta/portway-darwin-arm64.tar"
      sha256 "a2975394462330ac48c147b8280c6026a7d2f00bd3726a0cbf12f072495a5864"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.16.beta/portway-darwin-amd64.tar"
      sha256 "8c7a41a0b618db7d78e275999a56f15b1e1785a03e5b88038b969d6e06041f04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.16.beta/portway-linux-arm64.tar"
      sha256 "6e2bd258981630106e52bd87529eead850a9adb06e1a31bb0544ad679fc3c7bf"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.16.beta/portway-linux-amd64.tar"
      sha256 "1e430443240708f86eb3157fb57feb5da07782a96256c8da2e42950c23eeead6"
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
