class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.27m3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27m3/darkforge-darwin-arm64"
      sha256 "b52bd165fcee0116fca4bf1d7083e1a3416d602b0e8dca9cb5a58f55aedeecf1"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27m3/darkforge-darwin-amd64"
      sha256 "dc275c03f0b264d9c7f2badfb8531252773a93d8292a43048c287e13adf8eec4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27m3/darkforge-linux-arm64"
      sha256 "3e22e4c2fab8a28b26935a7ebbe55863d3735bd0dd2ee827840430a0ebca938d"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27m3/darkforge-linux-amd64"
      sha256 "712eb26a7b6a1abb29d82c7cb2337b4f3537ec3b10b6d81680bdfecb2d69ba83"
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
