class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "v1.0.39m2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.39m2/darkforge-darwin-arm64"
      sha256 "9e18327a598cb231b28016bada6143b4f39e7bea908c944035955f0b1902a5e7"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.39m2/darkforge-darwin-amd64"
      sha256 "1b84e6bc63a8bd1741c11e1d0d13893f35c33855292fe020a6926636e60b1b21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.39m2/darkforge-linux-arm64"
      sha256 "3be181eaa136810d99a503bb879da3966736f88e8c173c98eaf385a157f649ce"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.39m2/darkforge-linux-amd64"
      sha256 "0ae2914895acddc45e9312282fd9332bdbd8873ad908d1b81b4fe7bfca1543e2"
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
