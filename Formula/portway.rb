class Portway < Formula
  desc "Secure reverse tunneling client"
  homepage "https://github.com/acexy/portway"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.2/portway-darwin-arm64.tar"
      sha256 "df9d83070356a7111297f7c5056a571eb1c15f99fbaa18054a3c52363e72891a"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.2/portway-darwin-amd64.tar"
      sha256 "994f2002cb02b931d3d1a9f6a1a217c4fc9b8ced107460c7d01768dcf2cd185f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.2/portway-linux-arm64.tar"
      sha256 "ad52973f57cb9b4b487ce461c98f3bb4e69fbf51bb93a6701de7983e6e5c017a"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.2/portway-linux-amd64.tar"
      sha256 "8e3ff60e3badb231031ed52ccdf2d5f8bdf12368d6ce59e34fb8a46127c53dc2"
    end
  end

  def install
    bin.install "portway"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portway version")
  end
end
