class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.11"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.11/darkforge-darwin-arm64"
      sha256 "89724f4108ee85eff2bf5c22413fcb7b7301bd629117843c4c75ff7eb5ccdc34"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.11/darkforge-darwin-amd64"
      sha256 "20bf67146f6abe4e812b7c424480a1d6b504f147a45409eee40cfec9556f0815"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.11/darkforge-linux-arm64"
      sha256 "b6ab9cebc17eb3628a56cc3a5d8930bc074eb4512c15de6f008a7f5e46578afe"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.11/darkforge-linux-amd64"
      sha256 "e673ce61098c773c9f983d50fd86e0cb104e9c61d7848094356cec324eac88da"
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
