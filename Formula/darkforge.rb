class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "v1.0.42m4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.42m4/darkforge-darwin-arm64"
      sha256 "8b4450c0d20a9b010a81c4582c86fbf34e5868cc9d352fdecda0b46a7b5d374b"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.42m4/darkforge-darwin-amd64"
      sha256 "1bc96c1a086e16852bab01a9d0f0303a5bf75ec33ceb5a985b88cb4118bf014d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.42m4/darkforge-linux-arm64"
      sha256 "cc5644db9f6ead7efcc5d53ba26fec77f01c61ad562a1d65f7cfb406aed66000"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.42m4/darkforge-linux-amd64"
      sha256 "f9b5c053f35571fdbe43f649198a1f5a28e3acec767d89eeb511d07e49b91663"
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
