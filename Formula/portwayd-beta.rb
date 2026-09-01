class PortwaydBeta < Formula
  desc "Secure reverse tunneling server (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.6.RC"
  license "Apache-2.0"
  conflicts_with "portwayd", because: "both install the portwayd binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.6.RC/portway-darwin-arm64.tar"
      sha256 "63f59c0ad4be995ecdb1d9e518ab6c2cd2fabd35b9c0dc936cebd3c1e2feaa09"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.6.RC/portway-darwin-amd64.tar"
      sha256 "ba76b41dbeb7047c7234edaf2d8e6c4ee14fb8b65b446681db49aa242157ce02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.6.RC/portway-linux-arm64.tar"
      sha256 "4c1182341d4fce5b7e2b80c433865b4745e7b0b71940aaab63cae82636209af1"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.6.RC/portway-linux-amd64.tar"
      sha256 "c715cf4c0d90fed998521513ad3c71ad0644e9e163b83b794a253c933fe7355b"
    end
  end

  def install
    bin.install "portwayd"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portwayd version")
  end
end
