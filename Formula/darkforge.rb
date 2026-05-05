class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.35m5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m5/darkforge-darwin-arm64"
      sha256 "8328008d60fe428ac09135da2db9813e822b3a8792aa0b982b982d67785f6257"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m5/darkforge-darwin-amd64"
      sha256 "d3165ea936c14c6dc98a33cd1bc3e8c9e6150047fd9fcd9feeee9aa4b47bdc82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m5/darkforge-linux-arm64"
      sha256 "3957cdcdac22fdc5d1c7d389c5bd3b95b43ee599b55869617e3f9714ca4b643b"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m5/darkforge-linux-amd64"
      sha256 "3ddcdc843dcd65e021e9c20e1c1a357eb3fcb658bf7cf47b5c309a08e843abd1"
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
