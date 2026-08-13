class Portwayd < Formula
  desc "Secure reverse tunneling server"
  homepage "https://github.com/acexy/portway"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.3/portway-darwin-arm64.tar"
      sha256 "d3a57716d6acdb8d0b5ef11909e6aff69b3ab6fdf4bb485ff48e83ac8e524dbb"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.3/portway-darwin-amd64.tar"
      sha256 "66524242d54742b366ec5266b77328ab2f38da47775f9d7b16c8bc78151e9f86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.3/portway-linux-arm64.tar"
      sha256 "fa2660117fbe40567c9553e6aac3de82999a3ae3084d5f9d881a0b9fde728866"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.3/portway-linux-amd64.tar"
      sha256 "eabc006f22e5c1d2fb558c1e221fd63721053c8ccdb1d0ed48ee8c7411b35b7c"
    end
  end

  def install
    bin.install "portwayd"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portwayd version")
  end
end
