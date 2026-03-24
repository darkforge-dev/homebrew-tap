class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.17"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.17/darkforge-darwin-arm64"
      sha256 "8c20b30941365f20859ad57d268207016293582d7b62918a70fdd91f587bcb6f"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.17/darkforge-darwin-amd64"
      sha256 "cf5b2dad1ef4d69ea1dc155ce245e51511acaa9c9a68d9a80bedd2e07494e1be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.17/darkforge-linux-arm64"
      sha256 "fdf8341a2bdd304f1fee447fdfe57cd111b3afd652d1057658bdc60186cb0854"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.17/darkforge-linux-amd64"
      sha256 "3515c1020380e75d9531d62f6169f0c711b1120a7c29a7afc81dec2c8b1f374d"
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
