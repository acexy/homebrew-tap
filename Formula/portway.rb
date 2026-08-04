class Portway < Formula
  desc "Secure reverse tunneling client"
  homepage "https://github.com/acexy/portway"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.1/portway-darwin-arm64.tar"
      sha256 "a65fb555f97898ca19083b1a1cee0def8ed78c21b266652fafacb2232d6c581e"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.1/portway-darwin-amd64.tar"
      sha256 "56ae4fe747f1b9693ed7f65d15fc82389f2ff5c9bb25b5ee93ce3df55a11c8af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.1/portway-linux-arm64.tar"
      sha256 "00342886696b586f3b0bd00ceb61de1850e6758a6501335fb1e624be568cc8ae"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.1/portway-linux-amd64.tar"
      sha256 "d4b45b36a23aa072e7b94b68d8b97114ddbfa9c47a05aac07ed5387d007a8108"
    end
  end

  def install
    bin.install "portway"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portway version")
  end
end
