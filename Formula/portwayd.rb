class Portwayd < Formula
  desc "Secure reverse tunneling server"
  homepage "https://github.com/acexy/portway"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.0/portway-darwin-arm64.tar"
      sha256 "a579079c4b1e5e4c023a8c89c975978a98b94b18002f6ebdaaf937058961d903"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.0/portway-darwin-amd64.tar"
      sha256 "a33e86edd07905cf7077658f55928ccd5e6ee54b125e3d3178a341c5180aa61a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.0/portway-linux-arm64.tar"
      sha256 "60d429de66215dd820a8698631b8017e4e517ad286f3a8c03e4e6305a307354f"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.0/portway-linux-amd64.tar"
      sha256 "5b3a2fe0c9b1f0554ef68217e3f2c0801c699fe2f88e6dfc5803b7a10be933ee"
    end
  end

  def install
    bin.install "portwayd"
  end

  test do
    assert_match "portwayd v#{version}", shell_output("#{bin}/portwayd version")
  end
end
