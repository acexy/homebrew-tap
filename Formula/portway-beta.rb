class PortwayBeta < Formula
  desc "Secure reverse tunneling client (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.9.RC"
  license "Apache-2.0"
  conflicts_with "portway", because: "both install the portway binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.9.RC/portway-darwin-arm64.tar"
      sha256 "112ed5a5f16ce7231c043160e4910e22004b6419aaaf785614f960c1ae3af7bf"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.9.RC/portway-darwin-amd64.tar"
      sha256 "4ffa103ba2b4a474921e8af20edbfef2454e64c0574277488cd4b8c32d4c60e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.9.RC/portway-linux-arm64.tar"
      sha256 "2f3307bd9d35409325515ef6ae14d24d3ab9430a93b04caa5691b96676b6e20c"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.9.RC/portway-linux-amd64.tar"
      sha256 "5a78c9dca0920847349dcc9aae072dde48aaa4679f6bb5626e49732d1e73a31a"
    end
  end

  def install
    bin.install "portway"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portway version")
  end
end
