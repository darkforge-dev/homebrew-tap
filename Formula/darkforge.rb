class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "v1.0.41m2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m2/darkforge-darwin-arm64"
      sha256 "a90beb41246713259749f329f609acd8b79aaa97f2088d09ae3cb25f1e236783"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m2/darkforge-darwin-amd64"
      sha256 "f949b1a930373673e8fb9cb3a373f935c6e57d322cd3106ce05fea21efeceefb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m2/darkforge-linux-arm64"
      sha256 "e5e4ab3310267e5d9736c9d1f150bd88ee534e2de22946ae3d7152740b2eb8fe"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m2/darkforge-linux-amd64"
      sha256 "566370ffafb6466273ceac34d31959bdc617bbe19ca99d6d825e81c2cc98bf5d"
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
