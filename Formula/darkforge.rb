class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.22"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.22/darkforge-darwin-arm64"
      sha256 "6a04f4ee5df26118fe78e5c54518df8444945c32cea687fdc898c57caf1da25c"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.22/darkforge-darwin-amd64"
      sha256 "1c00d80cf73246bdf84223d74c738f20ea0cdd802f23a28f85579afcdadce164"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.22/darkforge-linux-arm64"
      sha256 "d20372166a0ec99299187fca84add38e004c47a90f56ba74d1eb27ae40aa1d20"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.22/darkforge-linux-amd64"
      sha256 "10b8d9cc0ea3be9cb549bd0ce0c3a35ff94a12d308e6f0428a1dac53d39bc7c5"
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
