class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.27u10"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u10/darkforge-darwin-arm64"
      sha256 "069aab4629521a58c27050225a608350d2cf36ea898a546079be0593a67c884d"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u10/darkforge-darwin-amd64"
      sha256 "9dcd3851834187217a32f67cb1d47b1224fc8337edf773580574b9d1b2ca688f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u10/darkforge-linux-arm64"
      sha256 "20ba90cee41219ef0fa8214b5c15880cbfc88b810207152ba02ead2a45869431"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.27u10/darkforge-linux-amd64"
      sha256 "63e143b92737e49c76acc87ff2422f90c893f4ce826861d6f35d636ff478d536"
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
