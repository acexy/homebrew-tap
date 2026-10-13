class Portwayd < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes"
  homepage "https://github.com/acexy/portway"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.13/portway-darwin-arm64.tar"
      sha256 "84608ce44da511a1af6c0d100359daf2238a7255550e82b5c41bafbd3d53fa05"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.13/portway-darwin-amd64.tar"
      sha256 "58c82fe3adbf78c1df460e865ac8fe925656c3fd66e8de9a6ff96669a32e13e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.13/portway-linux-arm64.tar"
      sha256 "16a937ade9355baac8ffa3707a059ddcd0ea71c2606831335e4349a7e84808f6"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.13/portway-linux-amd64.tar"
      sha256 "9031ec6581a2e7a761fda5dcaf0f2d158e2adc34a227a20b7369593a2e2c7799"
    end
  end

  def install
    bin.install "portwayd"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portwayd version")
  end
end
