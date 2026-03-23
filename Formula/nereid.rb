class Nereid < Formula
  desc "Terminal-first diagram TUI and MCP server for Mermaid-backed sessions"
  homepage "https://github.com/bnomei/nereid"
  version "0.2.0"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "d4ee8263a9027975fa32d04edc664bafda22ea68e3ef07defe66feb085392a72",
    x86_64_apple_darwin: "93f331f0ceb3c669457309e3fac652f7aca92931710e3c6852b402ce28f7ccc9",
    aarch64_unknown_linux_musl: "3105b7b3499c42b4fc38bb3b0f847e68e532ad190af6c59c86821b00bf24c072",
    x86_64_unknown_linux_musl: "cb122025cc250cbdc970abdf09163104fb54829e583bd5329c35d0bb49223118",
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
