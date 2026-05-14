class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "v1.0.40m2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.40m2/darkforge-darwin-arm64"
      sha256 "4a4e42b26cea23b1841a58719c82c0f03a243d3e2a531679aa0c7a920ca91ca9"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.40m2/darkforge-darwin-amd64"
      sha256 "48416661b942ea3093977269ed53e4a07e83bf691cdb35d48b5664c85ec872a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.40m2/darkforge-linux-arm64"
      sha256 "657a2404607104c8d86b64525a269dce73a58264b7a47c6d1f6443b28e8dab18"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.40m2/darkforge-linux-amd64"
      sha256 "fa0d9dbddf5519a2df1f3de2b01470b75da5637981714f214da6510a6b078773"
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
