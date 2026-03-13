class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.8/darkforge-darwin-arm64"
      sha256 "84203c5d5f8cbc6ead66a3efbc76f039e8fc1cfaeca1a3fc2f6fd909881896ce"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.8/darkforge-darwin-amd64"
      sha256 "356a960544b24d7fd9c097dcb7020c47597df7cad28b001b9256a00b1f6aa91f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.8/darkforge-linux-arm64"
      sha256 "ffc61c838e5759a2491387198fc4066e6f7d70cb65a53b09c34a90f81cb6b935"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.8/darkforge-linux-amd64"
      sha256 "70acbd51377c2444566018e6d0e5f22a52ae86132495e2d5adbf3dab3727cc74"
    end
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "darkforge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/darkforge version")
  end
end
