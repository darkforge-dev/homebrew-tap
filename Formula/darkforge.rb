class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.35m7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m7/darkforge-darwin-arm64"
      sha256 "b320b8fb675b08ac70eba8658d1d39062527987e4a7b330f315a2160cd05dc4b"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m7/darkforge-darwin-amd64"
      sha256 "1b8b7bb1bfbebd94bcf0a5d115bbe8ae00248f2ff0087356b8e7f63d8b3b1798"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m7/darkforge-linux-arm64"
      sha256 "792b70807d74fcd97aa28285413f42556e781c80bebdd10443337651826e441e"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m7/darkforge-linux-amd64"
      sha256 "8e77552b3c7741bad12f101029e5d444606ea07b7225be5624ed74f4f82ba394"
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
