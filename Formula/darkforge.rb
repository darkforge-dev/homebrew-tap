class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.19"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.19/darkforge-darwin-arm64"
      sha256 "fbb0abfedff023e956712190cdf9aaa8ca6633cb2c97ddde9f8d1f7fc69762af"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.19/darkforge-darwin-amd64"
      sha256 "bc92f3a6c97c89362edd8ca3416c51b3538e9203da493f535b88b32d64756fdd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.19/darkforge-linux-arm64"
      sha256 "34cfcb1aa25d1ac9db334a2fe12cd18afaab9571385132df17068d3718c9665f"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.19/darkforge-linux-amd64"
      sha256 "9dc14adae7f8c6c03f00a8487aafd10b0343049b1d4d044a47714c4b27d29a2b"
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
