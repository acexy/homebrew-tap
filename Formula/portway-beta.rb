class PortwayBeta < Formula
  desc "Secure reverse tunneling client (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.4.beta"
  license "Apache-2.0"
  conflicts_with "portway", because: "both install the portway binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.4.beta/portway-darwin-arm64.tar"
      sha256 "5c15c31581c5fb46125afa959af449650b382c6a197e9e5aef311e591d710ff6"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.4.beta/portway-darwin-amd64.tar"
      sha256 "5571fdcc8534b6db8d20773396035fc79e805437ee8673bb0b79cf4c599baefc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.4.beta/portway-linux-arm64.tar"
      sha256 "5f5ca2088308ada67c2325de73b9d3a4f45b7893fdb5402d279fc7e9ff91130f"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.4.beta/portway-linux-amd64.tar"
      sha256 "c24242e48b4880a79c7444dcb5271a9a86e77e9616dd87363daeff687a245e0d"
    end
  end

  def install
    bin.install "portway"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portway version")
  end
end
