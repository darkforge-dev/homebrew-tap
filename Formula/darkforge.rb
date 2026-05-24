class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "v1.0.41m6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m6/darkforge-darwin-arm64"
      sha256 "340c413e122349739472825677a4089c411f92d21cf6fa502782f21a18279fc1"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m6/darkforge-darwin-amd64"
      sha256 "8de424625c4bd3256536cb6130cc9333eb2b17572e4e239e85452b70cfaf6da4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m6/darkforge-linux-arm64"
      sha256 "541ebc72ae575941d92a918cb24bdaacd61e4414b0715c4eef73a366644be131"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m6/darkforge-linux-amd64"
      sha256 "0120f5f9235959cb8c740a04e0274b862dff7be0ab9c6a55acf99383b67d6dad"
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
