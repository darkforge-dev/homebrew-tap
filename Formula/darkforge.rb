class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.35m2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m2/darkforge-darwin-arm64"
      sha256 "df46633c9cedd72f90071d3d99d576f91aab3340a7e34a1624d6a8c4897feb20"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m2/darkforge-darwin-amd64"
      sha256 "3fa88bd3b8daa0eb5e95e9ee4de79a6d5a5983df536bc29ed44f3e02a464b3da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m2/darkforge-linux-arm64"
      sha256 "cbdd924eab15675d45f280f1e5ebd86fcc6a82875709440c6f006729187381e2"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m2/darkforge-linux-amd64"
      sha256 "b8153b96473fd0450092ec168238a9f120df01a5969d16a8e36b0930d3171270"
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
