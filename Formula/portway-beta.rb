class PortwayBeta < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.12.beta.2"
  license "Apache-2.0"
  conflicts_with "portway", because: "both install the portway binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.12.beta.2/portway-darwin-arm64.tar"
      sha256 "8871e3e49a330494bea4423ca900a05af9e371166a70ded537455f04746d5b4c"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.12.beta.2/portway-darwin-amd64.tar"
      sha256 "5c049b07390d6b98a94b4e1bf0b0497ec79fe4df9eee306ea8b56dcab9c18f7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.12.beta.2/portway-linux-arm64.tar"
      sha256 "dd4ff6274603b4ebccd6153a9e27816e4a5322b9068410e5ba7e4c2db42067ea"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.12.beta.2/portway-linux-amd64.tar"
      sha256 "6bc1ee5ab303d60304c5e6c50209b6a78cb3efadc7455fb2d4474745571390e5"
    end
  end

  def install
    bin.install "portway"
  end

  test do
    output = shell_output("#{bin}/portway version")
    assert_match "version: v#{version}", output
    assert_match(/^core-protocol: \d+$/, output)
  end
end
