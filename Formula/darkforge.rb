class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.27u3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u3/darkforge-darwin-arm64"
      sha256 "5517712596e89d9d3b3b0a82881eb3877153bf4a343e722d59b7b8192aaf729b"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u3/darkforge-darwin-amd64"
      sha256 "3d765a4bdd8acfb5b6e300bff018a6c6ae0656f08d25c7deec13618b7418c155"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u3/darkforge-linux-arm64"
      sha256 "0b46ce1e1b62d772ba0d5755038116c8f016e10c083a7023897f3df1cda9eba2"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u3/darkforge-linux-amd64"
      sha256 "eed0b8798a2908e00a8f9d5a21034c3ea3890bcea086f06e9a3fb0ddf2580c51"
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
