class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.20"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.20/darkforge-darwin-arm64"
      sha256 "a524f5d4bfa721a30ec4cb5b1776ccd3289b1745d0d3983e8840a017e7e5c842"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.20/darkforge-darwin-amd64"
      sha256 "b57b359f68483c702fab0b9e16f59d67a9a32cf4e094081240ee356a3d52831d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.20/darkforge-linux-arm64"
      sha256 "dd616bfbc334a7f430d3bec3a56912b38cbbbfb83c28b3061c68fa8896fd198f"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.20/darkforge-linux-amd64"
      sha256 "610117353563f2208a2709cdad4d09618c7f70a5c8b851d0f8e14b26235c0c99"
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
