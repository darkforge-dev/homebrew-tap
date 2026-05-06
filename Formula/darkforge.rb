class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "v1.0.37m1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.37m1/darkforge-darwin-arm64"
      sha256 "f80a6d3c8e02b3d0d6ef724319622233c5b458665d8a71d683eec34d71325004"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.37m1/darkforge-darwin-amd64"
      sha256 "73033cc31b737cbba3405e8edcf4015d80b2fa2f1e8930f3e7886a53ce04d996"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.37m1/darkforge-linux-arm64"
      sha256 "76b7b1c1a9e1497b51438ced9055ad4ee3c3ab11978dac2985319dc4a91db82e"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.37m1/darkforge-linux-amd64"
      sha256 "dd6ad2bbab4afd3b9ac475d737477a7a041d721f8142b3503f01e2cc03d2e542"
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
