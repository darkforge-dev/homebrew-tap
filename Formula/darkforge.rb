class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.35m8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m8/darkforge-darwin-arm64"
      sha256 "ef956200d1e031abf3dc2f552212097e85fb5557a08e6f0b03c3c58ba96f6c04"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m8/darkforge-darwin-amd64"
      sha256 "3fd5d038202bf4af268a91df81e412f733bbcf0ce2f60c5b17b00641af045f14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m8/darkforge-linux-arm64"
      sha256 "6838778f88e51b8c324e4228d8e64f29b7962ccf355252b658ddd245336eee7a"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m8/darkforge-linux-amd64"
      sha256 "2fc2402ac238370c4f21889ebb5d6f6bdd907e0ab8e9f1d7802b7738f29fecfd"
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
