class PortwayBeta < Formula
  desc "Secure reverse tunneling client (beta)"
  homepage "https://github.com/acexy/portway"
  version "0.1.8.RC.1"
  license "Apache-2.0"
  conflicts_with "portway", because: "both install the portway binary"

  on_macos do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.8.RC.1/portway-darwin-arm64.tar"
      sha256 "70fc6c08a8523af2af1f629a988ef5675c9e03e44d351698cd587700889004b8"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.8.RC.1/portway-darwin-amd64.tar"
      sha256 "c5570e63f4c46fa53c4937c9f1f200366d01a34b4ac9310a525c83affa1f84a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acexy/portway/releases/download/v0.1.8.RC.1/portway-linux-arm64.tar"
      sha256 "6228b5c7ae723255cbfe315534adc6d7c2d4be08c0ac5a0a80f146829036cec9"
    end

    on_intel do
      url "https://github.com/acexy/portway/releases/download/v0.1.8.RC.1/portway-linux-amd64.tar"
      sha256 "8482f2e344f884c25e697a4c223d23dbc459b4a42d74d08b674a1372be827f5c"
    end
  end

  def install
    bin.install "portway"
  end

  test do
    assert_match "version: v#{version}", shell_output("#{bin}/portway version")
  end
end
