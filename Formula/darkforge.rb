class Darkforge < Formula
  desc "AI-powered development environment"
  homepage "https://darkforge.dev"
  version "1.0.35m6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m6/darkforge-darwin-arm64"
      sha256 "b927fe5d82703f0496f5701547028b22869689b475fb9d932516232be01a48a9"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m6/darkforge-darwin-amd64"
      sha256 "034177749ca774da731599d6d13f6124d667f2ac7da62ab4285f903bdd065253"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m6/darkforge-linux-arm64"
      sha256 "8ca5a1ff28a3dd5be0ab45a01e8cbbf0e6c1880479f79cafec9ecb3125f6301d"
    end
    on_intel do
      url "https://github.com/darkforge-dev/darkforge/releases/download/v1.0.35m6/darkforge-linux-amd64"
      sha256 "6e76968388075bac4362453b8bfd20450ea18e2345e103e76108fda024ee4a6d"
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
