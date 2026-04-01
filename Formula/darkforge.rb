class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.24"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.24/darkforge-darwin-arm64"
      sha256 "5e7b99e568f2d038df4679a3bfa9e59c121aa9ad7b0ea9220ae791c3ef7ca858"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.24/darkforge-darwin-amd64"
      sha256 "2ffaf8f066cd8e962c98a54b5a7b01329161769c534959aa1d1ea404f367fe63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.24/darkforge-linux-arm64"
      sha256 "6b7fe7f5676c1a00cadb58efc26a82bc44943685f9f9c1a346bbc2dffabea6e2"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.24/darkforge-linux-amd64"
      sha256 "67955cebda63a4e79b53b79c5d96743f66f22fc9dbadb85fcae27877dcff499e"
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
