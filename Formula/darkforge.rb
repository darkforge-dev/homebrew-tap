class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.2/darkforge-darwin-arm64"
      sha256 "52e07acf297dc1e4ccd4c861e08291cb3b334219f64b9b1d8abf80fcc83dca47"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.2/darkforge-darwin-amd64"
      sha256 "76b2946b5c575f069f0fdefc550b1f125641c7cdc6cb6994edc5f53240347b49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.2/darkforge-linux-arm64"
      sha256 "8cd9f4e10db0c6c492bc5db88fba68c2b7196fc20ee95dbfffb85aeef6c2f0e3"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.2/darkforge-linux-amd64"
      sha256 "060d3d4a0f6364e4119eafb0dff91e504ec08e733d1d7248750eb560f6f54f8e"
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
