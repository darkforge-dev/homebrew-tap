class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "v1.0.41m5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m5/darkforge-darwin-arm64"
      sha256 "fd5160d9d0c09651e0fbf5c7a09849f4e9c1afdb186a1fd28b1cb5870b24a85d"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m5/darkforge-darwin-amd64"
      sha256 "3ed3565ceb3d5f9fc91308411fb28fbb28d7c0d342e6adc5d254e1365a4b9ab5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m5/darkforge-linux-arm64"
      sha256 "cefc832b97a2b26be658e7a2cb3e82347f471a44cfde71eb314a824b118c2dea"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m5/darkforge-linux-amd64"
      sha256 "3b6b8806a1db98052f4d9908cd9c71813c7a0e998d1b0a85199bbd4c9a5c16fb"
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
