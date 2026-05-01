class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.27u12"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u12/darkforge-darwin-arm64"
      sha256 "076f23eca1b513c61d95e20d2143743482a2845b515545641e954d04b3f20be3"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u12/darkforge-darwin-amd64"
      sha256 "4b24acf17080da9208648dd0ebd14c8b4544ecc173e695b05cb391a15d88ff51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u12/darkforge-linux-arm64"
      sha256 "46d52e48cabd93140245f8b1d80242a914162b75afb11eb26bf7ae25aa968463"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u12/darkforge-linux-amd64"
      sha256 "05efbef0ad143570d10a9d8eff05ef0a23ada0037dca618f1dc06f9cc92e047c"
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
