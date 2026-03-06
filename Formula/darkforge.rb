class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.4/darkforge-darwin-arm64"
      sha256 "790705e5b400f78fc2024d0e577d52e99276f726bcf99048da50b0882708197d"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.4/darkforge-darwin-amd64"
      sha256 "7f81220857bc921a294baebf589fd90604040f37c644987035db4696b65473d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.4/darkforge-linux-arm64"
      sha256 "dcb4a14363e3025335d109b8cb5493ce4d2fae52d2f0bba3ccbe6c171c6f5d4c"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.4/darkforge-linux-amd64"
      sha256 "3bc8d747b195dc7c6c2bf7fb6aec016b52ed829c5a8d288b096a509befcc842d"
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
