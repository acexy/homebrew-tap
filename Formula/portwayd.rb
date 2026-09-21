class Portwayd < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes"
  homepage "https://github.com/acexy/portway"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.11/portway-darwin-arm64.tar"
      sha256 "f45c590872dc246b2555b958cd87c4ac0d39656c86cf157637996b059249bcdb"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.11/portway-darwin-amd64.tar"
      sha256 "d45bbeb3156220b2e14d358c82ab6bac9243a6e08c69c8eada2a821923abff79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.11/portway-linux-arm64.tar"
      sha256 "2b5da8413d1e3ec013bef4a6c6069f0a23fca1dc5d11e3657a6475252952b270"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.11/portway-linux-amd64.tar"
      sha256 "89ae718134e23552f71f85c183c01f724a9ac1e582e3e7c7a8c84acf2256a391"
    end
  end

  def install
    bin.install "portwayd"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portwayd version")
  end
end
