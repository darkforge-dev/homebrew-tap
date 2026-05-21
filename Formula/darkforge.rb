class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "v1.0.41m4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m4/darkforge-darwin-arm64"
      sha256 "fa9acd88c5fdda66c32cb1c260c09d37d8d34c5bdb90bc2a856d840eede92ef8"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m4/darkforge-darwin-amd64"
      sha256 "66b8922ca3b11172ca25206e9d778d4bc31477fa587657e5fb77f10afec2b241"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m4/darkforge-linux-arm64"
      sha256 "e154a8c99641e6137c1d7c594951980217daaaf2ea2701443d580c04b363563c"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.41m4/darkforge-linux-amd64"
      sha256 "7e7f54d8fceea2721611fcadc4d945ca46a6cecaf467e2583701c8e7c32e5458"
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
