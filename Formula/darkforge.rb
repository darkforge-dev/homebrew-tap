class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "v1.0.39m1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.39m1/darkforge-darwin-arm64"
      sha256 "4eaedf6c017dd3e6ab34fb214b28ff0837293176440f2b01a7269a5066bc58c7"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.39m1/darkforge-darwin-amd64"
      sha256 "dce72898a26f057dfe1460f059d7525599bcca7c64ed3c75ab5905cf44464729"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.39m1/darkforge-linux-arm64"
      sha256 "d7150a8c5b86f7c421f80d433a8d1d22a469fa1a9931604a2f2b437e4413c99f"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.39m1/darkforge-linux-amd64"
      sha256 "1751d94634878f789eff505683b92e5a7a9d7f2b17fd1eff93473cd7b9c748f6"
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
