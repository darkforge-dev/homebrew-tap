class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.3/darkforge-darwin-arm64"
      sha256 "868441d103b530ae45188f506a186f17f1af8b891035db231062da67dcda0a47"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.3/darkforge-darwin-amd64"
      sha256 "b363f3084151308d5b62260ea9b924f88175b47c949269a35fc5565147dbde39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.3/darkforge-linux-arm64"
      sha256 "105918852dca777acf0f4594485abfaf6cfa8dfd1d02931c6073cfda8c7d5446"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.3/darkforge-linux-amd64"
      sha256 "cb1861c125830c10fb2a8284b4b63312a278db417a82c0e574edba48f021ad6a"
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
