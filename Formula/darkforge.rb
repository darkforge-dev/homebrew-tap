class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "v1.0.41m7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m7/darkforge-darwin-arm64"
      sha256 "081f3766595419d691277baf692b0661d1ce0e90102ddd96713a202dba59839e"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m7/darkforge-darwin-amd64"
      sha256 "532fb1f9f5bc49cb76e8d68ef5fc3feda5e8f92b15654f96933b9c50bccf041b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m7/darkforge-linux-arm64"
      sha256 "2640ab5765c898cb5c19081a3ea8a05f70d2660f97c1d6a990a56fc109a57b5b"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m7/darkforge-linux-amd64"
      sha256 "6c012ace774f6578277587c69c7f18e0cd5544ce4921f69ea527a8f7823c6746"
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
