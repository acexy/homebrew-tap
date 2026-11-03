class Portway < Formula
  desc "Lightweight connectivity through Proxy, Forward, and VNet modes"
  homepage "https://github.com/acexy/portway"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.16/portway-darwin-arm64.tar"
      sha256 "2bd5ab3865cb4b46e317aa10db9e20c3f6eb66bb60f7dbd33ba079b10cc0ca6b"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.16/portway-darwin-amd64.tar"
      sha256 "2acc876a4579f6c9bb80a8d4b5807c65f00c338e7b1c712574a00d4ff760a4ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.16/portway-linux-arm64.tar"
      sha256 "54bad797f776e78041ff752a1bc4a06269eb930a0dc779ee46b68bbb9b9b6c55"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.16/portway-linux-amd64.tar"
      sha256 "ddd534737f2d438c4f7732c57593c36885b9e2ac0275b1acf8238810b9cba0b0"
    end
  end

  def install
    bin.install "portway"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portway version")
  end
end
