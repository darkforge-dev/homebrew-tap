class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.27u1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u1/darkforge-darwin-arm64"
      sha256 "7e7d0490d0b71a7cdd0a10155bc5688e51dc35db0fd2ca07ff5c40e101e943b0"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u1/darkforge-darwin-amd64"
      sha256 "e4f6503bc2527d17bf9afc0e038d10dc320bc2055d7f2cd9a5aaed31db7ea941"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u1/darkforge-linux-arm64"
      sha256 "409601407ef078d30ff6e2aa2b06a226adab009e64da57b5306e87a6e2a11855"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u1/darkforge-linux-amd64"
      sha256 "ae8879ba78d5b5213f855c80a8cc05cb823a6d2f33fe7d8628673c198f0ac6ed"
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
