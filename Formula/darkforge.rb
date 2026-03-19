class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.12"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.12/darkforge-darwin-arm64"
      sha256 "5f303022c7250d0cac3f92b98ff3afe286ed74083e33e2e50735868d5d5826fb"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.12/darkforge-darwin-amd64"
      sha256 "981ec9ecddccd8b0b5af6ce54cdd8f2f19c042427b0b1542c483fda51e866621"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.12/darkforge-linux-arm64"
      sha256 "ac06ee008c69a7f43cb09166c62bf03788ebf27421ec3038561c200a7a895f14"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.12/darkforge-linux-amd64"
      sha256 "e2eca56ea25716a1872b338cfc35b88cb64acc9be77e1043b55be87ba3305462"
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
