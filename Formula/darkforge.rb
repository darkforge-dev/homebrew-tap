class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.27u7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u7/darkforge-darwin-arm64"
      sha256 "dbe67421025fe8d8899282c3fe156624cd0da7a432f53252e1f7f5753a4d89a0"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u7/darkforge-darwin-amd64"
      sha256 "dc9c286dcc1f61d5b36fcdd006c001fe966dc036ed11925faf4e3a0f3158ab32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u7/darkforge-linux-arm64"
      sha256 "327f480d4d2130a4afb6374f2c452c7884f79c17a8867a7612d79af1b076e59e"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u7/darkforge-linux-amd64"
      sha256 "4ee185b2b0368c5ba73de6875b99a7cd8d6c711266a6eea9fe3b8f9a95db41d3"
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
