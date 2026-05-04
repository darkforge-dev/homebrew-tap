class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.35m1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m1/darkforge-darwin-arm64"
      sha256 "67166c7de8e82f524d014c21d9e61a74391e1db8aa604606b2095bbdbdf8193b"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m1/darkforge-darwin-amd64"
      sha256 "9e6507a90ea70482f769bc9341a19004280bc7f4614ded5873e6372008cc9064"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m1/darkforge-linux-arm64"
      sha256 "cb14b2f7e09ab32d27fdeeb83221ddd2b0b5931681ed22376dc27825e21abff8"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m1/darkforge-linux-amd64"
      sha256 "998ccf5ca45c3eed040a3490a7f7a0638736e3112be71f2e892eb36710f672ed"
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
