class Portwayd < Formula
  desc "Secure reverse tunneling server"
  homepage "https://github.com/acexy/portway"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.5/portway-darwin-arm64.tar"
      sha256 "ca96d74ddefda499095080502cae4b0da29c97f7e89ef25938cd51d0e848da5f"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.5/portway-darwin-amd64.tar"
      sha256 "bcb1f7dd1006726d1aaf9c9bd6d50c72aab46dbc3ada9d773af075e36a475528"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.5/portway-linux-arm64.tar"
      sha256 "064d65cf58c278e07cf2c3d2d2415af7ce4e9c7fe1e3547779c469db0c3ce838"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.5/portway-linux-amd64.tar"
      sha256 "ab58bd0a1c4a758d72c7750ca0f3fac1cd4d117c07c68eb91a666d5dafe00b12"
    end
  end

  def install
    bin.install "portwayd"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portwayd version")
  end
end
