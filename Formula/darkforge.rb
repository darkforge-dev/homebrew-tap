class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.27u13"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u13/darkforge-darwin-arm64"
      sha256 "9fb4a90dfb4afb686979f4962cd72d2da4642f960ebdde8837fab7865a7e18bd"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u13/darkforge-darwin-amd64"
      sha256 "c03d77c981b887be08bdf0b6e3a78d002ec219f43720e982867f9163fb30a24c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u13/darkforge-linux-arm64"
      sha256 "d3a7f15f4edf51727bc31424a165b81efe54df6fbbf46958855082d57bd67fef"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u13/darkforge-linux-amd64"
      sha256 "a36612d67e33ca8d45f28cd92d1913656b15f6a64c32800c9718acd24f2e9ce8"
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
