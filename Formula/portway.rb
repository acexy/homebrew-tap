class Portway < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes"
  homepage "https://github.com/acexy/portway"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.10/portway-darwin-arm64.tar"
      sha256 "73f2b402b00b21f2abb81da67859d12fafeaaef8070fb8d4e48724842038ecff"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.10/portway-darwin-amd64.tar"
      sha256 "fd3d22b5c1c5341338d12cbb5fb0fca7d34d3ce28d933059c47b05ace3228306"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.10/portway-linux-arm64.tar"
      sha256 "c1aa3906f11dfe099ec9f0b039cc7c199d01b83da1474cc7e9a98029a2e47a48"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.10/portway-linux-amd64.tar"
      sha256 "97a70c11f67b9fc679e1f28dc30e399762805d4f0e58d6a525e566609103d8b5"
    end
  end

  def install
    bin.install "portway"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portway version")
  end
end
