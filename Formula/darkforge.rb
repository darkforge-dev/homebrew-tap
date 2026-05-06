class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.38m1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.38m1/darkforge-darwin-arm64"
      sha256 "da56ae1e7bf3a4a42668147f731ca892abec4aaa5cf3e7813b6bb005a1adada3"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.38m1/darkforge-darwin-amd64"
      sha256 "ff5f128578c713563baf7d74c009908b64cb6a2306df7a39c535175c4261898c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.38m1/darkforge-linux-arm64"
      sha256 "a71819b329e716634d56831ddbcc0ed3ed6325f40963b4241cc94cb8045e8a4e"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.38m1/darkforge-linux-amd64"
      sha256 "c9a32e44d64c424f43894c6a591fcc42343615990c5ad2d715dc0fbd03e89e32"
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
