class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.14"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.14/darkforge-darwin-arm64"
      sha256 "b9f6f25afe52d7e944f40f3263cda6253b67e0bb93e2e8bb2bb2741e8979f783"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.14/darkforge-darwin-amd64"
      sha256 "df4d07d2aff08fe7104ab60e41f4a2f2e9ca29d2fdbf4903cc455074764afcf6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.14/darkforge-linux-arm64"
      sha256 "8fc79e5807e0cc0f908c895debd8903b97bce138c588c63f6daf6d3b25a0e923"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.14/darkforge-linux-amd64"
      sha256 "c1d74acb3487f4e93dcc865a88f47a7d162a3e1653369d53bb658b4a881e5d00"
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
