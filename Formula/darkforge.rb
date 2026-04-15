class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "{{VERSION}}"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v{{VERSION}}/darkforge-darwin-arm64"
      sha256 "{{SHA_DARWIN_ARM64}}"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v{{VERSION}}/darkforge-darwin-amd64"
      sha256 "{{SHA_DARWIN_AMD64}}"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v{{VERSION}}/darkforge-linux-arm64"
      sha256 "{{SHA_LINUX_ARM64}}"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v{{VERSION}}/darkforge-linux-amd64"
      sha256 "{{SHA_LINUX_AMD64}}"
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
