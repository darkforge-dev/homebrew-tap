class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.23"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.23/darkforge-darwin-arm64"
      sha256 "0f836fd37b3bb784ce76bcd788507a720a41c16b60c96963c1fc9ec9428db555"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.23/darkforge-darwin-amd64"
      sha256 "f6ac7242b7cad3e9bb7ca3231c0edc7f2af36bb99107a2daf37796ed32e57e74"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.23/darkforge-linux-arm64"
      sha256 "6a25e453c3950ab441d5736706ffede6f437b755219713872a83edcef8e33825"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.23/darkforge-linux-amd64"
      sha256 "450c4d4c89df4e62d08f03596d7abe7a94b5c73a76c4da0c8f8ba4aafd57ef30"
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
