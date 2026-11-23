class Portway < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes"
  homepage "https://github.com/acexy/portway"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.18/portway-darwin-arm64.tar"
      sha256 "c4170e60f2df619c8f8bb51b7d5dd4bff6a1c6f3004b2381979549b9a297b0a9"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.18/portway-darwin-amd64.tar"
      sha256 "4d4c4993e90cfea4e1f0925a7764e752f0bdb8db8f2ad89e6a930b282f0e5863"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.18/portway-linux-arm64.tar"
      sha256 "831640a88e63c88ae252a93f2fa614f09915397cd77acf359d440f469613b58f"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.18/portway-linux-amd64.tar"
      sha256 "28f19cef4caa38deeda87688cd0a53ce0f1f62173ccaa62e8c686af9c44724e3"
    end
  end

  def install
    bin.install "portway"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portway version")
  end
end
