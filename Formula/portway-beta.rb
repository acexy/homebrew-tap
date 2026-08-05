class PortwayBeta < Formula
  desc "Secure reverse tunneling client (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.2-beta"
  license "Apache-2.0"
  conflicts_with "portway", because: "both install the portway binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.2-beta/portway-darwin-arm64.tar"
      sha256 "69cc2e498130bcec6221c3b5c8f4e72a6f2043ff7b4ae1ecc007717943c1fb5f"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.2-beta/portway-darwin-amd64.tar"
      sha256 "9d09e53d30d9b7bbcf4f223df2380277ceb3bd8ad35082b3669be4b15b4fb487"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.2-beta/portway-linux-arm64.tar"
      sha256 "8c94e849d53a5b416660ef132495943d696055e4dcbdea03aa44790facfa7464"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.2-beta/portway-linux-amd64.tar"
      sha256 "3fefb2cdab79eefe9e58fa6cc962d445b0c6c03aead4041f4e9cab799eae1192"
    end
  end

  def install
    bin.install "portway"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portway version")
  end
end
