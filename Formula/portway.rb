class Portway < Formula
  desc "Secure reverse tunneling client"
  homepage "https://github.com/acexy/portway"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.6/portway-darwin-arm64.tar"
      sha256 "6cf7c47cc39a1849d522ed800054a6abdccec3359ced175a1ff595e5714e00d6"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.6/portway-darwin-amd64.tar"
      sha256 "3b5c0d6e4cc3c5c4bbe949b77dd86fe467169c34ef8c345503a2c0364bf94e7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.6/portway-linux-arm64.tar"
      sha256 "aad4d898f1b347ae20fe9e079d72d2b14fbcf3844249b10f0d294d28699489d2"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.6/portway-linux-amd64.tar"
      sha256 "25ea5cb599fc68bcba2df4cf9b25237d3973c0d020bfaf943bdbf664a56b15a8"
    end
  end

  def install
    bin.install "portway"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portway version")
  end
end
