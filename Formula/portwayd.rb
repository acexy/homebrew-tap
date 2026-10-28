class Portwayd < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes"
  homepage "https://github.com/acexy/portway"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.15/portway-darwin-arm64.tar"
      sha256 "d3afea8e2704e1ee8ad197f530d8d776bd7564abaf13651de2250f5fea9b26fb"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.15/portway-darwin-amd64.tar"
      sha256 "6beb2f68b027acda0bdbcf180535c6f251f3cd1cd4eddc34fc4be9384a92e2d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.15/portway-linux-arm64.tar"
      sha256 "0e48f6c060f45f976cd38d30f15b281e70a7c3a710cff407a241ac5eff2340df"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.15/portway-linux-amd64.tar"
      sha256 "cc2c594e97498f701829d3ed55ff081c0462f2a1f471a82965fed1a6508bb599"
    end
  end

  def install
    bin.install "portwayd"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portwayd version")
  end
end
