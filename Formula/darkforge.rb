class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.35mm3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35mm3/darkforge-darwin-arm64"
      sha256 "a5de61685d031fe03462477d0c79ad88a842a13aab8e5a707b48bba7f28392b2"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35mm3/darkforge-darwin-amd64"
      sha256 "f839714efe8398a2031c0db820a15a9744bdf4b42d1cbe7e1ba5ab4ecc7846cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35mm3/darkforge-linux-arm64"
      sha256 "12c4e919052bae5d24a919478b5a0c77ff5a43d6475e095d283442f9165a1b71"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35mm3/darkforge-linux-amd64"
      sha256 "a36074c7c6682b6fc978ee59dd1fb21358f30aa591c08709557b17c7847c4763"
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
