class PortwaydBeta < Formula
  desc "Secure reverse tunneling server (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.6.RC.1"
  license "Apache-2.0"
  conflicts_with "portwayd", because: "both install the portwayd binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.6.RC.1/portway-darwin-arm64.tar"
      sha256 "2861b713977fe2402192bdf63815764d5f68e5220d81ba13218e25f384ba6b60"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.6.RC.1/portway-darwin-amd64.tar"
      sha256 "bf7296d5f623f1e86a2bd005706759eff25fecf1fb84770624d2157117f7a407"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.6.RC.1/portway-linux-arm64.tar"
      sha256 "2861b713977fe2402192bdf63815764d5f68e5220d81ba13218e25f384ba6b60"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.6.RC.1/portway-linux-amd64.tar"
      sha256 "1e9ec8f095a67d2920eb26222a2f7995133e4599af3abb861ae9f2fa79fb5018"
    end
  end

  def install
    bin.install "portwayd"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portwayd version")
  end
end
