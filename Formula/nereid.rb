class Nereid < Formula
  desc "Terminal-first diagram TUI and MCP server for Mermaid-backed sessions"
  homepage "https://github.com/bnomei/nereid"
  version "0.4.0"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "cdd965d467177b57afc727e9219e1ba879f6e9fb8945a213506a58a943f2461c",
    x86_64_apple_darwin: "3b79c4c05f9494d4006aad444f850ab409b5c712d9bf82b08902dabc55757d85",
    aarch64_unknown_linux_musl: "f21c8c54c3ea546969b5853b8fcbe997449e0a62bc08e6c13f3ead2a6303fe36",
    x86_64_unknown_linux_musl: "42849ea908298c7d59494d9c4a6f69dc08298f2675e73e44f31781c93453c3fd",
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
