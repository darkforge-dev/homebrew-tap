class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "v1.0.41m1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m1/darkforge-darwin-arm64"
      sha256 "96efd91baba371137529a05d044e04617e837c4363a5f5d34e79302047a72074"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m1/darkforge-darwin-amd64"
      sha256 "7ab4eb909fab5554b3012f87502eae49f271b1830b3b638e74a544e8a8f21174"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m1/darkforge-linux-arm64"
      sha256 "5952741c253e3f6545513b932aafa273b33417d1bd969e36287ab6b54f745565"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m1/darkforge-linux-amd64"
      sha256 "f288d7f8b880d038caf4b29f8db2b5ec5baec57fc15eea361918a74df4dce98e"
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
