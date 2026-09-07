class PortwayBeta < Formula
  desc "Secure reverse tunneling client (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.8.RC"
  license "Apache-2.0"
  conflicts_with "portway", because: "both install the portway binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.8.RC/portway-darwin-arm64.tar"
      sha256 "47e20d35fe622af05b9026f3d7d8fd4ddaf701a1864b1e72d92f4fda1973b4ca"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.8.RC/portway-darwin-amd64.tar"
      sha256 "fdebed7008d80d0ee20ea69ae8ddaddd39e2dadaf93b502b63eae44038225b98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.8.RC/portway-linux-arm64.tar"
      sha256 "cb3abd7f681b0afbc01a185ba8730ee902118b7b81e6d3b09dd900924d7b11ff"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.8.RC/portway-linux-amd64.tar"
      sha256 "9537518b61bda62614897e6379a91db746cb3318de06b6c2149c41996cf67050"
    end
  end

  def install
    bin.install "portway"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portway version")
  end
end
