class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "v1.0.41m3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m3/darkforge-darwin-arm64"
      sha256 "74578efe9590cc613a5758697f7277d61ddc77dd6f50572006f09eab140c7316"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m3/darkforge-darwin-amd64"
      sha256 "4ad12ebdab31fda9ddcb98ed75465de2776948d7d30a3bfd778f5a44bc15c78e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m3/darkforge-linux-arm64"
      sha256 "dc78adf5943cbb8fcdb0de27cc3336318780be8521d51639e60a86106463daac"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m3/darkforge-linux-amd64"
      sha256 "921b9ead4f9f2ea01bec69ab4a30a5d6cc1382845641185819ebb22500c04b3a"
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
