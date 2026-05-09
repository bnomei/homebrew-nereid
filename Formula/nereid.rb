class Nereid < Formula
  desc "Terminal-first diagram TUI and MCP server for Mermaid-backed sessions"
  homepage "https://github.com/bnomei/nereid"
  version "0.3.0"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "0d6324d3eaa3229620bc6f9ba8ee71cefac18a2634f2df0741fbc73419d1e5c2",
    x86_64_apple_darwin: "67f81d3b20f0e85aaa30596977205eaef9d299d8f338146cdd0e6da9604be4c0",
    aarch64_unknown_linux_musl: "8652dc36d11701b33881e234122dc31876fcff55a2220bf350e10615e3da2d70",
    x86_64_unknown_linux_musl: "98b9d72a7b9b0784234731c7134b009ad06bb4105db708d82d6c254e62419732",
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
