class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.26"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.26/darkforge-darwin-arm64"
      sha256 "42819e24dd77d0249a385f9fae8a8fb5236b3124a6125ef4ed7be0f2180c2153"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.26/darkforge-darwin-amd64"
      sha256 "76c3d7107255aaac4e0decfaf8825f03ee7b563727896b03d81c67b8faa872cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.26/darkforge-linux-arm64"
      sha256 "0341c86d15742a90dee0b940730a444ee06852b7f42d8c71f1b6c77259cf3de7"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.26/darkforge-linux-amd64"
      sha256 "93ccec00a95154252c2f30e932a6370c28a4146e36d03d325bf0bbc6ee778668"
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
