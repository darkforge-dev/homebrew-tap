class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.15"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.15/darkforge-darwin-arm64"
      sha256 "9126eacb6a3e4029208b0e761cd15c5857a98aaa40fe758e3f62c0758de41a78"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.15/darkforge-darwin-amd64"
      sha256 "46521b4d6db917a8644813c8ceecd1afed4b24abac454dbb40e5459b3c02ed00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.15/darkforge-linux-arm64"
      sha256 "256c02f4b1fa6ecf1b93fbc90dee1acd2e3213da7fac27c16915b90697047d93"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.15/darkforge-linux-amd64"
      sha256 "a945682cc5cc242ac62f173163cd405f3e9a442858d74b0a6f45e354d8cef926"
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
