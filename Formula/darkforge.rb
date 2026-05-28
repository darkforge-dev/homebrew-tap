class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "v1.0.42m3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.42m3/darkforge-darwin-arm64"
      sha256 "23be09ad0f33d41c1638aacb1e228e7194b1e315b23396d44e422b7111624dda"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.42m3/darkforge-darwin-amd64"
      sha256 "5c6839a74c253c2c36a2a87adc36adb8420e3cc61ee126c4e1914e498452b6fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.42m3/darkforge-linux-arm64"
      sha256 "c2c55afa8744210da8ee41926e9633599348967f308187dee6a472e3ea81aeaa"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.42m3/darkforge-linux-amd64"
      sha256 "92f9a199626feb72b3f251dcc63f594bf0f5c2c59108c1284a2cd7595d260027"
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
