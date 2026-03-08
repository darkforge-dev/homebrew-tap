class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.5/darkforge-darwin-arm64"
      sha256 "40252f9bd59857cfe3a3b68aa443aabe5ddcde3890ab25bb74ac61e8201f9d9f"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.5/darkforge-darwin-amd64"
      sha256 "ecb66799513b6db1a5c20884f298e81cfc32b500dd44bd71fcc7611c4e448f76"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.5/darkforge-linux-arm64"
      sha256 "3efde3a0ba66360c88709c85a4fbe37eae6cfc6c46830a2140bfa44dbd131533"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.5/darkforge-linux-amd64"
      sha256 "027fe77c1f26a48b4bfe7f6bdd903483fc04d39ff0c8ffa647440c47321e62cb"
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
