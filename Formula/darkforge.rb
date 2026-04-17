class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.27m5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27m5/darkforge-darwin-arm64"
      sha256 "839af511b7ea9f539d0031e6a2587495dd6dd17df2d1b847bdcb288cd79e5fa4"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27m5/darkforge-darwin-amd64"
      sha256 "5afb1b8a7b54a5ba0a364e3df847a2db36b5264893a7bc046f634f682e3b6353"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27m5/darkforge-linux-arm64"
      sha256 "553fe9fffafed64d2ca922ffae925936a0712b15a449348a89641cc9b0d0d33b"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27m5/darkforge-linux-amd64"
      sha256 "dafb6eea8802dab3fd3da8d5e5a129d379a9132c0bec336cf90bc0a4bb96bbce"
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
