class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.35m4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m4/darkforge-darwin-arm64"
      sha256 "774c58078602fb38459eba31f3c94c42dea1586cd054e3f3864decc362f417fd"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m4/darkforge-darwin-amd64"
      sha256 "4e4b0cdcb8d877223cf12e3efa536452c63ea339ac6e39c5a4c582dc30edd77b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m4/darkforge-linux-arm64"
      sha256 "8559d37773bc8b3ebad40b8bc27e0408b7b1cfd6f72400e4e2072962dc2b1f3e"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m4/darkforge-linux-amd64"
      sha256 "d9072e6870db88506818deb82ca6b41c8a729287b7e01efe5ca7b71e6405f09d"
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
