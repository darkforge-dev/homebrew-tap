class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.21"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.21/darkforge-darwin-arm64"
      sha256 "a1fd0289295171fa4b631aa2eee05fecec8555ca03cd66663c041360ea66706b"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.21/darkforge-darwin-amd64"
      sha256 "06635202e71184a6967c24da684bb0bf42530b45687cc305913e17b3fb9b1832"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.21/darkforge-linux-arm64"
      sha256 "0965cfb9fe5a8d7bad576200cdf0396eb93d28a2be7927e3ea0b5f144b0ae202"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.21/darkforge-linux-amd64"
      sha256 "c5c9d8326835953e396ca740b4e17c67666fce61bceed1253246626a2f6f63fb"
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
