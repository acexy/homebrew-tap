class PortwayBeta < Formula
  desc "Secure reverse tunneling client (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.3-rc"
  license "Apache-2.0"
  conflicts_with "portway", because: "both install the portway binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.3-rc/portway-darwin-arm64.tar"
      sha256 "618221e775e970b042bb546ce579d1ffbb4e4520ed9ee54d24ae4e20203443d7"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.3-rc/portway-darwin-amd64.tar"
      sha256 "7017eb35a3b73ff863046749f5c88dd5561b0f6bfafed0aebf91319df461cc22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.3-rc/portway-linux-arm64.tar"
      sha256 "50663d8b87a8c3c3aabec2d132d4cbeba299b1001c0ab3a93f2d6f84ea18a961"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.3-rc/portway-linux-amd64.tar"
      sha256 "faa13bb94ad6ac4131d35473b34c2a49044d93ab979025a96868777f3e7c5cce"
    end
  end

  def install
    bin.install "portway"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portway version")
  end
end
