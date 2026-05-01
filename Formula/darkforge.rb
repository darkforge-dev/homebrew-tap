class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.27u11"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u11/darkforge-darwin-arm64"
      sha256 "3be180d91a37d03d8718dc0a8275bf27af6d0ef0fb7f8c6182c511a17985db65"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u11/darkforge-darwin-amd64"
      sha256 "def272d9c32833ee4f30512fa0e790d9c4a89bb0776175bbea538cfdf909feef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u11/darkforge-linux-arm64"
      sha256 "4db76b1efef38658e89307cdcc9af69de41b13b4bcf3ace8df123b87f745851b"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u11/darkforge-linux-amd64"
      sha256 "cae782bb7ea109603590d5727ad23b247c38821196bf35dcf48f9d1130866c6c"
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
