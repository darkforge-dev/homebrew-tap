class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.27u8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u8/darkforge-darwin-arm64"
      sha256 "9656fd5351d026217165258bc591e9c5ba4e215614488b7fed87238d2b2cf7f6"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u8/darkforge-darwin-amd64"
      sha256 "2d65ac8b13e4040d7d83fed61d84b7220ab7aa4b5eb483fdeccd2f3094acfaa1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u8/darkforge-linux-arm64"
      sha256 "9e1c044a91dabf5fa613476413504b0366a6ca4c745252825ece950917786d21"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u8/darkforge-linux-amd64"
      sha256 "00179568e3df2a3ff3255cba4d270e0ab0c0730265f46f6d3f670a2e8269c5d2"
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
