class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.27u5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u5/darkforge-darwin-arm64"
      sha256 "1a28fe40aa9812d7fa7341e380277f7909eb85be4ed771ca855306491daeec38"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u5/darkforge-darwin-amd64"
      sha256 "9542f7f972976c8d62a09c4829e8044c2699d09e450ae79b9ae5e4e578e63d5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u5/darkforge-linux-arm64"
      sha256 "da480128bc2d70f49064cd1ad5857e1318cc23794ffbff4a3b9b41fd4a6f5244"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u5/darkforge-linux-amd64"
      sha256 "0dc17fe796c56bbf2c1a0ed996add8c10eb10050a89439021754ee91d1f3df0a"
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
