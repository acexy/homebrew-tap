class PortwayBeta < Formula
  desc "Secure reverse tunneling client (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.6.beta.2"
  license "Apache-2.0"
  conflicts_with "portway", because: "both install the portway binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.6.beta.2/portway-darwin-arm64.tar"
      sha256 "b3b112867939352b4c6a96b25d5fa06dc3fa0443b321b995478b04d9638b03bb"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.6.beta.2/portway-darwin-amd64.tar"
      sha256 "a2c8c4637e22937e3356685c889117656716076ed53edba906849800349f84ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.6.beta.2/portway-linux-arm64.tar"
      sha256 "8ae04b6815514502b16124bc596db49495f4a6a31398e4c94ff2ba8670786f5f"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.6.beta.2/portway-linux-amd64.tar"
      sha256 "b3ddb37acae270583ec7425b6deae3fddecf7ba420763ce9d12cbe19a7fe1a28"
    end
  end

  def install
    bin.install "portway"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portway version")
  end
end
