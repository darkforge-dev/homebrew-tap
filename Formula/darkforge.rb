class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.35m9"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m9/darkforge-darwin-arm64"
      sha256 "b2042768273343d2e7dd8a720d205cff63e6bc2766792a28bfcc45811fc2b928"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m9/darkforge-darwin-amd64"
      sha256 "3365919468747f7d188c623816854c65ac8108eee986ac8b15bdce3f938e9500"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m9/darkforge-linux-arm64"
      sha256 "0e380210cf0e75f9282effa8db80d40104cc7c096848a38a4bf27f0f12b11825"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m9/darkforge-linux-amd64"
      sha256 "d72e5c0fba993b16df47ea8151e1e6e5881df40b9a77c54b2cead502a683cb4f"
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
