class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.16"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.16/darkforge-darwin-arm64"
      sha256 "a80d4b818e390a3b72fc8f9280f22aaff8707c97b2888fa515b0cf914d7036e8"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.16/darkforge-darwin-amd64"
      sha256 "2dd157c5520b3490aac98912546aeb5346451cbcbb8960c2cde5e03e86aa5803"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.16/darkforge-linux-arm64"
      sha256 "ffce827c013c1d413d20c1d3e88375a7b39f5be8c2d24d3f2bc71434fb11b2bc"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.16/darkforge-linux-amd64"
      sha256 "7a8b607e58a86334203081e5a35016c407609a9d74c059545d16a1355808a050"
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
