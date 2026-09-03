class Portway < Formula
  desc "Secure reverse tunneling client"
  homepage "https://github.com/acexy/portway"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.7/portway-darwin-arm64.tar"
      sha256 "62c18d4769c8500c6328c25508718e7404d5cb86c4dba71c3799a337007fd4e1"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.7/portway-darwin-amd64.tar"
      sha256 "16cfcc3644b97e7548edca5b0f76cb5e37e188ba56adaffe0c2eac86c0a670da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.7/portway-linux-arm64.tar"
      sha256 "b52196be2be7e43c4d6921b9797e1ee69b355bdc7b5f1dc2a919bc098e37e068"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.7/portway-linux-amd64.tar"
      sha256 "92ee30ebf72dcfbc21d31afb49c56f18845f25c5881ce1f545b35485dc975734"
    end
  end

  def install
    bin.install "portway"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portway version")
  end
end
