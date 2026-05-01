class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.27u9"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u9/darkforge-darwin-arm64"
      sha256 "47d09c8decf3706efbf26c511818da211c7136214b81bcf4de2d0a6f68baed77"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u9/darkforge-darwin-amd64"
      sha256 "53f28093f1622704e46233e4891648a91f3c66c6e6c52dcf7870bbe0f50dab9d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u9/darkforge-linux-arm64"
      sha256 "5d02fb4422347c3aa4219a220482454e5aac43c8960b536cd07af7ae82a4ab64"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u9/darkforge-linux-amd64"
      sha256 "446fc7377ca4c8e5b66810c3bea4fb10a0471e67d745234455c08b8a6af85a4d"
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
