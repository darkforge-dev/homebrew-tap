class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "v1.0.42m1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.42m1/darkforge-darwin-arm64"
      sha256 "6d6f43226437d2e7cf2b995e5d3ff719f79262629742ef6ff98255ddc232ca73"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.42m1/darkforge-darwin-amd64"
      sha256 "50d1c5daff807abc835c8d13890bca6603faf84190ef3730d343cf8b913d8b98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.42m1/darkforge-linux-arm64"
      sha256 "f0c764e8bcdd3803bd639683c5957e8b9d6c97b09d5d47f58f25844cf2683dd7"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.42m1/darkforge-linux-amd64"
      sha256 "72fe3df8d235da584da54904f7b4fc819333583286a530d5db580f4c402420a0"
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
