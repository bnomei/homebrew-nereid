class Nereid < Formula
  desc "Terminal-first diagram TUI and MCP server for Mermaid-backed sessions"
  homepage "https://github.com/bnomei/nereid"
  version "0.5.0"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "2890637f94285dd88bc02e1d6e9bfa8912ffcb47ee5ab2d52b6b065e777d308c",
    x86_64_apple_darwin: "59906dff63c4cb65a2279e9a293f79a8de547dfb8a95baa001a732c1700e91b9",
    aarch64_unknown_linux_musl: "9760b48c9483d01e8cf30260c54fc89f86109cc7ccb71dd6c7958d0d52050b61",
    x86_64_unknown_linux_musl: "b89ac412db4b60845fc1944ed5fe41baaf77a6088391e110ff18c263b3614911",
  }

  on_macos do
    on_arm do
      url "https://github.com/bnomei/nereid/releases/download/v#{version}/nereid-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 checksums[:aarch64_apple_darwin]
    end
    on_intel do
      url "https://github.com/bnomei/nereid/releases/download/v#{version}/nereid-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 checksums[:x86_64_apple_darwin]
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bnomei/nereid/releases/download/v#{version}/nereid-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 checksums[:aarch64_unknown_linux_musl]
    end
    on_intel do
      url "https://github.com/bnomei/nereid/releases/download/v#{version}/nereid-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 checksums[:x86_64_unknown_linux_musl]
    end
  end

  def install
    bin.install "nereid"
  end

  test do
    assert_match "nereid", shell_output("#{bin}/nereid --help")
  end
end
