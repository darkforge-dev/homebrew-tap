class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.27u2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u2/darkforge-darwin-arm64"
      sha256 "ca0139b9b350bac2316e04624c906aca7ddb198b5320407ccbdee7e7054b4dae"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u2/darkforge-darwin-amd64"
      sha256 "b476c9b3b48109b371d872b4ec3f0b953f6d0c202a9659cabf101e4674ea89c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u2/darkforge-linux-arm64"
      sha256 "cbf85861cc4243532b5cfe1748dd47d03e0cd8365c50c8526fbd0c7d71b424c7"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u2/darkforge-linux-amd64"
      sha256 "4b8d4b003efe0e50d76e80b2188e4fb9f625d30845c84c08860f02796bff0442"
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
