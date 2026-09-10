class PortwayBeta < Formula
  desc "Secure reverse tunneling client (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.9.beta.2"
  license "Apache-2.0"
  conflicts_with "portway", because: "both install the portway binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.9.beta.2/portway-darwin-arm64.tar"
      sha256 "41095c28fab44f80cbc130861c47ab0afbffc037e9d553f44dfc974fc663c66e"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.9.beta.2/portway-darwin-amd64.tar"
      sha256 "be065abef5999d2e81979bd77b6574cc0193ea94405d414c8d73e018f0261fdb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.9.beta.2/portway-linux-arm64.tar"
      sha256 "72738566c30cb682c77ea08dc96b7c1f3f601281ec9711b7d0baa64d71755faf"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.9.beta.2/portway-linux-amd64.tar"
      sha256 "e720b9dc2f50ad6553dc3746a07d14c495ae500e61bc47227cee171a8dba6be1"
    end
  end

  def install
    bin.install "portway"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portway version")
  end
end
