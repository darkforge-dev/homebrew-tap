class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.10"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.10/darkforge-darwin-arm64"
      sha256 "6fb8931c374ac997c0bdd2524658c9c8d410b5713f6ba1ed6e6b7c7fbe896f9d"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.10/darkforge-darwin-amd64"
      sha256 "dc9d8b79192fa5d224f0aef126b5483a2baab0f77cb2f3d626df8ccd7596ab94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.10/darkforge-linux-arm64"
      sha256 "7a239bc39168a536d0b1a31467cc7af53bc638f62c59181ef8b5ada0773c4df6"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.10/darkforge-linux-amd64"
      sha256 "6275b477295e95b418be102c738304c3ec59f960ce039059509454fa28499d37"
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
