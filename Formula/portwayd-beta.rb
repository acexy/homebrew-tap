class PortwaydBeta < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.13.beta"
  license "Apache-2.0"
  conflicts_with "portwayd", because: "both install the portwayd binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.13.beta/portway-darwin-arm64.tar"
      sha256 "bbc15981301dd8592557dd4f58da4b6dbbee1e65d0241b05227431e096adb27c"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.13.beta/portway-darwin-amd64.tar"
      sha256 "7a007d26d59787b4fb998d15b8cca46fdcda8a63b9f112c0e6968752661fb8cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.13.beta/portway-linux-arm64.tar"
      sha256 "9e3efe7e99ff99be2b70709480d0cc7f6edeed023954bad725cff0d9ca50cbb8"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.13.beta/portway-linux-amd64.tar"
      sha256 "6d8d42fa16a21e46beee0dbf731cb2e4a5778f9b160a4e7d80ba68a6fa072c05"
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
