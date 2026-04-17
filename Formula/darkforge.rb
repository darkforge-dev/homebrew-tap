class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.27m4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27m4/darkforge-darwin-arm64"
      sha256 "89b4616f2805d44d86b561b0c01c444f69b5629a4ae6bd68ff83f6af49ccb8c3"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27m4/darkforge-darwin-amd64"
      sha256 "2d4c58360784c35b6b4f320bc56f1714ad5aa40e759df0073b2d53570b0c9c19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27m4/darkforge-linux-arm64"
      sha256 "576aca31841482a038b474d18913e82492e860b7da13df56284a242eb7793ca8"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27m4/darkforge-linux-amd64"
      sha256 "41566bd31c57361aa1a04ddb4a0e456fd5b3f7245a4a430fca53490343b5dd69"
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
