class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "v1.0.40m1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.40m1/darkforge-darwin-arm64"
      sha256 "db5819d14f234127c445ca5e766d304d8249ba72208e0ad072617f2fe6bc5316"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.40m1/darkforge-darwin-amd64"
      sha256 "a556752f598c9080e702438c6c6374e5aa92c7303b7fddb45f3de3adc054b64d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.40m1/darkforge-linux-arm64"
      sha256 "36677b2511cc2de5c2d51443bf38ae219e6fa26da28029a8f3c9eb4ddb7ce25e"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.40m1/darkforge-linux-amd64"
      sha256 "5498b1bb226598fc7c220784b51985ed607caa2494103504801ed0f379d23697"
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
