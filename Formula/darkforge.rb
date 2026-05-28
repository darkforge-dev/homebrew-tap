class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "v1.0.42m2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.42m2/darkforge-darwin-arm64"
      sha256 "ab7aa0c290c03f1a317c2afabb89fca880c070974b276baac432597f59d860b1"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.42m2/darkforge-darwin-amd64"
      sha256 "fce57407d6a8876c23b914b008504de030b83a0b3fdd41907256dde5b1033a66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.42m2/darkforge-linux-arm64"
      sha256 "77ead828a64ea80a92ce98e19978fbea948060e165a9165bd097896bcdef917b"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.42m2/darkforge-linux-amd64"
      sha256 "2583bf7fc7fa91ff6ad5158e294b78d3ac91867484cba971f39be978b30e9d7b"
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
