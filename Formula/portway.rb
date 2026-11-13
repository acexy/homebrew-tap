class Portway < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes"
  homepage "https://github.com/acexy/portway"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.17/portway-darwin-arm64.tar"
      sha256 "0cf8964b0222090fd106caaceb8be43df07fe412f6f7c4a6ec4833928b1ffac2"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.17/portway-darwin-amd64.tar"
      sha256 "72190b010ee946c845b132da4354a978ba4e8b12a3927bbe0ee4f6aa45b5fd84"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.17/portway-linux-arm64.tar"
      sha256 "78081d2cf3798719e6ad768fbe4ef929595134206d221cb082f8ad64a6d35a7e"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.17/portway-linux-amd64.tar"
      sha256 "f14899e63a4f3b67103d1ca644c643b927b5e3d995b5af06d8febeb25c1f88fb"
    end
  end

  def install
    bin.install "portway"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portway version")
  end
end
