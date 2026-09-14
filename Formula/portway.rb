class Portway < Formula
  desc "Secure reverse tunneling client"
  homepage "https://github.com/acexy/portway"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.9/portway-darwin-arm64.tar"
      sha256 "35515e8f72f42bb4ff6c5afe7e9b94ee14cdf9afbb011eea5dd6578eae5d8286"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.9/portway-darwin-amd64.tar"
      sha256 "3157954e7e1ae8ec22df503fd02cd715e53516ca901ab231011b0f23265b9c1d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.9/portway-linux-arm64.tar"
      sha256 "9305c602e163bccd50180d5db9adc477686056997e67cfe45cb0d60045b59ff9"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.9/portway-linux-amd64.tar"
      sha256 "572785963fba0fddfd6dca6568d9a1ac2dbd562aaf0952ef829d17d6eb4ba9a5"
    end
  end

  def install
    bin.install "portway"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portway version")
  end
end
