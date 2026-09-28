class Portwayd < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes"
  homepage "https://github.com/acexy/portway"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.12/portway-darwin-arm64.tar"
      sha256 "dfb953d871b97ff66bdcb328ec304bd49e72345257581bbd090795ed9ad2f82e"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.12/portway-darwin-amd64.tar"
      sha256 "86fa35d387b9e7de99e4470933e1867f0a82a25adf0852b55514d33541ff450a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.12/portway-linux-arm64.tar"
      sha256 "90b052f1cb0bf2ae87a5c039c4d1de307f16e20865f704aac2d91bfe64fafbbd"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.12/portway-linux-amd64.tar"
      sha256 "180616b74c72c1e5236cb907a74b59d3ed9f07fa6ff69987edfb79bf6894afcd"
    end
  end

  def install
    bin.install "portwayd"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portwayd version")
  end
end
