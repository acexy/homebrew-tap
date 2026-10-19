class PortwaydBeta < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.14.beta"
  license "Apache-2.0"
  conflicts_with "portwayd", because: "both install the portwayd binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.14.beta/portway-darwin-arm64.tar"
      sha256 "0d7aa0c248cec83ecca6d5567591051231b99825be1b46c755409d775678bdba"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.14.beta/portway-darwin-amd64.tar"
      sha256 "eae0a9c791b436931fd94338c50bc8b46bb932ecd3fd63d456988b1f4904ff77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.14.beta/portway-linux-arm64.tar"
      sha256 "5f43a0c5bad58fa6b4ac5148f635d0ac7fbc2582eadf5bae502d6658f119488b"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.14.beta/portway-linux-amd64.tar"
      sha256 "809f8e7a75b2765f730281c587603ba419fb4e7a9b2589f98d076c507798dde5"
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
