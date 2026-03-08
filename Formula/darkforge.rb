class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.6/darkforge-darwin-arm64"
      sha256 "be5cc79e2dabbdef43f6b11ace41db37b5bc50c4092560461dae6c085740ac74"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.6/darkforge-darwin-amd64"
      sha256 "d85ea463b50b5d5e929eeac63203da2a6778525daf98ced63f18d08985246d51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.6/darkforge-linux-arm64"
      sha256 "ee382bc8d3426b9d0ff79a04d99b60afd076e89de9cb035be58026842c1bf9d0"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.6/darkforge-linux-amd64"
      sha256 "a964d416df29d95935ebea80876a23ee38c2dc198bec07c4af5c249bfb645313"
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
