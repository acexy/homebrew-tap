class PortwaydBeta < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.12.beta"
  license "Apache-2.0"
  conflicts_with "portwayd", because: "both install the portwayd binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.12.beta/portway-darwin-arm64.tar"
      sha256 "fbec2c021a31a8f24a8dbe723abcddaa9c9c402c5e165d845a59325ef1421096"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.12.beta/portway-darwin-amd64.tar"
      sha256 "bba16925b20de20b78e4d4d3bcb066fddde3e48872a6ec5a9afef5c17bcf2525"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.12.beta/portway-linux-arm64.tar"
      sha256 "2451b466d3eeda1140df181ae75380bd59dd2ffb98f8eb3437eb349657ead498"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.12.beta/portway-linux-amd64.tar"
      sha256 "f8ffc5b3441255a0295ad6a316de87e22dda678c411a2c544976af2c74b5be41"
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
