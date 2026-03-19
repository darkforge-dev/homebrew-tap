class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.13"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.13/darkforge-darwin-arm64"
      sha256 "add91d2c13114053edef440d0b8a774eff7631d2fa13dbc28fa37ec97da930d7"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.13/darkforge-darwin-amd64"
      sha256 "a58a28c378382d81ffe991ee90d0288f34112b1d7ec8e7538e75d7d36c2b2ffa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.13/darkforge-linux-arm64"
      sha256 "4396ecefe35917732cdd3e221e485790a5a2a136281acbd06f56a58099fe2098"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.13/darkforge-linux-amd64"
      sha256 "cd1cedae537a446dcdb4e65b0a9f2fc87bf34988d1e175e418303919bc29c482"
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
