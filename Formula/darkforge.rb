class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "v1.0.40m3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.40m3/darkforge-darwin-arm64"
      sha256 "ecd32d4d72708e5c6f1977169e6f9125b4e11d7d406d7689d21217c4062d82b0"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.40m3/darkforge-darwin-amd64"
      sha256 "9b053c01272e82c70cea3dba59acf15731f64380ec93c2c36696c526201150b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.40m3/darkforge-linux-arm64"
      sha256 "9e1380ef197c68922636b28d41baf56deabdadcb623e46e07e00425058d9c24e"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/vv1.0.40m3/darkforge-linux-amd64"
      sha256 "95b5dd1cf6285ac83791688a6af59037a7e43ed3f74afe57a5b7033303bc0ff0"
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
