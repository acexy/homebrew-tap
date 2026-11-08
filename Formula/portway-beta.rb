class PortwayBeta < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.17.beta"
  license "Apache-2.0"
  conflicts_with "portway", because: "both install the portway binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.17.beta/portway-darwin-arm64.tar"
      sha256 "676987fbb85fd57b0517877c5aaba7f2378ff30aa74e492b2b95795be97fc7dd"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.17.beta/portway-darwin-amd64.tar"
      sha256 "f987d0353cfb3d79e1fe3d97c8fd21444c4ce9be27047cf6197fe50500186f6b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.17.beta/portway-linux-arm64.tar"
      sha256 "bd74daaf5fb0fff1bcdc4a65ce421da8aae730b07bd98f7812dfee036148ad96"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.17.beta/portway-linux-amd64.tar"
      sha256 "cd3db15965e3affb087b86aaeb32f660bbd1bd13a96467337627d857f366ebb7"
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
