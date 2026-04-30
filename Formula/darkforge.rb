class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.27u6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u6/darkforge-darwin-arm64"
      sha256 "5c3207e8b1e79031a5bafd86ba68dcf04950037ad7cf31249dceedce3cbf1a80"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u6/darkforge-darwin-amd64"
      sha256 "7a4ffba906b7b0f6e01e84acdf6b682e74492aef292fa9e5d4bab23cb349c40f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u6/darkforge-linux-arm64"
      sha256 "50e5cc147e4a6205414c976d5414cce7ce192a29a508ffb50d9043e35d902f19"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u6/darkforge-linux-amd64"
      sha256 "0694ab402becd6be58ac59645faa4df8fe872378032843fc46c2e64bd2aaf60a"
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
