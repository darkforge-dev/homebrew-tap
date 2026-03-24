class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.18"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.18/darkforge-darwin-arm64"
      sha256 "c8927cd8d8139f2826fb5307fbf7c674f219a4066fede544f5929901912795f7"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.18/darkforge-darwin-amd64"
      sha256 "46cac7987acfdd76b0d827b98338b5cb3a86a1468c0033262d3d9c373bfe6a60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.18/darkforge-linux-arm64"
      sha256 "aad64475f0146c6c4e958d417e115b534818c1542482959e4ebe9f20acdc1e7c"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.18/darkforge-linux-amd64"
      sha256 "f8429eac7b938b39b3fe2c26ac54709da76c19dc5de4f7786cdec19af7312627"
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
