class Nereid < Formula
  desc "Terminal-first diagram TUI and MCP server for Mermaid-backed sessions"
  homepage "https://github.com/bnomei/nereid"
  version "0.2.1"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "23b962a2583224841e20b5a62f96df69d2a958dd7eacc63fceb5e627ac379468",
    x86_64_apple_darwin: "33b68360c6c3926273c836d4c4e5059e6f6f94f26aadc11cd1d32073686839c2",
    aarch64_unknown_linux_musl: "6ad8e3dda0cf09a3b9fc939449ce7460e48424b660dfb3705d7fe42f2026a649",
    x86_64_unknown_linux_musl: "40db2b20851be68acdaa6c4a3b55e58988d92a6f91f7ce79b727332bee4ff127",
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
