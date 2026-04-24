class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.27u4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u4/darkforge-darwin-arm64"
      sha256 "593430c19a14d1736b8f8480cb8d35196823c3e0ad10f3f3ec749b1c858f5e7c"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u4/darkforge-darwin-amd64"
      sha256 "86868591ca89d055ed9d4283b9c5f44dfd5fb6f1d71b9c56b54e0ff6812d6887"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u4/darkforge-linux-arm64"
      sha256 "49f9a1b6358ee6d2f8a1600abe6aab6988cee880e1dda109eae45cd488b7cac0"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u4/darkforge-linux-amd64"
      sha256 "ba14b93ad543083015466a7b3b86bab7870f8c92889a831ac674ce2bf9a933d2"
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
