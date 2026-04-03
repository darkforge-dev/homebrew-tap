class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.25"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.25/darkforge-darwin-arm64"
      sha256 "daaa854fa2c8c432d2e998406c384555599ca3f748a28492000850b5486c876d"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.25/darkforge-darwin-amd64"
      sha256 "d0383b817c9801ffe3a813e5fa72ece34c6a810aee30dc06c4c2e16fbd368843"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.25/darkforge-linux-arm64"
      sha256 "38316edb7fd37c7b60483f1e779c6082fa7f9b8090d5cf38a84c0550610a1a9b"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.25/darkforge-linux-amd64"
      sha256 "2d3688396d1aa746a64ceeac10a419e9aab424b0255e99a1b13763f50d5a8762"
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
