class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.9"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.9/darkforge-darwin-arm64"
      sha256 "be6fbeeaa4f32d6f67e5c1fbb906ccafb18a51ba9d56dc4964946e1fd2bafadf"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.9/darkforge-darwin-amd64"
      sha256 "9ffe48658163ffed4f0eee58e44dce4d2bd9a713a9849cdf5fed8d52790d8c35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.9/darkforge-linux-arm64"
      sha256 "cebc37a148494dd0188a6bbcecba680824d247f1e24710cd517573b37c57ddb1"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.9/darkforge-linux-amd64"
      sha256 "b4aca2fee1cfd06606f2a5c929c8a6fbfee3104c632184cf12e909ef3b829c98"
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
