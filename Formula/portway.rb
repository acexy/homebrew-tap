class Portway < Formula
  desc "Secure reverse tunneling client"
  homepage "https://github.com/acexy/portway"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.4/portway-darwin-arm64.tar"
      sha256 "2ee7bc750da58f20ef04702bec8f8bc4b7657c030a96058aae4cd32139667868"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.4/portway-darwin-amd64.tar"
      sha256 "821a6f7f8603a94e1b118c7f1357cb5d027313253e9cc63924f442e1feb3dc94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.4/portway-linux-arm64.tar"
      sha256 "c779fdb8ba87304f70f546d8a7862fb657b004eba0d6298923ed780c5106ec70"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.4/portway-linux-amd64.tar"
      sha256 "0a16423a55642194a6fd3a52ac8091a4b134873314dafbd30948b9c3aecc1ca9"
    end
  end

  def install
    bin.install "portway"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portway version")
  end
end
